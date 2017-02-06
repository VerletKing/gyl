package com.gyl.baseData.dao.impl;

import org.springframework.stereotype.Repository;

import com.gyl.base.dao.impl.BaseDaoImple;
import com.gyl.baseData.dao.ProductDao;
import com.gyl.domain.baseData.Product;

@Repository("productDao")
public class ProductDaoImpl extends BaseDaoImple<Product> implements ProductDao {

}
