package com.gyl.baseData.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.gyl.base.action.BaseAction;
import com.gyl.baseData.service.ProductService;
import com.gyl.domain.baseData.Product;
import com.opensymphony.xwork2.ActionContext;

@Controller
@Scope("prototype")
public class ProductAction extends BaseAction<Product>{

	private static final long serialVersionUID = -4756765224268567441L;
	
	@Resource
	private ProductService productService;
	
	public String showDivProduct(){
		List<Product> list = productService.find();
		ActionContext.getContext().getValueStack().push(list);
		return SUCCESS;
	}
}
