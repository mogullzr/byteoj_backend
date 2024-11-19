package com.example.backend.utils;

import cn.hutool.core.codec.Base64;
import cn.hutool.core.date.DateTime;
import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.example.backend.common.ErrorCode;
import com.example.backend.common.SystemConstants;
import com.example.backend.exception.BusinessException;
import net.coobird.thumbnailator.Thumbnails;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.ui.context.Theme;

import java.io.*;
import java.util.UUID;

@Component
public class OssUtils {

    @Value("${aliyun.oss.accessKeyId}")
    private String accessKeyId;

    @Value("${aliyun.oss.accessKeySecret}")
    private String secretAccessKey;

    @Value("${aliyun.oss.endpoint}")
    private String endPoint;

    @Value("${aliyun.oss.bucketName}")
    private String bucketName;

    public String uploadOneFile(String file) throws IOException {
        // 创建OSSClient实例。
        OSS ossClient = new OSSClientBuilder().build(endPoint, accessKeyId, secretAccessKey);

        // 设置文件名
        String fileName = new DateTime().toString("yyyy/MM/")
                + UUID.randomUUID().toString().replace("-", "");

        // 获取文件后缀名允许
        int originalFilenameStartIndex = file.indexOf('/');
        int originalFilenameEndIndex = file.indexOf (';');
        String originalFilename = file.substring(originalFilenameStartIndex+1,originalFilenameEndIndex);
        if (SystemConstants.Picture_Format_JPEG.equals(originalFilename)) {
            fileName += ".jpeg";
        }else if (SystemConstants.Picture_Format_PNG.equals(originalFilename)) {
            fileName += ".png";
        }else if (SystemConstants.Picture_Format_JPG.equals(originalFilename)){
            fileName += ".jpg";
        } else if (SystemConstants.getPicture_Format_WEBP.equals(originalFilename)) {
            fileName += ".webp";
        } else {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "上传失败！！！");

        }
        // 获取base64的文件
        file = file.split(",")[1];

        byte[] bytesFile = Base64.decode(file);

        try {
            // 创建PutObject请求。
            InputStream inputStream = new ByteArrayInputStream(bytesFile);
            ossClient.putObject(bucketName, fileName, inputStream);

//            String url = "http://" + bucketName + "." + endPoint + "/" + fileName;
            // System.out.println(url);
            return "https://aliyun.byteoj.com/" + fileName;
        } catch (Exception e) {
            e.printStackTrace();
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "上传失败");
        } finally {
            if (ossClient != null) {
                ossClient.shutdown();
            }
        }
    }

    /**
     * 当上传新图片的时候需要删除原来图片
     *
     * @param url 原头像地址
     */
    public boolean deleteAvatar(String url) {
        OSS ossClient = new OSSClientBuilder().build(endPoint, accessKeyId, secretAccessKey);
        url = url.split("/")[3] + '/' + url.split("/")[4] + '/' + url.split("/")[5];
//        http://mogullzr001.oss-cn-beijing.aliyuncs.com/2024/08/d170e7e322344dfd8f2ed3f8e2bca9c8.png
        ossClient.deleteObject(bucketName, url);
        ossClient.shutdown();
        return true;
    }


    /**
     * @param: fromfilePath 图片源
     * @param: tofilePath  图片输出源
     * @param: qualityRatio 压缩质量
     * @Return boolean 是否成功
     * @Exception
     */
    public static boolean compressQualityAndSize(String fromfilePath, String tofilePath, Float sizeRatio, Float qualityRatio) {
        try {
            Thumbnails.of(new File(fromfilePath))
                    .scale(sizeRatio) //图片大小（长宽）压缩 从0按照
                    .outputQuality(qualityRatio) //图片质量压缩比例 从0-1，越接近1质量越好
                    .toOutputStream(new FileOutputStream(tofilePath));
            return true;
        } catch (IOException e) {
            throw new BusinessException(ErrorCode.PARAMS_ERROR, "压缩失败");
        }
    }
}
