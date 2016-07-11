package com.hhm.scw.web.interceptor;

import java.util.HashSet;
import java.util.Set;

import org.apache.struts2.ServletActionContext;

import com.hhm.scw.domain.User;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

/**
 * 权限控制器
 * @author 黄帅哥
 *
 */
public class AuthInterceptor extends AbstractInterceptor{
	//需要被拦截的权限
	private Set<String> securitySet=new HashSet<String>();
	@Override
	public void init() {
		securitySet.add("goodsAction_goodsHome");
		super.init();
	}
	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		//获取请求的路径
		String actionName=actionInvocation.getProxy().getActionName();
		System.out.println(actionName);
		
		//如果请求的路径需要我们拦截
		if(securitySet.contains(actionName)){
			
			//取出用户
			User user=(User) actionInvocation.getInvocationContext().getSession().get("user");

			if (user == null) {// 用户还没登陆
				
				return "authError";// 跳转到登录或者注册页面

			}

			//如果用户是管理员
			if("admin".equals(user.getUserName())){
				//让请求通过
				return actionInvocation.invoke();
			}else{
				return "authError";//权限不足
			}
		}
		return actionInvocation.invoke();
	}

}
