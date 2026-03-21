package com.example.backend.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.io.*;
import java.nio.file.*;
import java.nio.file.attribute.*;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;
import java.util.stream.Collectors;

/**
 * 基于MyBatis-Plus的数据库备份工具
 */
@Service
public class MyBatisPlusBackupUtil {
    private static final Logger logger = LoggerFactory.getLogger(MyBatisPlusBackupUtil.class);

    @Value("${spring.datasource.dynamic.datasource.mysql.username}")
    private String dbUsername;

    @Value("${spring.datasource.dynamic.datasource.mysql.password}")
    private String dbPassword;

    @Value("${spring.datasource.dynamic.datasource.mysql.url}")
    private String dbUrl;

    @Value("${backup.batch.size:10000}")
    private int batchSize;

    @Value("${backup.directory:/root/opt/mysql/data/backup}")
    private String backupDirectory;

    /**
     * 每周日凌晨执行备份
     */
    @Scheduled(cron = "0 0 0 ? * MON")
//    @Scheduled(fixedRate = 100000)
    public void performBackup() {
        logger.info("Starting database backup at {}", LocalDate.now());
        try {
            String dateStr = LocalDate.now().format(DateTimeFormatter.BASIC_ISO_DATE) + "——ByteOJ.sql";
            String fileName = "backup_" + dateStr + ".sql";

            // 调试目录信息
            Path backupDir = Paths.get(backupDirectory);
            logger.info("配置的备份目录: {}", backupDirectory);
            logger.info("绝对路径: {}", backupDir.toAbsolutePath());
            logger.info("目录是否存在: {}", Files.exists(backupDir));

            backupDir = prepareBackupDirectory();
            Path backupPath = backupDir.resolve(fileName);
            logger.info("备份文件完整路径: {}", backupPath.toAbsolutePath());

            executeBackup(backupPath.toString());

            // 验证文件
            if (Files.exists(backupPath)) {
                long size = Files.size(backupPath);
                logger.info("备份文件创建成功! 大小: {} bytes", size);
                logger.info("文件权限: {}", Files.getPosixFilePermissions(backupPath));
            } else {
                logger.error("备份文件未生成!");
            }

            setFilePermissions(backupPath);
            logger.info("Backup completed successfully: {}", backupPath);
        } catch (Exception e) {
            logger.error("Backup failed: {}", e.getMessage(), e);
        }
    }

    /**
     * 准备备份目录
     */
    private Path prepareBackupDirectory() throws IOException {
        Path backupDir = Paths.get(backupDirectory);
        if (!Files.exists(backupDir)) {
            Files.createDirectories(backupDir);
            if (!isWindows()) {
                Set<PosixFilePermission> perms = new HashSet<>();
                perms.add(PosixFilePermission.OWNER_READ);
                perms.add(PosixFilePermission.OWNER_WRITE);
                perms.add(PosixFilePermission.OWNER_EXECUTE);
                Files.setPosixFilePermissions(backupDir, perms);
            }
        }
        return backupDir;
    }

    /**
     * 执行备份操作
     */
    private void executeBackup(String outputPath) throws SQLException, IOException {
        String dbName = extractDatabaseName(dbUrl);
        logger.info("Starting backup for database: {}", dbName);

        try (Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
             BufferedWriter writer = Files.newBufferedWriter(Paths.get(outputPath))) {

            conn.setAutoCommit(false);
            conn.setTransactionIsolation(Connection.TRANSACTION_READ_COMMITTED);

            // 写入备份头信息
            writeBackupHeader(writer, dbName);

            // 获取所有表名
            List<String> tableNames = getTableNames(conn, dbName);

            // 备份每个表的结构和数据
            for (String tableName : tableNames) {
                logger.info("Backing up table: {}", tableName);
                backupTable(conn, tableName, writer);
                writer.newLine();
            }

            // 写入备份尾信息
            writeBackupFooter(writer);
            writer.flush();
            conn.commit();
        }
    }

    /**
     * 获取数据库中的所有表名
     */
    private List<String> getTableNames(Connection conn, String dbName) throws SQLException {
        DatabaseMetaData metaData = conn.getMetaData();
        try (ResultSet tables = metaData.getTables(dbName, null, "%", new String[]{"TABLE"})) {
            List<String> tableNames = new ArrayList<>();
            while (tables.next()) {
                tableNames.add(tables.getString("TABLE_NAME"));
            }
            return tableNames;
        }
    }

    /**
     * 备份单个表的结构和数据
     */
    private void backupTable(Connection conn, String tableName, BufferedWriter writer) throws SQLException, IOException {
        // 备份表结构
        backupTableStructure(conn, tableName, writer);

        // 备份表数据
        backupTableData(conn, tableName, writer);
    }

    /**
     * 备份表结构
     */
    private void backupTableStructure(Connection conn, String tableName, BufferedWriter writer) throws SQLException, IOException {
        try (Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SHOW CREATE TABLE " + tableName)) {
            if (rs.next()) {
                String createTableStmt = rs.getString(2);
                writer.write(createTableStmt);
                writer.write(";");
                writer.newLine();
                writer.newLine();
            }
        }
    }

