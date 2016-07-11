package com.hhm.scw.domain;

import java.util.Date;

/**
 * 辅助javabean，订单类
 * 
 * @author 黄帅哥
 * 
 */
public class Order {
	private String orderId = null;
	private Date createDate = null;
	private Integer totalPrice = null;
	private String status = null;
	private String comment = null;

	// 与用户是一对多的关系
	private User user = null;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Integer getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	

}
