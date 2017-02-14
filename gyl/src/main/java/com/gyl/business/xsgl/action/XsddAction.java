package com.gyl.business.xsgl.action;

import java.util.HashSet;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.business.xsgl.service.XsddService;
import com.gyl.domain.business.xsgl.Xsddzhib;
import com.gyl.domain.business.xsgl.Xsddzhub;
import com.gyl.query.PageResult;
import com.gyl.query.business.xsgl.XsddzhibQuery;
import com.gyl.query.business.xsgl.XsddzhubQuery;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@Scope("prototype")
public class XsddAction extends ActionSupport{

	private static final long serialVersionUID = -7546299120308626927L;
	
	private XsddzhubQuery query_zhub = new XsddzhubQuery();
	private XsddzhibQuery query_zhib = new XsddzhibQuery();
	
	private List<Xsddzhib> xsddzhibs;
	
	private String filed;
	private String value;
	private String ddh;
	private String hh;
	
	@Resource
	private XsddService xsddService;
	
	public String showPageResultUI(){
		PageResult<Xsddzhub> pageResult_zhub = xsddService.findPageResult_zhu(query_zhub);
		ActionContext.getContext().put("pageResult_zhub", pageResult_zhub);
		if(query_zhib.getXsddzhubid()!=null){
			PageResult<Xsddzhib> pageResult_zhib = xsddService.findPageResult_zhi(query_zhib);
			ActionContext.getContext().put("pageResult_zhib", pageResult_zhib);
		}
		return "listUI";
	}
	
	public String addUI(){
		return "addUI";
	}
	
	public String add(){
		Xsddzhub xsddzhub = new Xsddzhub();
		BeanUtils.copyProperties(this.query_zhub, xsddzhub);
		xsddzhub.setDdh(xsddService.getDDH());
		xsddzhub.setXsddzhibs(new HashSet<Xsddzhib>(this.xsddzhibs));
		xsddService.savePageResult_zhu(xsddzhub);
		return "add";
	}
	
	public String updateUI(){
		return "updateUI";
	}
	
	public String showXsddByDDH(){
		Object obj = xsddService.getXsddzhubByDDH(query_zhub.getDdh());
		if(obj instanceof String){
			ActionContext.getContext().getValueStack().push("该销售订单已经完成了，不能进行修改");
			return "business_error";
		}else if(obj != null){
			BeanUtils.copyProperties(obj, query_zhub);
			query_zhib.setXsddzhubid(((Xsddzhub)obj).getXsddzhubid());
			PageResult<Xsddzhib> pageResult_zhib = xsddService.findPageResult_zhi(query_zhib);
			ActionContext.getContext().put("pageResult_zhib", pageResult_zhib);
			return "updateUI";
		}else{
			return "updateUI";
		}
	}
	
	public String udpateXsdd(){
		try {
			xsddService.updateXsdd(filed, value, ddh, hh);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ActionContext.getContext().getValueStack().push("success");
		return SUCCESS;
	}
	
	public XsddzhubQuery getQuery_zhub() {
		return query_zhub;
	}

	public void setQuery_zhub(XsddzhubQuery query_zhub) {
		this.query_zhub = query_zhub;
	}

	public XsddzhibQuery getQuery_zhib() {
		return query_zhib;
	}

	public void setQuery_zhib(XsddzhibQuery query_zhib) {
		this.query_zhib = query_zhib;
	}

	public void setXsddzhibs(List<Xsddzhib> xsddzhibs) {
		this.xsddzhibs = xsddzhibs;
	}

	public List<Xsddzhib> getXsddzhibs() {
		return xsddzhibs;
	}

	public void setFiled(String filed) {
		this.filed = filed;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public void setDdh(String ddh) {
		this.ddh = ddh;
	}

	public void setHh(String hh) {
		this.hh = hh;
	}
}
