package com.gyl.test.business.xsgl;

import org.junit.Test;

import com.gyl.business.xsgl.dao.XsyddzhubDao;
import com.gyl.business.xsgl.service.XsyddService;
import com.gyl.domain.business.xsgl.Xsyddzhib;
import com.gyl.domain.business.xsgl.Xsyddzhub;
import com.gyl.query.PageResult;
import com.gyl.query.business.xsgl.XsyddzhibQuery;
import com.gyl.query.business.xsgl.XsyddzhubQuery;
import com.gyl.test.utils.SpringUtils;
import com.gyl.utils.GylUtils;

public class XsyddTest extends SpringUtils{
	
	@Test
	public void testQuery(){
		XsyddService xsyddService =  (XsyddService) context.getBean("xsyddService");
		XsyddzhubQuery baseQuery = new XsyddzhubQuery();
		//baseQuery.setKhmc("asdf");
		//baseQuery.setCurrenPage(2);
		PageResult<Xsyddzhub> pageResult_zhu = xsyddService.findPageResult_zhu(baseQuery);
		System.out.println(pageResult_zhu.getItem().size());
		
		System.out.println("=============================================");
		
		XsyddzhibQuery xsyddzhibQuery = new XsyddzhibQuery();
		xsyddzhibQuery.setXsyddzhubid(1L);
		//xsyddzhibQuery.setCurrenPage(2);
		PageResult<Xsyddzhib> pageResult = xsyddService.findPageResult_zhi(xsyddzhibQuery);
		System.out.println(pageResult.getItem().size());
	}
	
	@Test
	public void testDDH(){
		XsyddzhubDao xsyddzhubDao = (XsyddzhubDao) context.getBean("xsyddzhubDao");
		System.out.println(xsyddzhubDao.getDDH());
	}

}
