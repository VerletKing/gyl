package com.gyl.business.xsgl.action;

import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.business.xsgl.service.XsyddService;
import com.gyl.domain.business.xsgl.Xsyddzhib;
import com.gyl.domain.business.xsgl.Xsyddzhub;
import com.gyl.query.PageResult;
import com.gyl.query.business.xsgl.XsyddzhibQuery;
import com.gyl.query.business.xsgl.XsyddzhubQuery;
import com.gyl.utils.GylUtils;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class XsyddAction extends ActionSupport{

	private static final long serialVersionUID = 2014640003955669275L;
	
	private XsyddzhubQuery query_zhub = new XsyddzhubQuery();
	private XsyddzhibQuery query_zhib = new XsyddzhibQuery();
	
	private List<Xsyddzhib> xsyddzhibs;
	
	@Resource
	private XsyddService xsyddService;
	
	public String showPageResultUI(){
		PageResult<Xsyddzhub> pageResult_zhub = xsyddService.findPageResult_zhu(query_zhub);
		ActionContext.getContext().put("pageResult_zhub", pageResult_zhub);
		if(query_zhib.getXsyddzhubid()!=null){
			PageResult<Xsyddzhib> pageResult_zhib = xsyddService.findPageResult_zhi(query_zhib);
			ActionContext.getContext().put("pageResult_zhib", pageResult_zhib);
		}
		return "listUI";
	}
	
	public String addUI(){
		return "addUI";
	}
	
	public String add(){
		Xsyddzhub xsyddzhub = new Xsyddzhub();
		BeanUtils.copyProperties(this.query_zhub, xsyddzhub);
		xsyddzhub.setDdh(xsyddService.getDDH());
		xsyddzhub.setXsyddzhibs(new HashSet(this.xsyddzhibs));
		xsyddService.savePageResult_zhu(xsyddzhub);
		return "add";
	}

	public XsyddzhubQuery getQuery_zhub() {
		return query_zhub;
	}

	public void setQuery_zhub(XsyddzhubQuery query_zhub) {
		this.query_zhub = query_zhub;
	}

	public XsyddzhibQuery getQuery_zhib() {
		return query_zhib;
	}

	public void setQuery_zhib(XsyddzhibQuery query_zhib) {
		this.query_zhib = query_zhib;
	}

	public List<Xsyddzhib> getXsyddzhibs() {
		return xsyddzhibs;
	}

	public void setXsyddzhibs(List<Xsyddzhib> xsyddzhibs) {
		this.xsyddzhibs = xsyddzhibs;
	}
	
}