    /**
     * 备份表数据
     */
    private void backupTableData(Connection conn, String tableName, BufferedWriter writer) throws SQLException, IOException {
        // 获取列信息
        List<ColumnInfo> columns = getColumnInfo(conn, tableName);
        if (columns.isEmpty()) {
            return;
        }

        // 构建列名列表
        String columnNames = columns.stream()
                .map(c -> "`" + c.name + "`")
                .collect(Collectors.joining(", "));

        // 查询数据并分批写入
        try (Statement stmt = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY, ResultSet.CONCUR_READ_ONLY)) {
            stmt.setFetchSize(batchSize);

            try (ResultSet rs = stmt.executeQuery("SELECT * FROM " + tableName)) {
                boolean hasData = false;
                StringBuilder insertBuilder = new StringBuilder();

                while (rs.next()) {
                    if (!hasData) {
                        hasData = true;
                        insertBuilder.append("INSERT INTO `").append(tableName).append("` (")
                                .append(columnNames).append(") VALUES ");
                        writer.write(insertBuilder.toString());
                        insertBuilder.setLength(0);
                    } else {
                        writer.write(", ");
                    }

                    // 构建值部分
                    writer.write("(");
                    for (int i = 0; i < columns.size(); i++) {
                        if (i > 0) {
                            writer.write(", ");
                        }
                        writeValue(writer, rs, columns.get(i));
                    }
                    writer.write(")");

                    // 分批提交
                    if (rs.getRow() % batchSize == 0) {
                        writer.write(";");
                        writer.newLine();
                        writer.write(insertBuilder.toString());
                        insertBuilder.setLength(0);
                    }
                }

                if (hasData) {
                    writer.write(";");
                    writer.newLine();
                }
            }
        }
    }

    /**
     * 写入字段值
     */
    private void writeValue(BufferedWriter writer, ResultSet rs, ColumnInfo column) throws SQLException, IOException {
        Object value = rs.getObject(column.name);
        if (rs.wasNull()) {
            writer.write("NULL");
        } else {
            // 处理不同类型的数据
            if (value instanceof java.util.Date) {
                writer.write("'");
                writer.write(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(value));
                writer.write("'");
            } else if (value instanceof Number) {
                writer.write(value.toString());
            } else if (value instanceof byte[]) {
                writer.write("0x");
                writer.write(bytesToHex((byte[]) value));
            } else {
                String strValue = value.toString();
                strValue = escapeSqlValue(strValue);
                writer.write("'");
                writer.write(strValue);
                writer.write("'");
            }
        }
    }

    /**
     * 自定义SQL值转义方法
     */
    private String escapeSqlValue(String value) {
        if (value == null) {
            return null;
        }
        return value.replace("\\", "\\\\")
                .replace("'", "''")
                .replace("\"", "\\\"")
                .replace("\n", "\\n")
                .replace("\r", "\\r")
                .replace("\t", "\\t")
                .replace("\b", "\\b")
                .replace("\0", "\\0");
    }

    /**
     * 字节数组转十六进制字符串
     */
    private String bytesToHex(byte[] bytes) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02x", b));
        }
        return sb.toString();
    }

    /**
     * 获取列信息
     */
    private List<ColumnInfo> getColumnInfo(Connection conn, String tableName) throws SQLException {
        List<ColumnInfo> columns = new ArrayList<>();
        try (Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM " + tableName + " LIMIT 1")) {
            ResultSetMetaData metaData = rs.getMetaData();
            for (int i = 1; i <= metaData.getColumnCount(); i++) {
                ColumnInfo column = new ColumnInfo();
                column.name = metaData.getColumnName(i);
                column.type = metaData.getColumnTypeName(i);
                columns.add(column);
            }
        }
        return columns;
    }

    /**
     * 写入备份头信息
     */
    private void writeBackupHeader(BufferedWriter writer, String dbName) throws IOException {
        writer.write("-- MyBatis-Plus Database Backup");
        writer.newLine();
        writer.write("-- Database: " + dbName);
        writer.newLine();
        writer.write("-- Backup Time: " + LocalDate.now());
        writer.newLine();
        writer.write("SET FOREIGN_KEY_CHECKS=0;");
        writer.newLine();
        writer.write("SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO';");
        writer.newLine();
        writer.newLine();
    }

    /**
     * 写入备份尾信息
     */
    private void writeBackupFooter(BufferedWriter writer) throws IOException {
        writer.write("SET FOREIGN_KEY_CHECKS=1;");
        writer.newLine();
    }

    /**
     * 设置文件权限
     */
    private void setFilePermissions(Path path) throws IOException {
        if (isWindows()) {
            path.toFile().setReadable(true, true);
            path.toFile().setWritable(true, true);
            path.toFile().setExecutable(false, true);
        } else {
            Set<PosixFilePermission> perms = new HashSet<>();
            perms.add(PosixFilePermission.OWNER_READ);
            perms.add(PosixFilePermission.OWNER_WRITE);
            Files.setPosixFilePermissions(path, perms);
        }
    }

    /**
     * 检查是否是Windows系统
     */
    private boolean isWindows() {
        return System.getProperty("os.name").toLowerCase().contains("win");
    }

    /**
     * 从JDBC URL中提取数据库名
     */
    private String extractDatabaseName(String jdbcUrl) {
        if (jdbcUrl == null || jdbcUrl.trim().isEmpty()) {
            throw new IllegalArgumentException("Invalid JDBC URL: " + jdbcUrl);
        }
        String[] parts = jdbcUrl.split("[/?]");
        return parts.length > 3 ? parts[3] : "";
    }

    /**
     * 列信息内部类
     */
    private static class ColumnInfo {
        String name;
        String type;
    }
}