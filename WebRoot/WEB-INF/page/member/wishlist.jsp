<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:include page="/head/head.jsp" />
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

   
   <!-- 页面主题区域 -->
   <!-- 商品收藏 -->
   <div class="AllWrapInside">
      <div style="margin: auto; width: 950px; font-size: 12px; font-family: Arial, Helvetica, sans-serif">
         <div class="MemberCenter">


            <jsp:include page="/head/myLeft.jsp" ></jsp:include>

            <div class="MemberMain">
               <div style="margin-right: 175px;">
                  <div class="title">我收藏的商品</div>
                  <div class="GoodsSearchWrap" id="mbc-my-fav">
                     <div class="ItemsWarp clearfix">
                        <div class="items-list" id="goods_1310" product="1310">
                           <table width="100%" class="memberlist" border="0" cellspacing="0" cellpadding="0">
                              <tbody>
                              
                              <s:iterator value="%{#request.favoriteList}" var="favorite">
                              	
                                 <tr>
                                    <td width="120" class="goodpic"><a title="有机香菜" style="width: 120px; height: 120px; display: block;" href="${pageContext.request.contextPath }/goods/goodsAction_goodsDetail.action?goodsId=<s:property value="%{#favorite.goodsId}"/>">
                                          <img alt="有机香菜" src="${pageContext.request.contextPath }<s:property value="%{#favorite.goodsMinImgPath}"/>">
                                       </a></td>
                                    <td width="60%" class="goodinfo">
                                       <h6>
                                          <a title="有机香菜" href="${pageContext.request.contextPath }/goods/goodsAction_goodsDetail.action?goodsId=<s:property value="%{#favorite.goodsId}"/>"><s:property value="%{#favorite.goodsName}"/></a>
                                       </h6>
                                    </td>
                                    <td width="7%" class="price_button">
                                       <ul>
                                          <li><span class="price1">￥<s:property value="%{#favorite.price}"/></span></li>
                                       </ul>
                                    </td>
                                    <td>
                                       <ul class="button">
                                          <li class="addcart"><a title="加入购物车" class="listact" href="/myShangCaiWang/member/cartAction_buy.action?goodsId=<s:property value="%{#favorite.goodsId}"/>"  rel="nofollow" type="g" buy="1310">加入购物车</a></li>
                                          <li class="star-on" star="1310"><a title="加入收藏" class="listact" onclick="return false;" href="#" rel="nofollow">已加入收藏</a></li>
                                          <li class="vdetail zoom"><a class="listact" href="${pageContext.request.contextPath }/goods/goodsAction_goodsDetail.action?goodsId=<s:property value="%{#favorite.goodsId}"/>" target="_blank" pic="/myShangCaiWang/images/20160106/25da8b6ed8cf8a80.jpg">查看详细</a></li>
                                       </ul>
                                    </td>
                                    <td>
                                       <ul class="button">
                                          <li class="star-del"><a class="listact" href="${pageContext.request.contextPath }/member/favoriteAction_deleteFavorite.action?favoriteId=<s:property value="%{#favorite.favoriteId}"/>">删除收藏</a></li>
                                       </ul>
                                    </td>
                                 </tr>
                                 
                                 </s:iterator>
                                 
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </div>
               </div>
            </div>

            <div class="clear"></div>
         </div>
      </div>
      <div style="display: none;">
         <div class="memberlist-tip">
            <div class="tip">
               <div class="tip-title"></div>
               <div class="tip-text"></div>
            </div>
         </div>
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
                     <a href="/myShangCaiWang/" target="_self">
                        <img src='/myShangCaiWang/themes/green/627ec2150e9debde.jpg' />
                     </a>
                  </div>
               </div>
            </li>
            <li>
               <div id="193">
                  <div class="AdvBanner">
                     <a href="/myShangCaiWang/" target="_self">
                        <img src='/myShangCaiWang/themes/green/abb5203432af0617.jpg' />
                     </a>
                  </div>
               </div>
            </li>
            <li>
               <div id="194">
                  <div class="AdvBanner">
                     <a href="/myShangCaiWang/" target="_self">
                        <img src='/myShangCaiWang/themes/green/b0c3e9a8f7bf4d0d.jpg' />
                     </a>
                  </div>
               </div>
            </li>
            <li>
               <div id="195">
                  <div class="AdvBanner">
                     <a href="/myShangCaiWang/" target="_self">
                        <img src='/myShangCaiWang/themes/green/f2512165e7503194.jpg' />
                     </a>
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
         &nbsp;
         <a href="/myShangCaiWang/" type="url">首页</a>
         &nbsp; |&nbsp;&nbsp;
         <a href="/myShangCaiWang/" type="url">配送范围</a>
         &nbsp; |&nbsp;
         <a href="/myShangCaiWang/" type="page">单位配送</a>
         &nbsp; |&nbsp;
         <a href="/myShangCaiWang/" type="page">品牌合作</a>
         &nbsp; |&nbsp;&nbsp;
         <a href="/myShangCaiWang/" type="url">企业惠购</a>
         &nbsp;&nbsp;|&nbsp;
         <a title="兑换券通道" href="/myShangCaiWang/" type="url" target="_blank">兑换券通道</a>
         &nbsp; |&nbsp;&nbsp;
         <a href="/myShangCaiWang/" type="url" target="_blank">配送状态查询</a>
         <br /> <br />
         <a href="http://sh.cyberpolice.cn/" target="_blank">
            <img src="/myShangCaiWang/themes/green/bf71a5e1cebbd360.png" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </a>
         <a href="http://www.zx110.org/" target="_blank">
            <img src="/myShangCaiWang/themes/green/116a91936c1b3523.png" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </a>
         <a href="http://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=20110525164045664" target="_blank">
            <img style="WIDTH: 47px; height: 47px" src="/myShangCaiWang/themes/green/a5832b33c6e5fb43.gif" />
         </a>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
         <a href="http://www.zx110.org/picp?sn=310100103072">
            <img src="/myShangCaiWang/themes/green/2ffa01f51afb73d2.png" />
         </a>
         <br />
      </div>
      <div align="center">Copyright 2010-2012 673573.com All Rights Reserved</div>
   </div>
</body>

</html>
