package com.hhm.scw.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import com.hhm.scw.dao.IUserDao;
import com.hhm.scw.domain.Address;
import com.hhm.scw.domain.Favorite;
import com.hhm.scw.domain.Order;
import com.hhm.scw.domain.User;
import com.hhm.scw.util.Conditions;
import com.hhm.scw.util.Conditions.Operator;

public class UserService {
	private IUserDao userDao = null;

	public IUserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}

	/**
	 * 注册用户
	 * 
	 * @param user
	 */
	public void add(User user) {
		
		this.userDao.addOrUpdate(user);
	}

	/**
	 * 条件查询
	 * 
	 * @return
	 */
	public List<User> findByConditions(Conditions conditions) {
		return this.userDao.findByConditions(conditions);
	}

	public void addOrUpdate(User user) {
		this.userDao.addOrUpdate(user);
	}

	/**
	 * 获取到用户的订单
	 * 
	 * @param user
	 * @return
	 */
	public List<Order> getOrderList(User user) {

		Set<Order> orderSet = user.getOrderSet();
		List<Order> orderList = new ArrayList<Order>();

		if (orderSet != null && orderSet.size() != 0) {
			orderList = new ArrayList<Order>(orderSet);
		}
		return orderList;
	}

	/**
	 * 获取用户相关的地址
	 * 
	 * @param user
	 * @return
	 */
	public List<Address> getAddressList(User user) {
		Set<Address> addressSet = user.getAddressSet();

		List<Address> addressSList = new ArrayList<Address>();

		if (addressSet != null && addressSet.size() != 0) {
			addressSList = new ArrayList<Address>(addressSet);
		}
		return addressSList;
	}

	public List<Favorite> getFavoriteList(User user) {
		Set<Favorite> favoriteSet = user.getFavoriteSet();
		

		List<Favorite> favoriteList = new ArrayList<Favorite>();

		if (favoriteSet != null && favoriteSet.size() != 0) {
			favoriteList = new ArrayList<Favorite>(favoriteSet);
		}
		return favoriteList;
	}

	/**
	 * 检查用户名的唯一性
	 * 
	 * @param userName
	 * @return
	 */
	public boolean checkUnique(String userName) {
		// 条件查询
		Conditions conditions = new Conditions();
		conditions.addCondition("userName", userName, Operator.LIKE);

		List<User> users = this.userDao.findByConditions(conditions);

		if (users != null && users.size() != 0) {

			return false;// 已经有了，不是唯一的
		}

		return true;

	}
}
