package com.gyl.query.baseData;

import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.gyl.query.BaseQuery;

public class UserQuery extends BaseQuery{
	
	private String userName;
	private String password;
	private String phone;

	@Override
	public Map<String, Object> buildWhere() {
		if(StringUtils.isNotBlank(userName)){
			map.put("userName", userName);
		}
		if(StringUtils.isNotBlank(password)){
			map.put("password", password);
		}
		if(StringUtils.isNotBlank(phone)){
			map.put("phone", phone);
		}
		return map;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}