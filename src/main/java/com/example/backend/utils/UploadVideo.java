package com.example.backend.utils;

import com.alibaba.fastjson.JSONObject;
import com.aliyun.oss.OSSClient;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.vod.model.v20170321.CreateUploadVideoRequest;
import com.aliyuncs.vod.model.v20170321.CreateUploadVideoResponse;
import com.example.backend.common.ErrorCode;
import com.example.backend.exception.BusinessException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

/**
 * 阿里云视频点播(VOD)上传工具类
 * 用于接收前端上传的视频文件并上传到阿里云VOD
 */
@Slf4j
@Component
public class UploadVideo {
    @Value("${aliyun.vod.accessKeyId}")
    private String accessKeyId;

    @Value("${aliyun.vod.accessKeySecret}")
    private String accessKeySecret;

    /**
     * 初始化VOD客户端
     * @return DefaultAcsClient 实例
     * @throws ClientException 客户端异常
     */
    public DefaultAcsClient initVodClient(){
        // 根据点播接入服务所在的Region填写，例如：接入服务在上海，则填cn-shanghai
        String regionId = "cn-shanghai";
        DefaultProfile profile = DefaultProfile.getProfile(regionId, accessKeyId, accessKeySecret);
        return new DefaultAcsClient(profile);
    }
    /**
     * 创建视频上传凭证和地址
     * @param vodClient VOD客户端
     * @param fileName 文件名
     * @param title 视频标题
     * @return CreateUploadVideoResponse 包含VideoId、UploadAddress和UploadAuth
     * @throws ClientException 客户端异常
     */
    public CreateUploadVideoResponse createUploadVideo(DefaultAcsClient vodClient, String fileName, String title) throws ClientException {
        CreateUploadVideoRequest request = new CreateUploadVideoRequest();
        request.setFileName(fileName);
        request.setTitle(title);
        // 设置请求超时时间（可根据实际情况调整）
        request.setSysReadTimeout(10000);
        request.setSysConnectTimeout(10000);
        return vodClient.getAcsResponse(request);
    }

    /**
     * 初始化OSS客户端
     * @param uploadAuth 上传凭证
     * @param uploadAddress 上传地址
     * @return OSSClient 实例
     */
    public OSSClient initOssClient(JSONObject uploadAuth, JSONObject uploadAddress) {
        String endpoint = uploadAddress.getString("Endpoint");
        String accessKeyId = uploadAuth.getString("AccessKeyId");
        String accessKeySecret = uploadAuth.getString("AccessKeySecret");
        String securityToken = uploadAuth.getString("SecurityToken");
        return new OSSClient(endpoint, accessKeyId, accessKeySecret, securityToken);
    }
    /**
     * 上传文件到OSS
     * @param ossClient OSS客户端
     * @param uploadAddress 上传地址
     * @param localFile 本地文件路径
     */
    public void uploadLocalFile(OSSClient ossClient, JSONObject uploadAddress, String localFile) {
        String bucketName = uploadAddress.getString("Bucket");
        String objectName = uploadAddress.getString("FileName");
        File file = new File(localFile);
        ossClient.putObject(bucketName, objectName, file);
    }

    /**
     * 从MultipartFile上传视频到阿里云VOD
     * @param file 前端上传的视频文件
     * @param title 视频标题（可选，默认为文件名）
     * @return VideoId 上传成功后的视频ID
     */
    public String uploadVideoToVod(MultipartFile file, String title) {
        File tempFile = null;
        try {
            // 1. 参数校验
            if (file == null || file.isEmpty()) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "上传文件不能为空");
            }

            // 2. 验证文件类型（视频文件）
            String originalFilename = file.getOriginalFilename();
            if (originalFilename == null) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "文件名不能为空");
            }
            
            String fileExtension = originalFilename.substring(originalFilename.lastIndexOf("."));
            String[] allowedExtensions = {".mp4", ".avi", ".mov", ".wmv", ".flv", ".mkv", ".webm"};
            boolean isValidExtension = false;
            for (String ext : allowedExtensions) {
                if (fileExtension.equalsIgnoreCase(ext)) {
                    isValidExtension = true;
                    break;
                }
            }
            if (!isValidExtension) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, 
                    "不支持的视频格式，仅支持: mp4, avi, mov, wmv, flv, mkv, webm");
            }

            // 3. 验证文件大小（50MB限制）
            long fileSize = file.getSize();
            if (fileSize > 50 * 1024 * 1024) {
                throw new BusinessException(ErrorCode.PARAMS_ERROR, "视频文件大小不能超过50MB");
            }

            // 4. 生成唯一文件名
            String uniqueFileName = UUID.randomUUID().toString() + fileExtension;
            
            // 5. 如果未提供标题，使用原文件名
            if (title == null || title.trim().isEmpty()) {
                title = originalFilename.substring(0, originalFilename.lastIndexOf("."));
            }

            // 6. 将MultipartFile保存为临时文件
            tempFile = File.createTempFile("upload_", fileExtension);
            file.transferTo(tempFile);
            log.info("临时文件创建成功: {}", tempFile.getAbsolutePath());

            // 7. 初始化VOD客户端并获取上传地址和凭证
            DefaultAcsClient vodClient = initVodClient();
            CreateUploadVideoResponse createUploadVideoResponse = createUploadVideo(
                vodClient, uniqueFileName, title
            );

            // 8. 获取VideoId
            String videoId = createUploadVideoResponse.getVideoId();
            log.info("获取到VideoId: {}", videoId);

            // 9. 解析UploadAuth和UploadAddress
            JSONObject uploadAuth = JSONObject.parseObject(
                decodeBase64(createUploadVideoResponse.getUploadAuth())
            );
            JSONObject uploadAddress = JSONObject.parseObject(
                decodeBase64(createUploadVideoResponse.getUploadAddress())
            );

            // 10. 使用UploadAuth和UploadAddress初始化OSS客户端
            OSSClient ossClient = initOssClient(uploadAuth, uploadAddress);

            // 11. 上传文件到OSS（同步上传，会阻塞等待）
            uploadLocalFile(ossClient, uploadAddress, tempFile.getAbsolutePath());
            log.info("视频上传成功, VideoId: {}, 文件名: {}", videoId, originalFilename);

            // 12. 关闭OSS客户端
            ossClient.shutdown();

            return videoId;

        } catch (BusinessException e) {
            log.error("视频上传业务异常: {}", e.getMessage());
            throw e;
        } catch (ClientException e) {
            log.error("阿里云VOD客户端异常: {}", e.getErrMsg());
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "视频上传失败: " + e.getErrMsg());
        } catch (IOException e) {
            log.error("文件IO异常: {}", e.getMessage());
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "文件处理失败: " + e.getMessage());
        } catch (Exception e) {
            log.error("视频上传未知异常: {}", e.getMessage(), e);
            throw new BusinessException(ErrorCode.SYSTEM_ERROR, "视频上传失败: " + e.getMessage());
        } finally {
            // 13. 清理临时文件
            if (tempFile != null && tempFile.exists()) {
                boolean deleted = tempFile.delete();
                if (deleted) {
                    log.info("临时文件已删除: {}", tempFile.getAbsolutePath());
                } else {
                    log.warn("临时文件删除失败: {}", tempFile.getAbsolutePath());
                }
            }
        }
    }

    /**
     * Base64解码
     * @param data Base64编码的字符串
     * @return 解码后的字符串
     */
    private static String decodeBase64(String data) {
        return new String(Base64.decodeBase64(data));
    }
}
