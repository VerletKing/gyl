package com.gyl.query;

import java.util.List;

public class PageResult<T> {
	
	public static final Integer INITPAGESIZE = 4;
	
	//主表当前页
	private Integer currenPage;
	//子表当前页
	private Integer sublitCurrenPage;
	//页大小
	private Integer pageSize;
	//总数据
	private Long  totalData;
	//总页数
	private Integer totalPage;
	//当前页数据
	private List<T> item;
	
	public PageResult() {}

	public PageResult(Integer currenPage, Integer pageSize, Long totalData) {
		this.currenPage = Math.max(currenPage,1);
		this.pageSize = pageSize;
		this.totalData = totalData;
		this.totalPage =  (int) ((totalData+pageSize-1)/pageSize);
		this.currenPage = Math.min(this.currenPage, totalPage);
	}

	public Integer getCurrenPage() {
		return currenPage;
	}

	public void setCurrenPage(Integer currenPage) {
		this.currenPage = currenPage;
	}

	public Integer getSublitCurrenPage() {
		return sublitCurrenPage;
	}

	public void setSublitCurrenPage(Integer sublitCurrenPage) {
		this.sublitCurrenPage = sublitCurrenPage;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Long getTotalData() {
		return totalData;
	}

	public void setTotalData(Long totalData) {
		this.totalData = totalData;
	}

	public Integer getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

	public List<T> getItem() {
		return item;
	}

	public void setItem(List<T> item) {
		this.item = item;
	}

	@Override
	public String toString() {
		return "PageResult [currenPage=" + currenPage + ", sublitCurrenPage="
				+ sublitCurrenPage + ", pageSize=" + pageSize + ", totalData="
				+ totalData + ", totalPage=" + totalPage + ", item=" + item
				+ "]";
	}

}
