package com.hhm.scw.domain;

/**
 * 收藏的商品
 * 
 * @author 黄帅哥
 * 
 */
public class Favorite {
	/*
	 * create table favorite( goodsId int primary key; goodsName varchar(200)
	 * not null; price int not null; goodsMinImgPath varchar(200); );
	 */
	private String favoriteId=null;
	private Integer goodsId =null;
	private String goodsName = null;
	private String price = null;
	private String goodsMinImgPath = null;

	private User user=null;
	
	
	public User getUser() {
		return user;
	}
	

	public void setUser(User user) {
		this.user = user;
	}

	
	
	public String getFavoriteId() {
		return favoriteId;
	}


	public void setFavoriteId(String favoriteId) {
		this.favoriteId = favoriteId;
	}


	public Integer getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Integer goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getGoodsMinImgPath() {
		return goodsMinImgPath;
	}

	public void setGoodsMinImgPath(String goodsMinImgPath) {
		this.goodsMinImgPath = goodsMinImgPath;
	}

}
