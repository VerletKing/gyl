package com.gyl.utils;

import java.util.Calendar;

public class GylUtils {
	
	public static String getDateToString() {
		Calendar cal = Calendar.getInstance();// 使用日历类
		int year = cal.get(Calendar.YEAR);// 得到年
		int month = cal.get(Calendar.MONTH) + 1; // 得到月，因为从0开始的，所以要加1
		int day = cal.get(Calendar.DAY_OF_MONTH);// 得到天
		String monthStr = String.valueOf(month);
		if(month/10==0){
			monthStr = "0"+month;
		}
		String dayStr = String.valueOf(day);
		if(day/10==0){
			dayStr = "0"+day;
		}
		return year+monthStr+dayStr;
	}
}
