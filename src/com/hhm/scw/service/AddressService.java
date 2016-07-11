package com.hhm.scw.service;

import com.hhm.scw.dao.IAddressDao;
import com.hhm.scw.domain.Address;

public class AddressService {
	private IAddressDao addressDao=null;

	public IAddressDao getAddressDao() {
		return addressDao;
	}

	public void setAddressDao(IAddressDao addressDao) {
		this.addressDao = addressDao;
	}

	
	public Address findById(String addressId) {
		
		return this.addressDao.findById(addressId);
	}

	/**
	 * 保存或者更新地址信息
	 * @param address
	 */
	public void addOrUpdate(Address address) {
		
	}

	/**
	 * 删除对象
	 * @param address
	 */
	public void delete(Address address) {
		this.addressDao.delete(address);
	}

	/**
	 * 更加id来删除
	 */
	public void delete(String addressId) {
		//找到该对象
		Address address=this.addressDao.findById(addressId);
		delete(address);
	}
	
	
}
