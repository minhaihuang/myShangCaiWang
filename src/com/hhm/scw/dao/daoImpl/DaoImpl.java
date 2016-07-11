package com.hhm.scw.dao.daoImpl;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.HibernateTemplate;

import com.hhm.scw.dao.IDao;
import com.hhm.scw.domain.Goods;
import com.hhm.scw.util.Conditions;
import com.hhm.scw.util.Conditions.WhereSqlAndValue;

import com.hhm.scw.util.DataTablesPage;

public class DaoImpl<T> implements IDao<T> {
	private HibernateTemplate hibernateTemplate = null;

	
	// 获取对象类型
	private Class beanClass = null;
	{
		ParameterizedType paramType = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		Type[] argTypes = paramType.getActualTypeArguments();

		beanClass = (Class) argTypes[0];
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	/**
	 * 删除
	 */
	public void delete(T t) {
		this.hibernateTemplate.delete(t);
	
	}

	/**
	 * 删除容器中的全部
	 */
	public void deleteAll(Collection<T> beans) {
		this.hibernateTemplate.deleteAll(beans);
	}

	/**
	 * 更新或者修改
	 */
	public void addOrUpdate(T t) {
		this.hibernateTemplate.saveOrUpdate(t);
	}

	/**
	 * 更新或者修改容器中的全部
	 */
	public void addOrUpdateAll(Collection<T> beans) {
		this.hibernateTemplate.saveOrUpdateAll(beans);
	}

	/**
	 * 根据id查询
	 */
	public T findById(Serializable id) {

		return (T) this.hibernateTemplate.get(beanClass, id);
	}

	/**
	 * 查询全部
	 */
	public List<T> findAll() {

		String sql = "from " + beanClass.getName();

		System.out.println(sql);
		return this.hibernateTemplate.find(sql);
	}

	/**
	 * 条件查询
	 */
	public List<T> findByConditions(Conditions conditions) {
		StringBuilder sql = new StringBuilder();
		sql.append("from ").append(beanClass.getName());

		String whereSql = conditions.getWhereSqlAndValue().getWhereSql();
		Object[] values = conditions.getWhereSqlAndValue().getValues();

		if (conditions.getOrderByList() != null
				&& conditions.getOrderByList().size() != 0) {
			whereSql += conditions.createOrderByString();
		}

		sql.append(whereSql);

		System.out.println(sql.toString());
		System.out.println(Arrays.toString(values));

		return this.hibernateTemplate.find(sql.toString(), values);
	}

	/**
	 * 完善page分页数据
	 */
	public void getPageData(final DataTablesPage<T> page, Conditions conditions) {
		// 获取查询的条件
		WhereSqlAndValue wv = conditions.getWhereSqlAndValue();
		final String hql = "from " + beanClass.getName() + wv.getWhereSql();// hql语句
		final Object[] values = wv.getValues();// 占位符的值

		System.out.println(Arrays.toString(values));

		System.out.println(hql);

		// 获取数据
		List<T> data = this.hibernateTemplate
				.execute(new HibernateCallback<List<T>>() {

					public List<T> doInHibernate(Session session)
							throws HibernateException, SQLException {
						// 准备查询语句。和对象
						Query query = session.createQuery(hql);
						// 设置占位符的值
						for (int i = 0; i < values.length; i++) {
							query.setParameter(i, values[i]);
						}

						// 确定开始的查询索引
						System.out.println(page.getIDisplayStart());
						query.setFirstResult(page.getIDisplayStart());
						// 确定最大的查询索引
						query.setMaxResults(page.getIDisplayLength());
						return query.list();
					}

				});

		// 获取所有符合条件的数据的总数
		final String totalHql = "select count(*) from " + beanClass.getName()
				+ wv.getWhereSql();// hql语句
		System.out.println(totalHql);
		long iTotalRecords = this.hibernateTemplate
				.execute(new HibernateCallback<Long>() {

					public Long doInHibernate(Session session)
							throws HibernateException, SQLException {
						// 准备查询语句。和对象
						Query query = session.createQuery(totalHql);
						// 设置占位符的值
						for (int i = 0; i < values.length; i++) {
							query.setParameter(i, values[i]);
						}

						// 获取查询总数并且返回
						System.out.println(totalHql);
						return (Long) query.uniqueResult();
					}

				});

		page.setData(data);
		page.setITotalRecords((int) iTotalRecords);
		page.setITotalDisplayRecords(page.getITotalRecords());

		System.out.println(data.toString());

	}

}


