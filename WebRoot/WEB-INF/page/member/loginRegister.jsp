<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<jsp:include page="/head/head.jsp" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="/myShangCaiWang/script/tools.js"></script>
<script type="text/javascript" src="/myShangCaiWang/script/minicart.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-1.8.3.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/validate/validate.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/validate/validateMessage_zh_CN.js">
	
</script>
<link rel="stylesheet" href="/myShangCaiWang/themes/green/style.css"
	type="text/css" />
</head>
<script type="text/javascript">
	//客户端检查数据有效性
	$().ready(function() {
		$("#registerForm").validate({
			rules : {
				

				passWord : {
					required : true,
					minlength : 3,
				},
				
				rePassWord:{
					required : true,
					equalTo: "#passWord",
				},
				
				payPassWord : {
					required : true,
					minlength : 3,
				},

				rePayPassWord : {
					required : true,
					equalTo : "#payPassWord",
				},

				email : {
					required : true,
					email : true,
				},
				
				mobile:{
					minlength:11
				}
			},
			submitHandler : function(form) {
				form.submit();
				alert('注册成功');
				
			}

		}

		);
	});
	
	function validateForm(){
		
	}
</script>

<script type="text/javascript">
	//服务器端数据有效性检查，检查账号的唯一性，利用ajax
	function checkUnique(dom) {
		//获取参数
		var value = $(dom).val();
		
		if (value) {
			$
					.post(
							"${pageContext.request.contextPath }/member/userAction_checkUnique.action",
							{
								'userName' : value
							},
							function(data) {
								var accountImg = $("#accountImg");
								if (data == 'true') {
									//如果账号是唯一的，显示对号小图标
									accountImg.css('display', 'inline');
									accountImg
											.attr("src",
													'${pageContext.request.contextPath }/images/20160106/right.png');
									$(dom).after(accountImg);
								} else {
									accountImg.removeAttr("src");
									alert("该登陆账号已经存在");
								}

							});
		}
		;
	}

