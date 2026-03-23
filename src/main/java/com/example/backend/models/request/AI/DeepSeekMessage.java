package com.example.backend.models.request.AI;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

@Data
public class DeepSeekMessage implements Serializable {
    private static final long serialVersionUID = -4853126400314485658L;

    /**
     * 信息输入输出者 (e.g., "user", "assistant")
     */
    private String role;

    /**
     * 【核心修改】
     * 原来这里是 String content;
     * 现在改为 Object，因为它可以是：
     * 1. String (纯文本模式，兼容旧代码)
     * 2. List<ContentItem> (多模态模式，包含图片和文本)
     */
    private Object content;

    // --- 构造函数 ---
    public DeepSeekMessage() {}

    // 兼容旧代码：直接传字符串
    public DeepSeekMessage(String role, String content) {
        this.role = role;
        this.content = content;
    }

    // 新用法：传多模态列表
    public DeepSeekMessage(String role, List<ContentItem> contentList) {
        this.role = role;
        this.content = contentList;
    }


    // --- 内部静态类：定义 Content 的结构 ---

    /**
     * 多模态内容项 (对应 JSON 中的 { "type": "...", ... })
     */

    @Data
    public static class ContentItem implements Serializable {
        private static final long serialVersionUID = 1L;

        /**
         * 类型: "text" 或 "image_url"
         */
        private String type;

        /**
         * 当 type="text" 时，存放文本内容
         */
        private String text;

        /**
         * 当 type="image_url" 时，存放图片对象
         */
        private ImageUrlObj image_url;

        // 默认构造函数
        public ContentItem() {}

        // 快速构建文本项
        public static ContentItem ofText(String text) {
            ContentItem item = new ContentItem();
            item.setType("text");
            item.setText(text);
            return item;
        }

        // 快速构建图片项
        public static ContentItem ofImageUrl(String url) {
            ContentItem item = new ContentItem();
            item.setType("image_url");
            item.setImage_url(new ImageUrlObj(url));
            return item;
        }
    }

    /**
     * 图片对象 (对应 JSON 中的 { "url": "..." })
     */
    @Data
    public static class ImageUrlObj implements Serializable {
        private static final long serialVersionUID = 1L;
        private String url;

        public ImageUrlObj() {}

        public ImageUrlObj(String url) {
            this.url = url;
        }
    }
}