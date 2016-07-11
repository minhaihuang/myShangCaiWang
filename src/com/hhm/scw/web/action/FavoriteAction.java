package com.hhm.scw.web.action;

import java.util.HashSet;
import java.util.Set;

import org.apache.struts2.ServletActionContext;

import com.hhm.scw.domain.Address;
import com.hhm.scw.domain.Favorite;
import com.hhm.scw.domain.Goods;
import com.hhm.scw.domain.User;
import com.hhm.scw.service.FavoriteService;
import com.hhm.scw.service.GoodsService;
import com.hhm.scw.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class FavoriteAction extends ActionSupport implements
		ModelDriven<Favorite> {

	private Favorite favorite = new Favorite();
	private UserService userService = null;
	private FavoriteService favoriteService = null;
	private GoodsService goodsService = null;

	private String goodsId = null;

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public Favorite getFavorite() {
		return favorite;
	}

	public void setFavorite(Favorite favorite) {
		this.favorite = favorite;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public FavoriteService getFavoriteService() {
		return favoriteService;
	}

	public void setFavoriteService(FavoriteService favoriteService) {
		this.favoriteService = favoriteService;
	}

	public Favorite getModel() {

		return favorite;
	}

	/**
	 * 添加到收藏夹
	 * 
	 * @return
	 */
	public String addFavorite() {
		// 获取用户对象
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		// 如果用户还没登陆，去登陆
		if (user == null) {
			ServletActionContext.getRequest().setAttribute("message", "请先登录");
			return "loginRegisiter";
		}

		// Integer temp=Integer.parseInt(goodsId);
		// 根据商品的id找到该商品
		Goods goods = this.goodsService.findById(favorite.getGoodsId());

		// 准备对象
		Favorite favorite1 = new Favorite();
		favorite1.setGoodsMinImgPath(goods.getGoodsMinImgPath());
		favorite1.setGoodsName(goods.getGoodsName());
		favorite1.setGoodsId(goods.getGoodsId());
		favorite1.setPrice(goods.getPrice());

		// 双向关联
		favorite1.setUser(user);
		user.getFavoriteSet().add(favorite1);

		this.userService.addOrUpdate(user);

		return null;
	}

	/**
	 * 删除收藏
	 * 
	 * @return
	 */
	public String deleteFavorite() {
		// 删除旧对象
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		Set<Favorite> oldFavoriteSet = user.getFavoriteSet();
		Set<Favorite> newFavoriteSet = new HashSet<Favorite>();
		for (Favorite favorite1 : oldFavoriteSet) {
			if (!favorite1.getFavoriteId().equals(favorite.getFavoriteId())) {
				newFavoriteSet.add(favorite1);
			}
		}
		user.setFavoriteSet(newFavoriteSet);

		this.userService.addOrUpdate(user);// 更新user对象

		this.favoriteService.delete(favorite.getFavoriteId());// 删除favorite象

		return "deleteFavorite";
	}

}
