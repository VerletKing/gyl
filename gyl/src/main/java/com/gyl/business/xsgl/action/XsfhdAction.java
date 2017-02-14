package com.gyl.business.xsgl.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.business.xsgl.service.XsfhdService;
import com.gyl.domain.business.xsgl.Xsfhdzhib;
import com.gyl.domain.business.xsgl.Xsfhdzhub;
import com.gyl.query.PageResult;
import com.gyl.query.business.xsgl.XsfhdzhibQuery;
import com.gyl.query.business.xsgl.XsfhdzhubQuery;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class XsfhdAction extends ActionSupport{

	private static final long serialVersionUID = 3853198778409042436L;
	
	private XsfhdzhubQuery query_zhub = new XsfhdzhubQuery();
	private XsfhdzhibQuery query_zhib = new XsfhdzhibQuery();
	
	private List<Xsfhdzhib> xsfhdzhibs;
	
	@Resource
	private XsfhdService xsfhdService;
	
	public String showPageResultUI(){
		PageResult<Xsfhdzhub> pageResult_zhub = xsfhdService.findPageResult_zhu(query_zhub);
		ActionContext.getContext().put("pageResult_zhub", pageResult_zhub);
		if(query_zhib.getXsfhdzhubid()!=null){
			PageResult<Xsfhdzhib> pageResult_zhib = xsfhdService.findPageResult_zhi(query_zhib);
			ActionContext.getContext().put("pageResult_zhib", pageResult_zhib);
		}
		return "listUI";
	}
	
	public String addUI(){
		return "addUI";
	}
	
	public String add(){
		
		return "add";
	}

	public XsfhdzhubQuery getQuery_zhub() {
		return query_zhub;
	}

	public void setQuery_zhub(XsfhdzhubQuery query_zhub) {
		this.query_zhub = query_zhub;
	}

	public XsfhdzhibQuery getQuery_zhib() {
		return query_zhib;
	}

	public void setQuery_zhib(XsfhdzhibQuery query_zhib) {
		this.query_zhib = query_zhib;
	}

	public List<Xsfhdzhib> getXsfhdzhibs() {
		return xsfhdzhibs;
	}

	public void setXsfhdzhibs(List<Xsfhdzhib> xsfhdzhibs) {
		this.xsfhdzhibs = xsfhdzhibs;
	}
}
