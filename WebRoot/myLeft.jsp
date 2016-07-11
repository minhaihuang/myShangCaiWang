<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myLeft.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="siteparttitle">
               <div class="gender"></div>
               <div class="info">
                  <strong>您好：123</strong>&nbsp;&nbsp;[
                  <a class="lnk" href="/myShangCaiWang/">会员中心</a>
                  ]&nbsp;&nbsp;[
                  <a class="lnk" href="/myShangCaiWang/">退出</a>
                  ]
               </div>
               <div class="time"></div>
               <div style="clear: both;"></div>
            </div>
            <div class="MemberSidebar">
               <div class="MemberMenu">
                  <div class="title"></div>
                  <div class="body">
                     <ul>
                        <li class="MemberMenuList"><span style="border-top-color: currentColor; border-top-width: medium; border-top-style: none;">
                              <div class="m_0" style="font-size: 14px;">交易记录</div>
                           </span>
                           <ul style="background: rgb(255, 255, 255);">
                              <li><a href="${pageContext.request.contextPath }/member/myCountAction_orderList.action" target="_self">我的订单</a></li>
                              <li><a href="${pageContext.request.contextPath }/member/myCountAction_credit.action" target="_self">我的积分</a></li>
                           </ul></li>
                        <li class="MemberMenuList"><span>
                              <div class="m_1" style="font-size: 14px;">收藏夹</div>
                           </span>
                           <ul>
                              <li><a href="${pageContext.request.contextPath }/member/myCountAction_wishlist.action" target="_self">商品收藏</a></li>
                           </ul></li>
                        <li class="MemberMenuList"><span>
                              <div class="m_3" style="font-size: 14px;">个人设置</div>
                           </span>
                           <ul>
                              <li><a href="${pageContext.request.contextPath }/myCountAction_member/memberInfo.action" target="_self">个人信息</a></li>
                              <li><a href="${pageContext.request.contextPath }/myCountAction_member/passwordUpdate.action" target="_self">修改密码</a></li>
                              <li><a href="${pageContext.request.contextPath }/myCountAction_member/receiverAddress.action" target="_self">收货地址</a></li>
                           </ul></li>
                     </ul>
                  </div>
                  <div class="foot"></div>
               </div>
            </div>
  </body>
</html>
