package com.hhm.scw.service;

import com.hhm.scw.dao.IFavoriteDao;
import com.hhm.scw.domain.Favorite;

public class FavoriteService {
	private IFavoriteDao favoriteDao=null;

	public IFavoriteDao getFavoriteDao() {
		return favoriteDao;
	}

	public void setFavoriteDao(IFavoriteDao favoriteDao) {
		this.favoriteDao = favoriteDao;
	}

	/**
	 * 找到收藏
	 * @param favoriteId
	 * @return
	 */
	public Favorite findById(String favoriteId) {
		return this.favoriteDao.findById(favoriteId);
	}

	/**
	 * 删除收藏对象
	 * @param favorite
	 */
	public void delete(Favorite favorite) {
		this.favoriteDao.delete(favorite);
	}

	public void delete(String favoriteId) {
		Favorite favorite=this.favoriteDao.findById(favoriteId);
		delete(favorite);
	}
	
	
}
