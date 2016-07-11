package com.hhm.scw.web.action;

import java.io.IOException;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.hhm.scw.domain.User;
import com.hhm.scw.service.UserService;
import com.hhm.scw.util.Conditions;
import com.hhm.scw.util.Conditions.Operator;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	private UserService userService = null;
	private User user = new User();
	private String checkNumber = null;// 验证码

	public String getCheckNumber() {
		return checkNumber;
	}

	public void setCheckNumber(String checkNumber) {
		this.checkNumber = checkNumber;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getModel() {

		return user;
	}

	/**
	 * 导航到登陆或者注册页面
	 * 
	 * @return
	 */
	public String loginRegister() {
		return "loginRegister";
	}

	/**
	 * 注册用户
	 * 
	 * @return
	 */
	public String register() {
		// 数据有效性判断
		String sessionCheckNumber = (String) ServletActionContext.getRequest()
				.getSession().getAttribute("checkNumber");
		// 判断验证码输入想否符合
		if (!checkNumber.equals(sessionCheckNumber)) {
			this.addActionError("验证码不正确");
			return "registerError";
		}
		this.userService.add(user);
		
		//设置到web域中
		ServletActionContext.getRequest().getSession().setAttribute("user", user);
		return "register";
	}
	
	/**
	 * 登陆操作
	 * @return
	 */
	public String login(){
		//查询有无该用户
		Conditions conditions=new Conditions();
		conditions.addCondition("userName", user.getUserName(), Operator.EQUAL);
		conditions.addCondition("passWord", user.getPassWord(), Operator.EQUAL);
		List<User> userList=this.userService.findByConditions(conditions);
		
		if(userList==null||userList.size()==0){
			ServletActionContext.getRequest().setAttribute("message", "用户名或者密码错误");
			return "loginError";
		}
		
		user=userList.get(0);
		ServletActionContext.getRequest().getSession().setAttribute("user", user);
		return "login";
	}

	/**
	 * 更新用户信息
	 * @return
	 */
	public String update(){
		this.userService.addOrUpdate(user);
		
		//将新的用户信息设置进入session
		ServletActionContext.getRequest().getSession().setAttribute("user", user);
		return "update";
	}
	
	/**
	 * 检查用户名的唯一性
	 * @return
	 * @throws IOException 
	 */
	public String checkUnique() throws IOException{
		
		String userName=user.getUserName();
		
		boolean isUnique=this.userService.checkUnique(userName);
		
		try {
			System.out.println("the method is being used");
			
			ServletActionContext.getResponse().getWriter().write(isUnique+"");
		} catch (IOException e) {
			System.out.println("服务器错误");
			e.printStackTrace();
		}
		
		//因为不需要struts进行页面导航，所以此处一定要声明为null
		return null;
	}
}
