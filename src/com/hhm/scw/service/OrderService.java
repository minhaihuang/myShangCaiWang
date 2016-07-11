package com.hhm.scw.service;

import com.hhm.scw.dao.IOrderDao;
import com.hhm.scw.domain.Order;

public class OrderService {
	private IOrderDao orderDao=null;

	public IOrderDao getOrderDao() {
		return orderDao;
	}

	public void setOrderDao(IOrderDao orderDao) {
		this.orderDao = orderDao;
	}

	/**
	 * 保存订单到数据库
	 * @param order
	 */
	public void addOrder(Order order) {
		this.orderDao.addOrUpdate(order);
	}

	/**
	 * 找到订单
	 * @param orderId
	 * @return
	 */
	public Order findById(String orderId) {
		
		return this.orderDao.findById(orderId);
	}

	/**
	 * 删除订单
	 * @param order
	 */
	public void deleteOrder(Order order) {
		this.orderDao.delete(order);
	}
	
	
}
