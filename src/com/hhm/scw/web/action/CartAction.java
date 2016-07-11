package com.hhm.scw.web.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.servlet.http.Cookie;

import org.apache.struts2.ServletActionContext;

import com.hhm.scw.domain.Address;
import com.hhm.scw.domain.Cart;
import com.hhm.scw.domain.Cart.CartItem;
import com.hhm.scw.domain.Goods;
import com.hhm.scw.domain.User;
import com.hhm.scw.service.ClassifyService;
import com.hhm.scw.service.GoodsService;
import com.hhm.scw.util.Conditions;
import com.hhm.scw.util.Conditions.Operator;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

/**
 * 购物车的action
 * 
 * @author 黄帅哥
 * 
 */
public class CartAction extends ActionSupport implements ModelDriven<Goods> {
	private GoodsService goodsService = null;
	private ClassifyService classifyService = null;
	Goods goods = new Goods();

	// 商品id
	private String goodsId = null;
	private String operation = null;// 更新的操作

	public ClassifyService getClassifyService() {
		return classifyService;
	}

	public void setClassifyService(ClassifyService classifyService) {
		this.classifyService = classifyService;
	}

	public Goods getGoods() {
		return goods;
	}

	public void setGoods(Goods goods) {
		this.goods = goods;
	}

	public String getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(String goodsId) {
		this.goodsId = goodsId;
	}

	public String getOperation() {
		return operation;
	}

	public void setOperation(String operation) {
		this.operation = operation;
	}

	public Goods getModel() {
		return goods;
	}

	public GoodsService getGoodsService() {
		return goodsService;
	}

	public void setGoodsService(GoodsService goodsService) {
		this.goodsService = goodsService;
	}

	/**
	 * 导航到购物车页面
	 * 
	 * @return
	 */
	public String cart() {
		// 获取购物车对象
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");

		// 获取选择购买的商品列表
		if (cart != null) {
			List<CartItem> cartItemList = cart.getCartItemList();

			int totalCount = 0;// 商品总数
			int totalPrice = 0;// 商品总价格
			int totalGrade = 0;// 可以获取的总积分
			if (cartItemList != null && cartItemList.size() != 0) {
				for (CartItem cartItem : cartItemList) {
					totalCount += cartItem.getGoodsCount();

					int temp = Integer.parseInt(cartItem.getGoods().getPrice());
					totalPrice += temp * cartItem.getGoodsCount();

					totalGrade += cartItem.getGoods().getGrade()
							* cartItem.getGoodsCount();
				}
			}

			// 设置到web域中
			ServletActionContext.getRequest().getSession()
					.setAttribute("totalCount", totalCount);
			// 设置到web域中
			ServletActionContext.getRequest().getSession()
					.setAttribute("totalPrice", totalPrice);

			// 设置到web域中
			ServletActionContext.getRequest().getSession()
					.setAttribute("totalGrade", totalGrade);
		}
		return "cart";

	}

	/**
	 * 导航到结算页面
	 * 
	 * @return
	 */
	public String checkout() {
		// 判断用户是否已经登录
		User user = (User) ServletActionContext.getRequest().getSession()
				.getAttribute("user");

		if (user == null) {// 用户还没登陆
			ServletActionContext.getRequest().setAttribute("message", "请先登录");
			return "loginRegister";// 跳转到登录或者注册页面

		}
		//
		// 用户已经登陆。
		// 获取用户设置的守护地址与收件人
		Set<Address> addressSet = user.getAddressSet();

		// 设置带web域中
		if (addressSet != null) {
			System.out.println(addressSet.size());
			Iterator<Address> it = addressSet.iterator();
			while (it.hasNext()) {
				System.out.println(it.next().getUserName());
			}

			ServletActionContext.getRequest().setAttribute("addressSet",
					addressSet);
		}
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");
		if (cart != null) {
			List<CartItem> cartItemList = cart.getCartItemList();
			for (CartItem cartItem : cartItemList) {
				String goodName = cartItem.getGoods().getGoodsName();
				System.out.println(goodName);

			}
			ServletActionContext.getRequest().setAttribute("cartItemList",
					cartItemList);
		}
		return "checkout";
	}

