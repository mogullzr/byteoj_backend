package com.example.backend.utils;

import com.alibaba.fastjson.JSONObject;
import com.aliyun.oss.OSSClient;
import com.aliyun.teaopenapi.models.Config;
import com.aliyun.vod20170321.Client;
import com.aliyun.vod20170321.models.GetVideoPlayAuthResponse;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.vod.model.v20170321.CreateUploadVideoRequest;
import com.aliyuncs.vod.model.v20170321.CreateUploadVideoResponse;
import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

import java.io.File;


/**
 * descript
 */
@Component
public class VodUtils {
    @Value("${aliyun.vod.accessKeyId}")
    private String accessKeyId;

    @Value("${aliyun.vod.accessKeySecret}")
    private String accessKeySecret;

    //初始化VOD客户端
    public static DefaultAcsClient initVodClient(String accessKeyId, String accessKeySecret) throws ClientException {
        // 根据点播接入服务所在的Region填写，例如：接入服务在上海，则填cn-shanghai；其他区域请参见存储说明。
        String regionId = "cn-shanghai";
        DefaultProfile profile = DefaultProfile.getProfile(regionId, accessKeyId, accessKeySecret);
        DefaultAcsClient client = new DefaultAcsClient(profile);
        return client;
    }
    //创建视频上传结果对象
    public static CreateUploadVideoResponse createUploadVideo(DefaultAcsClient vodClient) throws ClientException {
        CreateUploadVideoRequest request = new CreateUploadVideoRequest();
        request.setFileName("vod_test.mp4");
        request.setTitle("this is title");
        //设置请求超时时间
        request.setSysReadTimeout(1000);
        request.setSysConnectTimeout(1000);
        return vodClient.getAcsResponse(request);
    }

    //初始OSS客户端
    public static OSSClient initOssClient(JSONObject uploadAuth, JSONObject uploadAddress) {
        String endpoint = uploadAddress.getString("Endpoint");
        String accessKeyId = uploadAuth.getString("AccessKeyId");
        String accessKeySecret = uploadAuth.getString("AccessKeySecret");
        String securityToken = uploadAuth.getString("SecurityToken");
        return new OSSClient(endpoint, accessKeyId, accessKeySecret, securityToken);
    }
    //上传文件
    public static void uploadLocalFile(OSSClient ossClient, JSONObject uploadAddress, String localFile) {
        String bucketName = uploadAddress.getString("Bucket");
        String objectName = uploadAddress.getString("FileName");
        File file = new File(localFile);
        ossClient.putObject(bucketName, objectName, file);
    }

    // 获取播放凭证
    public String getPayAuth(String videoId) throws Exception {
        // 请确保代码运行环境设置了环境变量 ALIBABA_CLOUD_ACCESS_KEY_ID 和 ALIBABA_CLOUD_ACCESS_KEY_SECRET。
        // 工程代码泄露可能会导致 AccessKey 泄露，并威胁账号下所有资源的安全性。以下代码示例使用环境变量获取 AccessKey 的方式进行调用，仅供参考，建议使用更安全的 STS 方式，更多鉴权访问方式请参见：https://help.aliyun.com/document_detail/378657.html
        com.aliyun.vod20170321.Client client =
                createClient();

        com.aliyun.vod20170321.models.GetVideoPlayAuthRequest getVideoPlayAuthRequest =
                new com.aliyun.vod20170321.models.GetVideoPlayAuthRequest()
                        .setVideoId(videoId)
                        .setAuthInfoTimeout(3600L);;

        com.aliyun.teautil.models.RuntimeOptions runtime = new com.aliyun.teautil.models.RuntimeOptions();
        // 复制代码运行请自行打印 API 的返回值
        GetVideoPlayAuthResponse videoPlayAuthWithOptions = client.getVideoPlayAuthWithOptions(getVideoPlayAuthRequest, runtime);
        return videoPlayAuthWithOptions.getBody().getPlayAuth();
    }

    private Client createClient() throws Exception {
        Config config = new Config()
                .setAccessKeyId(accessKeyId)
                .setAccessKeySecret(accessKeySecret);
        config.endpoint = "vod.cn-shanghai.aliyuncs.com"; // 默认端点，可按需修改
        return new Client(config);
    }

    public static void main(String[] argv) {
        //您的AccessKeyId
        String accessKeyId = "xxxxx";
        //您的AccessKeySecret
        String accessKeySecret = "xxxxx";
        //需要上传到VOD的本地视频文件的完整路径，需要包含文件扩展名
        String localFile = "D:\\临时资料\\xxx.mp4";
        try {
            // 初始化VOD客户端并获取上传地址和凭证
            DefaultAcsClient vodClient = initVodClient(accessKeyId, accessKeySecret);
            //创建一个相应对象
            CreateUploadVideoResponse createUploadVideoResponse = createUploadVideo(vodClient);
            // 执行成功会返回VideoId、UploadAddress和UploadAuth
            String videoId = createUploadVideoResponse.getVideoId();
            //解析拿到结果对象
            JSONObject uploadAuth = JSONObject.parseObject(decodeBase64(createUploadVideoResponse.getUploadAuth()));
            JSONObject uploadAddress = JSONObject.parseObject(decodeBase64(createUploadVideoResponse.getUploadAddress()));

            // 使用UploadAuth和UploadAddress初始化OSS客户端
            OSSClient ossClient = initOssClient(uploadAuth, uploadAddress);
            // 上传文件，注意是同步上传会阻塞等待，耗时与文件大小和网络上行带宽有关
            uploadLocalFile(ossClient, uploadAddress, localFile);
            System.out.println("Put local file succeed, VideoId : " + videoId);
        } catch (Exception e) {
            System.out.println("Put local file fail, ErrorMessage : " + e.getLocalizedMessage());
        }
    }

    private static String decodeBase64(String data) {
        return new String(Base64.decodeBase64(data));
    }
}
