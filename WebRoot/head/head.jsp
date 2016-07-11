<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
   <script type="text/javascript" src="/myShangCaiWang/script/tools.js"></script>
   <script type="text/javascript" src="/myShangCaiWang/script/minicart.js"></script>
   <link rel="stylesheet" href="/myShangCaiWang/themes/green/style.css" type="text/css" />
   
</head>

<body id="warp">
    <!-- 页面头部区域 -->
   <div id="head">
      <div id="top">
         <div class="logo">
            <div id="152">
               <a href="/myShangCaiWang">
                  <img src="${pageContext.request.contextPath }/themes/green/logo.jpg" border="0" />
               </a>
            </div>
         </div>
         <div class="top-c">
            <div class="tel">
               <div id="153">
                  <div class="AdvBanner">
                     <a href="/myShangCaiWang" target="_self">
                        <img src='/myShangCaiWang/themes/green/4fc50445bbc4fa7f.jpg' />
                     </a>
                  </div>
               </div>
            </div>
            <div class="login">
               <div id="154">
                  ${session.user.userName }，您好，欢迎光临上菜网,
                  <span id="uname_154"></span>
                  <span id="loginBar_154">
                  	<s:if test="#session.user==null">
                     <a href="${pageContext.request.contextPath }/member/userAction_loginRegister.action">【登录】</a>
                     <a href="${pageContext.request.contextPath }/member/userAction_loginRegister.action">【免费注册】</a>
                     </s:if>
                  
                  </span>
               </div>
            </div>
         </div>
         <div class="top-r">
            <div class="topmenu">
               <div id="155">
                  <a href="${pageContext.request.contextPath }/member/myCountAction_memberInfo.action" type="page">我的账户</a>
                  &nbsp;|&nbsp;
                  <a href="${pageContext.request.contextPath }/page/infopage/cjwt.jsp">帮助中心</a>
                  |&nbsp;
                  <a href="${pageContext.request.contextPath }/page/infopage/cjwt.jsp" type="page">Q&amp;A</a>
                  |
                  <a href="${pageContext.request.contextPath }/page/infopage/lxwm.jsp">联系我们</a>
               </div>
            </div>
            <div class="topbut">
               <ul>
                  <li>
                     <div id="1102">
                        <a target="_blank" href="/myShangCaiWang/">
                           <img src="/myShangCaiWang/themes/green/c512cb35146b5ee9.gif" />
                        </a>
                     </div>
                  </li>
               </ul>
            </div>
         </div>
      </div>
      <div class="menu">
         <div class="menu-l"></div>
         <div class="menu-cnr">
            <div id="915">
               <div class="menu-c">
                  <ul id="nav">
                     <li style="background: none repeat scroll 0% 0% transparent;" id="mainlevel_01" class="mainlevel"><span id="menu_bt1" class="menu1">
                           <a class="aw2" href="/myShangCaiWang/" target="_self"></a>
                        </span></li>
                     <li id="mainlevel_02" class="mainlevel"><span id="menu_bt2" class="menu2">
                           <a class="aw2" href="/myShangCaiWang/"></a>
                        </span></li>
                     <li id="mainlevel_03" class="mainlevel"><span id="menu_bt3" class="menu3">
                           <a class="aw2" href="/myShangCaiWang/"></a>
                        </span></li>
                     <li id="mainlevel_04" class="mainlevel"><span id="menu_bt4" class="menu4">
                           <a class="aw2" href="/myShangCaiWang/"></a>
                        </span></li>
                  </ul>
               </div>

            </div>
         </div>
         <div class="shoppingcar">
            <div id="163">
               <div class="ShopCartWrap">
                  <a href="/myShangCaiWang/member/cartAction_cart.action" class="cart-container">
                     您的购物车中有<b class="cart-number"><span id="totalCountInHead">${session.totalCount }</span> </b>件商品
                  </a>
                  &nbsp;&nbsp;合计：
                  <span class='cur'>￥</span>
                  <span class='totalprice' id="totalPriceInHead"> ${session.totalPrice}  </span>
               </div>
            </div>
         </div>
         <div class="menu-r"></div>
      </div>
      <div class="search">
         <div class="search-l"></div>
         <div class="search-c">
            <div class="searchbar">
               <div id="161">
                  <form action="${pageContext.request.contextPath }/goods/goodsAction_findGoodsByName.action" method="post" class="SearchBar">
                     <table cellpadding="0" cellspacing="0">
                        <tr>
                           <td class="search_label"><input name="goodsName" size="10" class="inputstyle keywords" value="" /></td>
                           <td><input type="submit" value="" class="btn_search" onfocus='this.blur();' /></td>
                        </tr>
                     </table>
                  </form>
               </div>
            </div>
            <div class="hotfont">
               <div id="162">
                  关键字搜索：&nbsp;&nbsp;&nbsp;
                  <a href="${pageContext.request.contextPath }/goods/classifyAction_showGoods.action?classifyName=提货卡券" type="url">礼卡</a>
                  &nbsp;&nbsp;
                  <a href="${pageContext.request.contextPath }/goods/classifyAction_showGoods.action?classifyName=" type="url"></a>
                  <a href="${pageContext.request.contextPath }/goods/classifyAction_showGoods.action?classifyName=进口水果" type="url">进口商品</a>
                  &nbsp;&nbsp;
                  <a href="${pageContext.request.contextPath }/goods/classifyAction_showGoods.action?classifyName=进口水果" type="url">进口水果</a>
                  &nbsp;&nbsp;
                  <a href="${pageContext.request.contextPath }/goods/classifyAction_showGoods.action?classifyName=干 货" type="url">崇明土特产</a>
                  &nbsp;&nbsp;&nbsp;
                  <a href="${pageContext.request.contextPath }/goods/classifyAction_showGoods.action?classifyName=虾蟹" type="url">海鲜</a>
                  &nbsp;&nbsp;
                  <a href="${pageContext.request.contextPath }/goods/goodsAction_findGoodsByName.action?goodsName=猪肉" type="url">猪肉</a>
                  &nbsp;
                  <a href="${pageContext.request.contextPath }/goods/goodsAction_findGoodsByName.action?goodsName=番茄" type="url">番茄</a>
                  &nbsp;&nbsp;
                  <a href="${pageContext.request.contextPath }/goods/goodsAction_findGoodsByName.action?goodsName=" type="url">全部商品</a>
               </div>
            </div>
         </div>
         <div class="search-r"></div>
      </div>
   </div>
 
