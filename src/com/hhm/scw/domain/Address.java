package com.hhm.scw.domain;

import java.io.Serializable;
/**
 * 地址类
 * @author 黄帅哥
 *
 */
public class Address implements Serializable {
	/*
	 *create table address(
	addressId varchar(255),
	location varchar(255),
	userName varchar(50),
	phone varchar(20),
	postNumber varchar(20),
	mobile varchar(20)

)

)
	 */
	private String addressId=null;
	private String userName=null;
	private String phone=null;
	private String postNumber=null;
	private String location=null;
	private String mobile=null;
	
	//与用户是一对多的关系
	private User user=null;


	
	
	public String getLocation() {
		return location;
	}


	public void setLocation(String location) {
		this.location = location;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getAddressId() {
		return addressId;
	}


	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getPostNumber() {
		return postNumber;
	}


	public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}
	
	
}
