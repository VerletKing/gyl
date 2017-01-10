package com.gyl.query.baseData;

import java.util.Map;

import org.apache.commons.lang.StringUtils;

import com.gyl.query.BaseQuery;

public class DepartmentQuery extends BaseQuery{
	
	private String name;
	private String description;

	@Override
	public Map<String, Object> buildWhere() {
		if(StringUtils.isNotBlank(name)){
			map.put("name", name);
		}
		if(StringUtils.isNotBlank(description)){
			map.put("description", description);
		}
		return map;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
