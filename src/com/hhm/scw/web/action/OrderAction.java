package com.hhm.scw.web.action;

import java.util.Date;
import java.util.UUID;

import org.apache.struts2.ServletActionContext;


import com.hhm.scw.domain.Address;
import com.hhm.scw.domain.Cart;
import com.hhm.scw.domain.Order;
import com.hhm.scw.domain.User;

import com.hhm.scw.service.AddressService;
import com.hhm.scw.service.OrderService;
import com.hhm.scw.service.UserService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class OrderAction extends ActionSupport implements ModelDriven<Order>{
	private Order order=new Order();
	private OrderService orderService=null;
	private UserService userService=null;
	private String addressId=null;
	private AddressService addressService=null;
	
	
	public AddressService getAddressService() {
		return addressService;
	}

	public void setAddressService(AddressService addressService) {
		this.addressService = addressService;
	}

	public String getAddressId() {
		return addressId;
	}

	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public OrderService getOrderService() {
		return orderService;
	}

	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}

	public Order getModel() {
		
		return order;
	}

	/**
	 * 订单详情页面
	 * 
	 * @return
	 */
	public String orderDetail() {
		
		return "orderDetail";
	}

	/**
	 * 导航到下订单页面
	 * 
	 * @return
	 */
	public String orderCreate() {
		//获取到选择的地址信息
		Address address=this.addressService.findById(addressId);
		//设置带web域中
		ServletActionContext.getRequest().getSession().setAttribute("address", address);
		
		System.out.println(order.getComment());
		// 获取总价格
		int totalPrice =(Integer) ServletActionContext.getRequest().getSession()
				.getAttribute("totalPrice");

		
		//封装数据
		order.setCreateDate(new Date());
		order.setTotalPrice(totalPrice);
		order.setStatus("doing");
		
		//保存到数据库
		//获取用户
		User user=(User) ServletActionContext.getRequest().getSession().getAttribute("user");
		
		//获取本单科获取积分
		int totalGrade= (Integer) ServletActionContext.getRequest().getSession().getAttribute("totalGrade");
		//更新用户的总积分数
		Integer oldTotalGrade=user.getTotalGrade();
		if(oldTotalGrade==null){
			oldTotalGrade=0;
		}
		
		int newTotalGrade=oldTotalGrade+totalGrade;
		System.out.println(newTotalGrade);
		user.setTotalGrade(newTotalGrade);
		
		//双向关联
		user.getOrderSet().add(order);
		order.setUser(user);

		this.userService.addOrUpdate(user);
		
		//设置到session中
		ServletActionContext.getRequest().getSession().setAttribute("order", order);
		
		
		//确认订单后，把原先的购物车对象存储到一个新的对象中，原先的购物车对象清空
		Cart orderCart=(Cart) ServletActionContext.getRequest().getSession().getAttribute("cart");
		ServletActionContext.getRequest().getSession().setAttribute("orderCart", orderCart);
		ServletActionContext.getRequest().getSession().setAttribute("cart", new Cart());
		
		//清空头信息里面的总件数与总价格
		ServletActionContext.getRequest().getSession().setAttribute("oldTotalPrice", totalPrice);
		ServletActionContext.getRequest().getSession().setAttribute("totalPrice", 0);
		
		int totalCount=(Integer) ServletActionContext.getRequest().getSession().getAttribute("totalCount");
		ServletActionContext.getRequest().getSession().setAttribute("oldTotalCount", totalCount);
		ServletActionContext.getRequest().getSession().setAttribute("totalCount", 0);
		
		
		//设置更新后的user
		//ServletActionContext.getRequest().getSession().setAttribute("user", user);
		return "orderCreate";
	}

	
}
