package com.hhm.scw.service;

import com.hhm.scw.dao.IScwTestDao;
import com.hhm.scw.domain.ScwTest;

/**
 * 这是service层
 * @author 黄帅哥
 *
 */
public class ScwTestService {
	private IScwTestDao scwTestDao=null;
	

	public IScwTestDao getScwTestDao() {
		return scwTestDao;
	}


	public void setScwTestDao(IScwTestDao scwTestDao) {
		this.scwTestDao = scwTestDao;
	}

	public void add(ScwTest scwTest){
		this.scwTestDao.addOrUpdate(scwTest);
	}
}
