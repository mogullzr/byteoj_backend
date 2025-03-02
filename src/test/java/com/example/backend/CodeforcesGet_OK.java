package com.example.backend;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

public class CodeforcesGet_OK {
	public static void main(String[] args) throws IOException {
		// 连接到目标网站并获取HTML文档
		Document doc = Jsoup.connect("https://codeforces.com/api/contest.list")
				.userAgent("Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.3")
				.header("Referer", "https://codeforces.com")
				.ignoreContentType(true) // 忽略内容类型检查
				.get();


		String json = String.valueOf(doc.body().text());
		// 解析JSON数据
		Gson gson = new Gson();
		JsonObject jsonObject = gson.fromJson(json, JsonObject.class);
		JsonArray resultArray = jsonObject.getAsJsonArray("result");
		// 输入的JSON数据

		// 存储提取和转换后的结果
		List<ContestInfo> contestInfoList = new ArrayList<>();

		// 遍历数组，提取符合条件的对象
		for (JsonElement element : resultArray) {
			JsonObject contest = element.getAsJsonObject();
			String phase = contest.get("phase").getAsString();

			if ("BEFORE".equals(phase)) {
				String name = contest.get("name").getAsString();
				long startTimeSeconds = contest.get("startTimeSeconds").getAsLong();
				long durationSeconds = contest.get("durationSeconds").getAsLong();

				// 转换时间字段
				String startTime = convertSecondsToDateTime(startTimeSeconds);
				String duration = convertSecondsToDuration(durationSeconds);

				// 存储结果
				contestInfoList.add(new ContestInfo(name, startTime, duration));
			}
		}

		// 输出结果
		for (ContestInfo info : contestInfoList) {
			System.out.println("Name: " + info.getName());
			System.out.println("Start Time: " + info.getStartTime());
			System.out.println("Duration: " + info.getDuration());
			System.out.println("-----");
		}
	}

	/**
	 * 将秒数转换为日期时间格式
	 *
	 * @param seconds 秒数
	 * @return 日期时间字符串
	 */
	private static String convertSecondsToDateTime(long seconds) {
		Date date = new Date(seconds * 1000L);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		sdf.setTimeZone(TimeZone.getTimeZone("UTC"));
		return sdf.format(date);
	}

	/**
	 * 将秒数转换为持续时间（小时和分钟）
	 *
	 * @param seconds 秒数
	 * @return 持续时间字符串
	 */
	private static String convertSecondsToDuration(long seconds) {
		long hours = seconds / 3600;
		long minutes = (seconds % 3600) / 60;
		return hours + "小时" + minutes + "分钟";
	}

	/**
	 * 用于存储竞赛信息的内部类
	 */
	private static class ContestInfo {
		private final String name;
		private final String startTime;
		private final String duration;

		public ContestInfo(String name, String startTime, String duration) {
			this.name = name;
			this.startTime = startTime;
			this.duration = duration;
		}

		public String getName() {
			return name;
		}

		public String getStartTime() {
			return startTime;
		}

		public String getDuration() {
			return duration;
		}
	}
}