package com.gyl.baseData.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.gyl.base.dao.BaseDao;
import com.gyl.base.service.impl.BaseServiceImpl;
import com.gyl.baseData.dao.ProductDao;
import com.gyl.baseData.service.ProductService;
import com.gyl.domain.baseData.Product;

@Service("productService")
public class ProductServiceImpl extends BaseServiceImpl<Product> implements ProductService {

	@Resource
	private ProductDao productDao;
	
	@Override
	public BaseDao<Product> getBaseDao() {
		return productDao;
	}

}