	/**
	 * 加入商品到购物车，购买商品
	 */
	public String buy() {
		System.out.println(goods.getGoodsId());
		// 根据商品的id，找到该商品
		goods = this.goodsService.findById(goods.getGoodsId());

		// 获取购物车对象
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");

		// 如果当前购物车对象为空，证明还没有买过东西，需要新建一个购物车对象
		if (cart == null) {
			cart = new Cart();
		}

		// 购买商品的操作
		cart.buy(goods);
		ServletActionContext.getRequest().getSession()
				.setAttribute("cart", cart);

		return "buy";
	}

	/**
	 * 转到头部文件
	 * 
	 * @return
	 */
	public String index() {
		System.out.println(1234);
		// 获取购物车对象
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");

		if (cart != null) {
			// 获取选择购买的商品列表
			List<CartItem> cartItemList = cart.getCartItemList();

			int totalCount = 0;// 商品总数
			int totalPrice = 0;// 商品总价格
			if (cartItemList != null && cartItemList.size() != 0) {
				for (CartItem cartItem : cartItemList) {
					totalCount += cartItem.getGoodsCount();

					int temp = Integer.parseInt(cartItem.getGoods().getPrice());
					totalPrice += temp * cartItem.getGoodsCount();
				}
				// 设置到web域中
				ServletActionContext.getRequest().getSession()
						.setAttribute("totalCount", totalCount);
				// 设置到web域中
				ServletActionContext.getRequest().getSession()
						.setAttribute("totalPrice", totalPrice);
			}

		}

		List<Goods> goodsListInSession = this.classifyService
				.getGoodsListByClassifyName("有机蔬菜");

		System.out.println(goodsListInSession.size());

		ServletActionContext.getRequest().getSession()
				.setAttribute("goodsListInSession", goodsListInSession);
		return "index";
	}

	/**
	 * 更新购物车
	 * 
	 * @return
	 * @throws IOException
	 */
	public String update() throws IOException {
		System.out.println(goodsId);
		System.out.println(goods.getGoodsId());
		System.out.println("123456");

		// 获取购物车
		// 获取购物车对象
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");

		// 更新购物车
		List<CartItem> cartItemList = cart.getCartItemList();
		for (CartItem cartItem : cartItemList) {
			// 找到该商品
			int temp = cartItem.getGoods().getGoodsId();
			if (cartItem.getGoods().getGoodsId() == goods.getGoodsId()) {
				// 修改数量
				if (operation.equals("decrease")) {
					int goodsCount = cartItem.getGoodsCount();
					if (goodsCount == 1) {
						ServletActionContext.getResponse().getWriter()
								.print("购买数量不能少于1");
						return null;
					}
					// 数量减1；
					cartItem.setGoodsCount(goodsCount - 1);

				} else {
					// 数量加1；
					System.out.println("加操作");
					cartItem.setGoodsCount(cartItem.getGoodsCount() + 1);
				}
			}
		}

		// 重新设置回web域中
		cart.setCartItemList(cartItemList);
		ServletActionContext.getRequest().getSession()
				.setAttribute("cart", cart);
		return null;
	}

	/**
	 * 删除购物车的某一项
	 * 
	 * @return
	 */
	public String cartItemDelete() {
		// 获取购物车对象
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");

		List<CartItem> cartItemList = cart.getCartItemList();
		List<CartItem> newCartItemList = new ArrayList<CartItem>();

		for (CartItem cartItem : cartItemList) {
			if (cartItem.getGoods().getGoodsId() != goods.getGoodsId()) {// 找到要删除的商品
				newCartItemList.add(cartItem);
			}
		}

		// 重新设置回去
		cart.setCartItemList(newCartItemList);
		ServletActionContext.getRequest().getSession()
				.setAttribute("cart", cart);
		return "cartItemDelete";
	}

	/**
	 * 清空购物车
	 * 
	 * @return
	 */
	public String clear() {
		// 获取购物车对象
		Cart cart = (Cart) ServletActionContext.getRequest().getSession()
				.getAttribute("cart");

		cart.setCartItemList(new ArrayList<CartItem>());
		return null;
	}
}
