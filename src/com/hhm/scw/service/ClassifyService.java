package com.hhm.scw.service;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.hhm.scw.dao.IClassifyDao;
import com.hhm.scw.domain.Classify;
import com.hhm.scw.domain.Goods;
import com.hhm.scw.util.Conditions;
import com.hhm.scw.util.Conditions.Operator;

public class ClassifyService {
	private IClassifyDao classifyDao=null;
	

	public IClassifyDao getClassifyDao() {
		return classifyDao;
	}

	public void setClassifyDao(IClassifyDao classifyDao) {
		this.classifyDao = classifyDao;
	}

	/**
	 * 获取一组id组成的所有小类
	 * @param classifyIds
	 * @return
	 */
	public Set<Classify> getClassifysSet(String[] classifyIds) {
		
		
		
		Set<Classify> classifys=new HashSet<Classify>();
		
		for (String classifyId : classifyIds) {
			//可能存在空格，要去掉空格
			Classify classify=this.classifyDao.findById(classifyId.trim());
			
			if(classify!=null){
				classifys.add(classify);
			}
		}
		
		
		return classifys;
	}
	
	
	/**
	 * 获取所有的小类为有机蔬菜的商品，在数据库中设置所有的小类名称唯一，则可根据名称查询到小类
	 * @return
	 */
	public List<Goods> getGoodsListByClassifyName(String classifyName) {
		//条件查询
		Conditions conditions=new Conditions();
		conditions.addCondition("classifyName", classifyName, Operator.EQUAL);
		
		Classify classify=this.classifyDao.findByConditions(conditions).get(0);
		
		//获取小类的所有商品
		Set<Goods> goodsSet=classify.getGoodsSet();
		
		List<Goods> goodsList=new ArrayList<Goods>();
		
		if(goodsSet!=null){
			for (Goods goods : goodsSet) {
				goodsList.add(goods);
			}
		}
		return goodsList;
	}

}
