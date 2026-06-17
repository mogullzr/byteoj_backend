package com.example.backend;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class LuoguGet_GiveUp {
    public static void main(String[] args) throws IOException {
        String[] urls = {
                "https://www.luogu.com.cn/contest/list",
                "https://www.luogu.com.cn/contest/list",
                "https://www.luogu.com.cn/contest/list"
        };

        for (String url : urls) {
            sendRequest(url);
        }
    }

    private static void sendRequest(String url) {
        try {
            URL obj = new URL(url);
            HttpURLConnection conn = (HttpURLConnection) obj.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36");
            conn.setRequestProperty("Referer", "https://www.luogu.com.cn/contest/list");
            conn.setInstanceFollowRedirects(false);

            int responseCode = conn.getResponseCode();
            System.out.println("URL: " + url);
            System.out.println("Response Code: " + responseCode);

            if (responseCode == HttpURLConnection.HTTP_OK) {
                BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
                String inputLine;
                StringBuilder response = new StringBuilder();

                while ((inputLine = in.readLine()) != null) {
                    response.append(inputLine);
                }
                in.close();

                System.out.println("Response Body: " + response.toString());
            } else {
                System.out.println("Request failed with code: " + responseCode);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println("-----------------------------");
    }
}
