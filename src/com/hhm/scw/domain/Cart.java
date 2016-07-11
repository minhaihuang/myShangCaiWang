package com.hhm.scw.domain;

import java.util.ArrayList;
import java.util.List;

/**
 * 这是购物车类
 * @author 黄帅哥
 *
 */
public class Cart {
	//商品列表 
	private List<CartItem> cartItemList=new ArrayList<CartItem>();

	public List<CartItem> getCartItemList() {
		return cartItemList;
	}


	public void setCartItemList(List<CartItem> cartItemList) {
		this.cartItemList = cartItemList;
	}


	/**
	 * 购买商品的操作
	 */
	public void buy(Goods goods){
		if(cartItemList!=null&&cartItemList.size()!=0){
		//遍历商品列表
		for (CartItem cartItem : cartItemList) {
			if((cartItem.getGoods().getGoodsId())==(goods.getGoodsId())){//若商品已经存在，令其数量加1
				cartItem.setGoodsCount(cartItem.goodsCount+1);
				return;
			}
		}
		}
		
		//若购物车中还没有该商品
		CartItem cartItem=new CartItem();
		cartItem.setGoods(goods);
		cartItem.setGoodsCount(1);
		
		//加入商品列表
		cartItemList.add(cartItem);
	}


	/**
	 * 这是内部类，购物项类
	 * 
	 * @author 黄帅哥
	 * 
	 */
	public class CartItem {
		private Goods goods;//书
		private int goodsCount = 1;

		
		public String toString() {
			return goods + "----count:" + goodsCount;
		}


		public Goods getGoods() {
			return goods;
		}


		public void setGoods(Goods goods) {
			this.goods = goods;
		}


		public int getGoodsCount() {
			return goodsCount;
		}


		public void setGoodsCount(int goodsCount) {
			this.goodsCount = goodsCount;
		}

		

	}
}
