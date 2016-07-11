package com.hhm.scw.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import com.hhm.scw.dao.ICategoryDao;
import com.hhm.scw.domain.Category;
import com.hhm.scw.domain.Classify;
import com.hhm.scw.domain.Goods;

public class CategoryService {
	private ICategoryDao categoryDao=null;

	public ICategoryDao getCategoryDao() {
		return categoryDao;
	}

	public void setCategoryDao(ICategoryDao categoryDao) {
		this.categoryDao = categoryDao;
	}

	/**
	 * 获取所有的商品大类
	 * @return
	 */
	public List<Category> findAll() {
		
		return this.categoryDao.findAll();
	}

	/**
	 * 获取商品大类的小类
	 * @param categoryId
	 * @return
	 */
	public List<Classify> getClassifyById(String categoryId) {
		//找到该大类
		Category category=this.categoryDao.findById(categoryId);
		List<Classify> classifyList=new ArrayList<Classify>();
		
		//获取到所有的小类
		Set<Classify> classifSet=category.getClassifys();
		
		for (Classify classify : classifSet) {
			Classify noSetClassify=new Classify();
			//把小类的set集合去掉，不然会无法转换
			noSetClassify.setClassifyId(classify.getClassifyId());
			noSetClassify.setClassifyName(classify.getClassifyName());
			classifyList.add(noSetClassify);
		//	classifyList.add(classify);//没有去掉set集合
		}
		
			return classifyList;
	}
	
	
}
