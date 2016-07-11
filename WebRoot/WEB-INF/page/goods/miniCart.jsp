<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<jsp:include page="/head/head.jsp" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'miniCart.jsp' starting page</title>
    
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
    <div class="CartInfoItems" style="text-align: center;">
   目前选购商品共
   <span>1</span>
   种
   <span>1</span>
   件&nbsp;&nbsp;&nbsp;&nbsp;合计:
   <span>￥13.0</span>
   <div class='btnBar clearfix' style="margin-top: 10px; padding-left: 60px;">
      <a class="actbtn btn-viewcart" href="/myShangCaiWang/page/member/cart.jsp" target="_blank">进入购物车</a>
      <a class="actbtn btn-continue" href="/myShangCaiWang">继续购物</a>
   </div>
</div>
  </body>
</html>
