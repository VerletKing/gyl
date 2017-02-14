package com.gyl.query.business.xsgl;

import java.util.Map;

import com.gyl.query.BaseQuery;

public class XsysdzhibQuery extends BaseQuery {
	
	private Long xsysdzhubid;

	public Long getXsysdzhubid() {
		return xsysdzhubid;
	}

	public void setXsysdzhubid(Long xsysdzhubid) {
		this.xsysdzhubid = xsysdzhubid;
	}
	
	
	@Override
	public Map<String, Object> buildWhere() {
		if (xsysdzhubid != null) {
			this.map.put("xsysdzhub.xsysdzhubid", this.xsysdzhubid);
		}
		return this.map;
	}
}
