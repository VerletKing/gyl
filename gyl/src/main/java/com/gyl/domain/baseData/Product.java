package com.gyl.domain.baseData;

import java.io.Serializable;

public class Product implements Serializable{

	private static final long serialVersionUID = -6505330556980337540L;
	
	private Long pid;
	private String spmc; //商品名称
	private String xh;//型号
	private String spbm;//商品编码
	private String jldw;//单位
	private Double shulv;//税率
	
	
	public String getXh() {
		return xh;
	}
	public void setXh(String xh) {
		this.xh = xh;
	}
	public Double getShulv() {
		return shulv;
	}
	public void setShulv(Double shulv) {
		this.shulv = shulv;
	}
	public String getSpmc() {
		return spmc;
	}
	public void setSpmc(String spmc) {
		this.spmc = spmc;
	}
	public String getSpbm() {
		return spbm;
	}
	public void setSpbm(String spbm) {
		this.spbm = spbm;
	}
	
	public Long getPid() {
		return pid;
	}
	public void setPid(Long pid) {
		this.pid = pid;
	}
	public String getJldw() {
		return jldw;
	}
	public void setJldw(String jldw) {
		this.jldw = jldw;
	}
	
}
