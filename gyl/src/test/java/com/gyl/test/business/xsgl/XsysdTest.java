package com.gyl.test.business.xsgl;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.gyl.business.xsgl.dao.XsddzhibDao;
import com.gyl.business.xsgl.dao.XsddzhubDao;
import com.gyl.business.xsgl.service.XsysdService;
import com.gyl.domain.business.xsgl.Xsddzhib;
import com.gyl.domain.business.xsgl.Xsddzhub;
import com.gyl.domain.business.xsgl.Xsysdzhib;
import com.gyl.domain.business.xsgl.Xsysdzhub;
import com.gyl.test.utils.SpringUtils;

public class XsysdTest extends SpringUtils{
	@Test
	public void testSaveXsysd(){
		XsysdService xsysdService = (XsysdService)context.getBean("xsysdService");
		Xsysdzhub xsysdzhub = new Xsysdzhub();
		List<Xsysdzhib> xsysdzhibs = new ArrayList<Xsysdzhib>();
		Xsysdzhib xsysdzhib = new Xsysdzhib();
		xsysdzhib.setSl(10L);//设置实发数量
		xsysdzhib.setYtdjh("201702090001");//源头单据号
		xsysdzhib.setYthh(1L);//源头行号
		xsysdzhibs.add(xsysdzhib);
		xsysdService.saveXsysd(xsysdzhub, xsysdzhibs);
		
		System.out.println("销售应收单子表是否关闭："+xsysdzhib.getIsysgb());
		XsddzhibDao xsddzhibDao = (XsddzhibDao)context.getBean("xsddzhibDao");
		Xsddzhib xsddzhib = xsddzhibDao.getXsddzhibCondition("201702090001", 1L);
		System.out.println("销售订单子表累计发货数量:"+xsddzhib.getLjyssl());
		System.out.println("是否应收关闭:"+xsddzhib.getIsskjs());
		/**
		 * 提取销售订单主表
		 */
		XsddzhubDao xsddzhubDao = (XsddzhubDao)context.getBean("xsddzhubDao");
		Xsddzhub xsddzhub = xsddzhubDao.getXsddzhubByDDH("201702090001");
		//查看销售订单主表的状态
		System.out.println(xsddzhub.getState());
	}
	
}