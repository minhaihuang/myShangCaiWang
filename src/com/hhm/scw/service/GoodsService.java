package com.hhm.scw.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

import com.hhm.scw.dao.IGoodsDao;
import com.hhm.scw.domain.Category;
import com.hhm.scw.domain.Classify;
import com.hhm.scw.domain.Goods;
import com.hhm.scw.domain.User;
import com.hhm.scw.util.Conditions;
import com.hhm.scw.util.Conditions.Operator;

import com.hhm.scw.util.DataTablesPage;

public class GoodsService {
	private IGoodsDao goodsDao = null;

	public IGoodsDao getGoodsDao() {
		return goodsDao;
	}

	public void setGoodsDao(IGoodsDao goodsDao) {
		this.goodsDao = goodsDao;
	}

	/**
	 * 保存数据到数据库
	 * 
	 * @param goods
	 */
	public void add(Goods goods) {
		this.goodsDao.addOrUpdate(goods);
	}

	/**
	 * 根据id找到对应的商品
	 * 
	 * @param i
	 * @return
	 */
	public Goods findById(int i) {

		return this.goodsDao.findById(i);
	}

	/**
	 * 完善page数据
	 * 
	 * @param page
	 * @param conditions
	 */
	public void getPageData(DataTablesPage<Goods> page, Conditions conditions) {
		this.goodsDao.getPageData(page, conditions);

		// 去掉page中的gooods的set集合，因为是双向关联数据，所以会进入获取数据的死循环。
		List<Goods> goodsList = page.getData();

		List<Goods> noSetGoodsList = new ArrayList<Goods>();

		// 去掉goods的集合操作
		for (Goods goods : goodsList) {
			goods.setClassifys(null);
			noSetGoodsList.add(goods);

		}

		// 重新设置page的数据集合
		page.setData(noSetGoodsList);
	}

	/**
	 * 根据id删除商品
	 * 
	 * @param goodsId
	 */
	public void deleteById(int goodsId) {
		// 先获取到，再删除
		Goods goods = this.goodsDao.findById(goodsId);

		if (goods != null) {
			this.goodsDao.delete(goods);
		}
	}

	/**
	 * 更新商品
	 * 
	 * @param goods
	 */
	public void updateGoods(Goods goods) {
		this.goodsDao.addOrUpdate(goods);
	}

	// 获取该商品的小类
	public List<Classify> getClassifyById(int goodsId) {
		// 找到该商品
		Goods goods = this.goodsDao.findById(goodsId);
		List<Classify> classifyList = new ArrayList<Classify>();

		// 获取到所有的小类
		Set<Classify> classifSet = goods.getClassifys();

		for (Classify classify : classifSet) {
			Classify noSetClassify = new Classify();
			// 把小类的set集合去掉，不然会无法转换
			noSetClassify.setClassifyId(classify.getClassifyId());
			noSetClassify.setClassifyName(classify.getClassifyName());
			classifyList.add(noSetClassify);
			// classifyList.add(classify);//没有去掉set集合
		}

		return classifyList;
	}

	/**
	 * 条件查询
	 * 
	 * @param conditions
	 * @return
	 */
	public List<Goods> findByConditions(Conditions conditions) {

		return this.goodsDao.findByConditions(conditions);
	}

	/**
	 * 检查商品名称的唯一性
	 * 
	 * @param goodsName
	 * @return
	 */
	public boolean checkUnique(String goodsName) {
		// 条件查询
		Conditions conditions = new Conditions();
		conditions.addCondition("goodsName", goodsName, Operator.LIKE);

		List<Goods> goodsList = this.goodsDao.findByConditions(conditions);

		if (goodsList != null && goodsList.size() != 0) {

			return false;// 已经有了，不是唯一的
		}

		return true;
	}

}
