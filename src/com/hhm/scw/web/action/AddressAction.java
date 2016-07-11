package com.hhm.scw.web.action;

import java.util.HashSet;
import java.util.Set;

import org.apache.struts2.ServletActionContext;

import com.hhm.scw.domain.Address;
import com.hhm.scw.domain.User;
import com.hhm.scw.service.AddressService;
import com.hhm.scw.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class AddressAction extends ActionSupport implements
		ModelDriven<Address> {
	private Address address = new Address();
	private AddressService addressService = null;
	private UserService userService = null;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public Address getModel() {

		return address;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public AddressService getAddressService() {
		return addressService;
	}

	public void setAddressService(AddressService addressService) {
		this.addressService = addressService;
	}

	/**
	 * 导航到添加地址页面
	 * 
	 * @return
	 */
	public String addAddress() {
		return "addressAdd";
	}

	/**
	 * 添加地址
	 * 
	 * @return
	 */
	public String add() {
		// 获取当前用户
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		// 加入地址对象
		System.out.println(user.getUserName());
		System.out.println(address.getUserName());

		// 双向关联
		address.setUser(user);

		user.getAddressSet().add(address);

		// 更新对象
		this.userService.addOrUpdate(user);
		return "add";
	}

	/**
	 * 更新地址信息的页面
	 * 
	 * @return
	 */
	public String updateAddress() {
		// 获取到该地址对象
		address = this.addressService.findById(address.getAddressId());

		ServletActionContext.getRequest().setAttribute("address", address);
		return "addressEdit";
	}

	/**
	 * 更新地址
	 * 
	 * @return
	 */
	public String update() {
		// 删除旧对象
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		Set<Address> addressSet = user.getAddressSet();

		for (Address address1 : addressSet) {
			if (address1.getAddressId().equals(address.getAddressId())) {
				addressSet.remove(address1);
			}
		}
		user.setAddressSet(addressSet);

		this.userService.addOrUpdate(user);

		// 更新对象
		this.userService.addOrUpdate(user);

		// 加入地址对象

		System.out.println(address.getUserName());

		// 双向关联
		address.setUser(user);

		user.getAddressSet().add(address);

		// 更新对象
		this.userService.addOrUpdate(user);

		return "update";
	}

	/**
	 * 删除地址
	 * 
	 * @return
	 */
	public String deleteAddress() {
		// 删除旧对象
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		Set<Address> addressSet = user.getAddressSet();
		Set<Address> newAddressSet=new HashSet<Address>();
		for (Address address1 : addressSet) {
			if (!address1.getAddressId().equals(address.getAddressId())) {
				newAddressSet.add(address1);
			}
		}
		user.setAddressSet(newAddressSet);

		this.userService.addOrUpdate(user);//更新user对象
		
		this.addressService.delete(address.getAddressId());//删除address对象
		
		

		return "deleteAddress";
	}
}