</script>
<body id="warp">


	<!-- 页面主题区域 -->
	<div class="AllWrapInside">
		<div class="PassportWrap">
			<div class="RegisterWrap clearfix">
				<div class="leftpart"
					style="width: 47%; margin-top: 20px; margin-right: 10px;">

					<form id="loginForm" name="loginForm" class="loginform"
						action="${pageContext.request.contextPath }/member/userAction_login.action"
						method="post">
						<input name="isfastbuy" type="hidden" value="" />
						<div class="RegisterWrap"
							style="padding: 5px; width: 420px; float: left;">
							<h4 style="float: left;">已注册用户，请登录</h4>
							<div style="clear: both;"></div>
							<div class="intro">
								<div class="customMessages">如果您已是本站会员，请登录。</div>
							</div>
							<div class="form" id="loginForm">
								<input name="forward" type="hidden" value="" />
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
									<tr>
										<th></th>
										<td><span style="color:red">
											<s:property value="%{#request.message}"/>
										</span></td>
									</tr>
										<tr>
											<th><i>*</i>用户名：</th>
											<td><input name="userName" tabindex="1" class="likai"
												id="in_login" required="true"
												onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" type="text"
												autocomplete="off"/> <a style="margin-left: 6px;"
													href="?passport-signup.jsp">立即注册</a>
											</td>
										</tr>
										<tr>
											<th><i>*</i>密码：</th>
											<td><input name="passWord" tabindex="2" class="likai"
												id="in_passwd" required="true"
												onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" type="password"
												autocomplete="off"/> <a style="margin-left: 6px;"
													href="?passport-lost.jsp">忘记密码？</a>
											</td>
										</tr>
										<tr>
											<th></th>
											<td><input tabindex="4" class="actbtn btn-login"
												type="submit" value="登录"/> <input name="forward"
													type="hidden" value=""/>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<input name="ref_url" type="hidden"
								value="http://www.673573.com/">
						</div>
						<div class="clearfix"></div>
					</form>
				</div>



				<div class="righttop"
					style="width: 47%; height: auto; margin-top: 20px;">
					<form id="registerForm" name="registerForm" class="signupform"
						action="${pageContext.request.contextPath }/member/userAction_register.action"
						method="post">
						<div class="RegisterWrap">
							<h4>用户注册</h4>
							<div class="intro">
								<div class="customMessages">
									欢迎来到上海蔬菜集团旗下购物网站 <a href="http://www.673573.com/" type="url">上菜网</a>
									，如果您是新用户，请填写下面的表单进行注册。
								</div>
							</div>

							<div class="form">
								<input name="forward" type="hidden" value="" />
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tbody>
										<tr>
											<th></th>
											<!-- 显示错误信息 -->
											<td><span style="color:red"><s:actionerror /> </span></td>
										</tr>

										<tr>
											<th><i>*</i>用户名：</th>
											<td><input name="userName" onblur="checkUnique(this)"
												class="inputstyle _x_ipt denglzhucwidth" id="reg_user"
												required="true" onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" onblur="emptySpan(this)"
												onchange="nameCheck(this)" type="text" maxlength="50"
												vtype="required" /><img
					id="accountImg" style="display:none"/></td>
										</tr>
										<tr>
											<th><i>*</i>密码：</th>
											<td><input name="passWord" id="passWord"
												class="x-input inputstyle denglzhucwidth"
												 onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" onblur="emptySpan(this)"
												type="password" autocomplete="off" /> <span> <br />&nbsp;
											</span></td>
										</tr>
										<tr>
											<th><i>*</i>确认密码：</th>
											<td><input name="rePassWord"
												 onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" 
												type="password"  /> <span> <br />&nbsp;
											</span></td>
										</tr>
										<tr>
											<th><i>*</i>支付密码：</th>
											<td><input name="payPassWord" id="payPassWord"
												class="x-input inputstyle denglzhucwidth"
												required="true" onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" onblur="emptySpan(this)"
												type="password" autocomplete="off" /> <span> <br />&nbsp;
											</span></td>
										</tr>
										<tr>
											<th><i>*</i>确认支付密码：</th>
											<td><input name="rePayPassWord"
												class="x-input inputstyle denglzhucwidth"
												required="true" onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" onblur="emptySpan(this)"
												type="password" autocomplete="off" /> <span> <br />&nbsp;
											</span></td>
										</tr>
										<tr>
											<th><i>*</i>电子邮箱：</th>
											<td><input name="email"
												class="inputstyle _x_ipt denglzhucwidth" id="email"
												onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" onblur="emptySpan(this)"
												type="text" /> <span> <br />&nbsp; </span></td>
										</tr>
										
										<tr>
										<th><i>*</i>电话号码：</th>
											
											<td><input name="mobile" id="phone" type="text" onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" onblur="emptySpan(this)"/></td>
										</tr>
										
										<tr>
											<th><i>*</i>验证码：</th>
											<td><input name="checkNumber"
												class="x-input inputstyle denglzhucwidth" id="iptsingup"
												required="true" onmouseover="this.className='denglu'"
												onmouseout="this.className='likai'" type="text" size="8"
												autocomplete="off" vtype="digits" /> <span
												class="verifyCode" style="display: display;"> <img
													src="${pageContext.request.contextPath}/checkNumber.jsp"
													name="checkNumber" style="cursor:hand" title="点击可更换图片"
													height="20"
													onclick="this.src='${pageContext.request.contextPath}/checkNumber.jsp?timestemp='+new Date().getTime()" />
											</span></td>
										</tr>
					
										<tr>
											<th></th>
											<td><label class="nof"
												style="width: auto; text-align: left; font-weight: normal;"
												for="license"> <input name="license" id="license"
													type="checkbox" checked="checked" value="agree" /> 我已阅读并同意
													<a class="lnk" id="terms_error" href="?page-license.jsp"
													target="_blank"> <span class="FormText"
														id="terms_error_sym">会员注册协议</span> </a> 和<a class="lnk"
													id="privacy_error" href="?page-privacy.jsp" target="_blank">
														<span class="FormText" id="privacy_error_sym">隐私保护政策</span>
												</a> 。 </label></td>
										</tr>
										<tr>
											<th></th>
											<td><input class="actbtn btn-register" type="submit"
												value="注册新用户" /> <input name="forward" type="hidden"
												value="" /></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</form>

				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>


	<!-- 页面底部区域 -->
	<div id="foot">
		<div class="telephone-bottom"></div>
		<div class="server">
			<ul>
				<li>
					<div id="192">
						<div class="AdvBanner">
							<a href="/myShangCaiWang/" target="_self"> <img
								src='/myShangCaiWang/themes/green/627ec2150e9debde.jpg' /> </a>
						</div>
					</div>
				</li>
				<li>
					<div id="193">
						<div class="AdvBanner">
							<a href="/myShangCaiWang/" target="_self"> <img
								src='/myShangCaiWang/themes/green/abb5203432af0617.jpg' /> </a>
						</div>
					</div>
				</li>
				<li>
					<div id="194">
						<div class="AdvBanner">
							<a href="/myShangCaiWang/" target="_self"> <img
								src='/myShangCaiWang/themes/green/b0c3e9a8f7bf4d0d.jpg' /> </a>
						</div>
					</div>
				</li>
				<li>
					<div id="195">
						<div class="AdvBanner">
							<a href="/myShangCaiWang/" target="_self"> <img
								src='/myShangCaiWang/themes/green/f2512165e7503194.jpg' /> </a>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<div class="clear"></div>
		<!-- 迷你购物车div -->
		<div id="template-modal" style="display: none;">
			<div class="dialog">
				<div class="dialog-title">
					<div class="title span-auto">{title}</div>
					<div class="dialog-close-btn">X</div>
					<div style="clear: both;"></div>
				</div>
				<div class="dialog-content">{content}</div>
			</div>
		</div>
	</div>
	<!-- 也是页面底部区域 -->
	<div class="themefoot" style="margin-bottom: 15px;">
		<div style="text-align: center">
			&nbsp; <a href="/myShangCaiWang/" type="url">首页</a> &nbsp;
			|&nbsp;&nbsp; <a href="/myShangCaiWang/" type="url">配送范围</a> &nbsp;
			|&nbsp; <a href="/myShangCaiWang/" type="page">单位配送</a> &nbsp;
			|&nbsp; <a href="/myShangCaiWang/" type="page">品牌合作</a> &nbsp;
			|&nbsp;&nbsp; <a href="/myShangCaiWang/" type="url">企业惠购</a>
			&nbsp;&nbsp;|&nbsp; <a title="兑换券通道" href="/myShangCaiWang/"
				type="url" target="_blank">兑换券通道</a> &nbsp; |&nbsp;&nbsp; <a
				href="/myShangCaiWang/" type="url" target="_blank">配送状态查询</a> <br />
			<br /> <a href="http://sh.cyberpolice.cn/" target="_blank"> <img
				src="/myShangCaiWang/themes/green/bf71a5e1cebbd360.png" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a> <a
				href="http://www.zx110.org/" target="_blank"> <img
				src="/myShangCaiWang/themes/green/116a91936c1b3523.png" />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a> <a
				href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20110525164045664"
				target="_blank"> <img style="WIDTH: 47px; height: 47px"
				src="/myShangCaiWang/themes/green/a5832b33c6e5fb43.gif" /> </a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a
				href="http://www.zx110.org/picp?sn=310100103072"> <img
				src="/myShangCaiWang/themes/green/2ffa01f51afb73d2.png" /> </a> <br />
		</div>
		<div align="center">Copyright 2010-2012 673573.com All Rights
			Reserved</div>
	</div>
</body>

</html>