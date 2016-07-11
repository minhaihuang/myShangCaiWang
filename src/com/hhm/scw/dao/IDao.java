package com.hhm.scw.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import com.hhm.scw.domain.Goods;
import com.hhm.scw.util.Conditions;

import com.hhm.scw.util.DataTablesPage;

/**
 * 这是顶层Dao
 * @author 黄帅哥
 *
 */
public interface IDao<T> {
	
	public void delete(T t);//删除一个bean
	public void deleteAll(Collection<T> beans);//删除容器中所的bean
	
	public void addOrUpdate(T t);//增加或删除一个bean
	public void addOrUpdateAll(Collection<T> beans);//增加或删除一个容器中的bean
	
	
	//查询的方法
	public List<T> findByConditions(Conditions conditions);//条件查询
	public T findById(Serializable id);//id查询
	
	public List<T> findAll();//全部查询
	
	
	public void getPageData(DataTablesPage<T> page, Conditions conditions);//分页查询
	
}
