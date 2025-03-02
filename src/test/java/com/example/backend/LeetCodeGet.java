package com.example.backend;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class LeetCodeGet {
    public static void main(String[] args) {
        try {
            // 请求 URL
            String graphqlUrl = "https://leetcode.cn/graphql";

            // 构造请求体
            String requestBody = "{\n" +
                    "  \"operationName\": \"contestHistory\",\n" +
                    "  \"variables\": {\n" +
                    "    \"pageNum\": 1,\n" +
                    "    \"pageSize\": 10\n" +
                    "  },\n" +
                    "  \"query\": \"query contestHistory($pageNum: Int!, $pageSize: Int) {\\n  contestHistory(pageNum: $pageNum, pageSize: $pageSize) {\\n    totalNum\\n    contests {\\n      containsPremium\\n      title\\n      cardImg\\n      titleSlug\\n      description\\n      startTime\\n      duration\\n      originStartTime\\n      isVirtual\\n      company {\\n        watermark\\n        __typename\\n      }\\n      isEeExamContest\\n      __typename\\n    }\\n    __typename\\n  }\\n}\\n\"\n" +
                    "}";

            // 发送 POST 请求
            Document doc = Jsoup.connect(graphqlUrl)
                    .userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36")
                    .header("Referer", "https://leetcode.cn/contest/")
                    .header("Content-Type", "application/json") // 设置请求头
                    .header("Cookie", "b-user-id=a38da899-231a-14ef-f7f7-404b1d2cd67d; gr_user_id=7dac04c4-186b-464f-a956-6c1fc0da5605; _bl_uid=Oam1R2weot3g64dj7zty597mp1gq; a2873925c34ecbd2_gr_last_sent_cs1=xiao-liu-78; csrftoken=nK6supyeP52ipkoQy1Wvd53lsbB5T4LfEcFq1rAMTfTXZVpXJyiXvL7KaYcZFNyr; tfstk=geHnp-abcXPIc73AJVyBMSIVa2dTOMw7P4B8y8Uy_Pz_eXKQyz0olqVrp0eUEz0r56F8yy3MqVujv7eEEf6oc0MpA8KQdDw7UELvH8mIA8gntNqZKGWaAcWUz8RTQBjdOYTvHKnelfgMaEHL7wXQJuyzY7zU7hq0287Ua4za_orA88yrzhqaVoBFY8WPb1r77zyzT6-ibPZri1LbJzUsQFy66AHxSiMaxW4qYyoK-A7_T6igSJwKLkmQuDRVUTkgxWD5SLnKfWhrcSMKvLX_pmcaQk0y3eyZ0fmYtvYcpzNoI2coJ3C7jbmrhJwc4pogKyVqKWs5dqoi4jFiBnJbKJzEwJiRmeniK2nII0IP_J2KsSD33K_UyfnmEuDWPd0mYjurZgyc_s5cXTZw2A55NWr_jrBJQmkHXOQMwhxGguPUfk62jhf5NWr_jrKMjsrzTlZC3; sl-session=SPOcFGBgxGey0+V+HFX+2A==; _gid=GA1.2.301582588.1740836580; aliyungf_tc=d42581af742cd4bb9e45d6b70e4185c066966dbde4527b2b3ea5f211c68f4349; a2873925c34ecbd2_gr_session_id=355b029f-2e00-44b4-8217-ee0e9d4cbe63; a2873925c34ecbd2_gr_last_sent_sid_with_cs1=355b029f-2e00-44b4-8217-ee0e9d4cbe63; Hm_lvt_f0faad39bcf8471e3ab3ef70125152c3=1740454826,1740538920,1740836579,1740894243; Hm_lpvt_f0faad39bcf8471e3ab3ef70125152c3=1740894243; HMACCOUNT=3D9E0218E5314E61; a2873925c34ecbd2_gr_session_id_sent_vst=355b029f-2e00-44b4-8217-ee0e9d4cbe63; Hm_lvt_fa218a3ff7179639febdb15e372f411c=1739885416,1740454858,1740538925,1740894253; a2873925c34ecbd2_gr_cs1=xiao-liu-78; Hm_lpvt_fa218a3ff7179639febdb15e372f411c=1740894388; _gat_gtag_UA_131851415_1=1; _ga=GA1.1.1443766405.1724813048; _ga_PDVPZYN3CW=GS1.1.1740894243.57.1.1740894388.59.0.0")
                    .header("X-Csrftoken", "nK6supyeP52ipkoQy1Wvd53lsbB5T4LfEcFq1rAMTfTXZVpXJyiXvL7KaYcZFNyr")
                    .ignoreContentType(true) // 忽略内容类型检查
                    .method(Connection.Method.POST) // 设置为 POST 请求
                    .requestBody(requestBody) // 设置请求体
                    .post(); // 发送 POST 请求

            // 输出响应内容
            System.out.println(doc.body());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}