package com.hhm.scw.web.action;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.struts2.ServletActionContext;

import com.hhm.scw.domain.Address;
import com.hhm.scw.domain.Favorite;
import com.hhm.scw.domain.Order;
import com.hhm.scw.domain.User;
import com.hhm.scw.service.AddressService;
import com.hhm.scw.service.OrderService;
import com.hhm.scw.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 我的账户
 * 
 * @author 黄帅哥
 * 
 */
public class MyCountAction extends ActionSupport implements
		ModelDriven<Address> {
	private UserService userService = null;
	private OrderService orderService = null;
	private AddressService addressService = null;

	private String orderId = null;// 订单的id

	private String oldPassWord = null;// 旧密码
	private String passWord = null;// 新密码
	private String oldPayPassWord = null;// 旧支付密码
	private String payPassWord = null;// 新支付密码

	private Address address = new Address();

	public String getOldPassWord() {
		return oldPassWord;
	}

	public void setOldPassWord(String oldPassWord) {
		this.oldPassWord = oldPassWord;
	}

	public String getPassWord() {
		return passWord;
	}

	public void setPassWord(String passWord) {
		this.passWord = passWord;
	}

	public String getOldPayPassWord() {
		return oldPayPassWord;
	}

	public void setOldPayPassWord(String oldPayPassWord) {
		this.oldPayPassWord = oldPayPassWord;
	}

	public String getPayPassWord() {
		return payPassWord;
	}

	public void setPayPassWord(String payPassWord) {
		this.payPassWord = payPassWord;
	}

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public AddressService getAddressService() {
		return addressService;
	}

	public void setAddressService(AddressService addressService) {
		this.addressService = addressService;
	}

	/**
	 * 导航到我的账户主页
	 * 
	 * @return
	 */
	public String memberInfo() {
		// 判断用户是否已经登陆
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		if (user == null) {
			ServletActionContext.getRequest().setAttribute("message", "请先登录");
			// 跳转到登陆页面
			return "loginRegister";
		}

		return "memberInfo";
	}

	/**
	 * 导航到我的订单列表页面
	 * 
	 * @return
	 */
	public String orderList() {
		// 获取到所有的与当前用户相关的订单
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		// 获取订单
		List<Order> orderList = this.userService.getOrderList(user);

		System.out.println(orderList.size());
		// 设置到web域中
		ServletActionContext.getRequest().setAttribute("orderList", orderList);
		return "orderList";
	}

	/**
	 * 导航到我的积分
	 * 
	 * @return
	 */
	public String credit() {
		return "credit";
	}

	/**
	 * 导航商品收藏页面
	 * 
	 * @return
	 */
	public String wishlist() {
		// 获取到用户
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		// 获取与用户相关的收货地址信息
		List<Favorite> favoriteList = this.userService.getFavoriteList(user);
		// 设置到web域中
		ServletActionContext.getRequest().setAttribute("favoriteList",
				favoriteList);

		return "wishlist";
	}

	/**
	 * 导航更新密码
	 * 
	 * @return
	 */
	public String passwordUpdate() {
		return "passwordUpdate";
	}

	/**
	 * 导航收货地址
	 * 
	 * @return
	 */
	public String receiverAddress() {
		// 获取到用户
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		// 获取与用户相关的收货地址信息
		List<Address> addressList = this.userService.getAddressList(user);
		// 设置到web域中
		ServletActionContext.getRequest().setAttribute("addressList",
				addressList);

		return "receiverAddress";
	}

	/**
	 * 取消订单
	 * 
	 * @return
	 */
	public String deleteOrder() {
		// 获取到该订单
		Order order = this.orderService.findById(orderId);

		// 获取到用户
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		// 解除关联关系,最好是定义一个新的集合来装
		Set<Order> newOrderSet = new HashSet<Order>();
		Set<Order> oldOrderSet = user.getOrderSet();

		for (Order order2 : oldOrderSet) {
			if (!order2.getOrderId().equals(orderId)) {
				newOrderSet.add(order2);
			}
		}

		user.setOrderSet(newOrderSet);
		this.userService.addOrUpdate(user);
		this.orderService.deleteOrder(order);

		// 更新session中的user
		ServletActionContext.getRequest().getSession()
				.setAttribute("user", user);

		return "deleteOrder";
	}

	/**
	 * 修改密码
	 * 
	 * @return
	 */
	public String updatePassWord() {
		// 获取到用户
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		// 判断旧密码输入是否正常
		if (!oldPassWord.equals(user.getPassWord())) {
			ServletActionContext.getRequest().setAttribute("passWordMessage",
					"旧密码不正确");
			return "passwordUpdate";
		}

		// 旧密码输入正确
		user.setPassWord(passWord);
		this.userService.addOrUpdate(user);
		// 让用户重新登陆
		return "loginRegisiter";
	}

	/**
	 * 修改支付密码
	 * 
	 * @return
	 */
	public String updatePayPassWord() {
		// 获取到用户
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");
		// 判断旧支付密码输入是否正常
		if (!oldPayPassWord.equals(user.getPayPassWord())) {
			ServletActionContext.getRequest().setAttribute(
					"payPassWordMessage", "旧支付密码不正确");
			return "passwordUpdate";
		}

		// 旧支付密码输入正确
		user.setPayPassWord(payPassWord);
		this.userService.addOrUpdate(user);

		// 移除就得user对象
		ServletActionContext.getRequest().getSession().removeAttribute("user");
		// 让用户重新登陆
		return "loginRegisiter";
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
		return "myCountAddressEdit";
	}

	/**
	 * 更新地址
	 * 
	 * @return
	 */
	public String update() {
		System.out.println(address.getUserName());
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
		Set<Address> newAddressSet = new HashSet<Address>();
		for (Address address1 : addressSet) {
			if (!address1.getAddressId().equals(address.getAddressId())) {
				newAddressSet.add(address1);
			}
		}
		user.setAddressSet(newAddressSet);

		this.userService.addOrUpdate(user);// 更新user对象

		this.addressService.delete(address.getAddressId());// 删除address对象

		return "deleteAddress";
	}

	public Address getModel() {

		return address;
	}
}
