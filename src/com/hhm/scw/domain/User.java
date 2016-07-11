package com.hhm.scw.domain;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

public class User {
	/*
	 * create table user( userId varchar(100) primary key, userName varchar(100)
	 * not null, passWord varchar(100) not null, payPassWord varchar(100) not
	 * null, email varchar(100), gender varchar(10), address varchar(250), phone
	 * varchar(50)
	 * 
	 * );
	 */

	private String userId = null;
	private String userName = null;
	private String passWord = null;
	private String payPassWord = null;
	private String email = null;
	private String gender = null;
	private String address = null;
	private String phone = null;
	private Integer totalGrade = null;
	private String postNumber = null;
	private Date birthday = null;
	private String mobile = null;

	// 与地址是一堆多关系
	private Set<Address> addressSet = new HashSet<Address>();

	// 与订单是一对多的关系
	private Set<Order> orderSet = new HashSet<Order>();

	// 与收藏是一对多的关系
	private Set<Favorite> favoriteSet = new HashSet<Favorite>();

	public Set<Favorite> getFavoriteSet() {
		return favoriteSet;
	}

	public void setFavoriteSet(Set<Favorite> favoriteSet) {
		this.favoriteSet = favoriteSet;
	}

	public Set<Order> getOrderSet() {
		return orderSet;
	}

	public void setOrderSet(Set<Order> orderSet) {
		this.orderSet = orderSet;
	}

	public Set<Address> getAddressSet() {
		return addressSet;
	}

	public void setAddressSet(Set<Address> addressSet) {
		this.addressSet = addressSet;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getPayPassWord() {
		return payPassWord;
	}

	public void setPayPassWord(String payPassWord) {
		this.payPassWord = payPassWord;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getTotalGrade() {
		return totalGrade;
	}

	public void setTotalGrade(Integer totalGrade) {
		this.totalGrade = totalGrade;
	}

	public String getPostNumber() {
		return postNumber;
	}

	public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

}
