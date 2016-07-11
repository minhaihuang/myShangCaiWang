<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
   <div class="AllWrapInside">
      <div class="CartWrap">
         <div class="CartNav clearfix">
            <div class="floatLeft">
               <img alt="购物流程--确认订单填写购物信息" src="/myShangCaiWang/themes/green/cartnav-step4.gif">
            </div>
            <div class="floatRight">
               <img src="/myShangCaiWang/themes/green/cartnav-cart.gif">
            </div>
         </div>
      </div>
      <form id="f_order_pay" action="/myShangCaiWang/" method="post">
         <div class="CartWrap">
            <div class="FormWrap " style="background: rgb(245, 244, 236); border: 1px solid rgb(229, 221, 199); border-image: none;">
               <table width="100%" class="liststyle data" border="0" cellspacing="0" cellpadding="0">
                  <colgroup>
                     <col class="span-auto ColColorBlue">
                        <col class="span-5 ColColorGray">
                           <col class="span-4 ColColorGray ">
                              <tbody>
                                 <tr>
                                    <td>
                                       <h4>订单编号：<s:property value="%{#session.order.orderId}"/></h4>
                                    </td>
                                    <td>下单日期：<s:property value="%{#session.order.createDate}"/></td>
                                    <td>状态：<s:property value="%{#session.order.status}"/></td>
                                 </tr>
                              </tbody>
               </table>
            </div>
            <div class="FormWrap " style="background: rgb(245, 244, 236); border: 1px solid rgb(229, 221, 199); border-image: none;">
               <h4>购买的商品</h4>
               <div class="division">
                  <table width="100%" class="liststyle" cellspacing="0" cellpadding="3">
                     <colgroup>
                        <col class="span-auto">
                           <col class="span-auto">
                              <col class="span-2">
                                 <col class="span-2">
                                    <col class="span-3">
                                       <col class="span-2 ColColorOrange">
                                          <thead>
                                             <tr>
                                                <th>图片</th>
                                                <th>商品名称</th>
                                                <th>商品积分</th>
                                                <th>价格</th>
                                                <th>数量</th>
                                                <th>小计</th>
                                             </tr>
                                          </thead>
                                          <tbody>
                                          
                                          <s:iterator value="%{#session.orderCart.cartItemList}" var="cartItem">
                                          
                                             <tr>
                                                <td>
                                                   <div class="product-list-img" style="width: 50px; height: 50px;" ghref="" isrc="/myShangCaiWang/images/20160106/ff7447bc296c9a15.jpg">
                                                      <a style="border: 0px currentColor; border-image: none;" href="${pageContext.request.contextPath }/goods/goodsAction_goodsDetail.action?goodsId=<s:property value="%{#cartItem.goods.goodsId}"/>" target="_blank">
                                                         <img width="50" height="50" style="cursor: pointer;" src="${pageContext.request.contextPath }<s:property value="%{#cartItem.goods.goodsMinImgPath}"/>"/>
                                                      </a>
                                                   </div>
                                                </td>
                                               
                                                <td><a href="/myShangCaiWang/" target="_blank">  <s:property value="%{#cartItem.goods.goodsName}"/></a></td>
                                                <td> <s:property value="%{#cartItem.goods.grade}"/>&nbsp;</td>
                                                <td>￥ <s:property value="%{#cartItem.goods.price}"/></td>
                                                <td> <s:property value="%{#cartItem.goodsCount}"/></td>
                                                <td>￥${cartItem.goods.price * cartItem.goodsCount }</td>
                                             </tr>
                                             
                                             </s:iterator>
                                             
                                          </tbody>
                  </table>
               </div>
               <h4>收货人信息</h4>
               <div class="division">
                  <table width="100%" class="liststyle data" cellspacing="0" cellpadding="0">
                     <tbody>
                     
                        <tr>
                           <th>收货人姓名:</th>
                           <td><s:property value="%{#session.address.userName}"/></td>
                           <th>收货人Mail:</th>
                           <td><s:property value="%{#session.user.email}"/></td>
                        </tr>
                        <tr>
                           <th>配送地区:</th>
                           <td>上海-上海市-卢湾区</td>
                           <th>联系电话:</th>
                           <td><s:property value="%{#session.address.mobile}"/></td>
                        </tr>
                        <tr>
                           <th>收货人邮编:</th>
                           <td><s:property value="%{#session.address.postNumber}"/></td>
                           <th>送货时间:</th>
                           <td>任意日期 任意时间段</td>
                        </tr>
                        <tr>
                           <th>配送方式:</th>
                           <td>黑猫宅急便</td>
                           <th>付款方式:</th>
                           <td>支付宝付款[即时到帐] &nbsp;</td>
                        </tr>
                        <tr>
                           <th>商品重量:</th>
                           <td>0.000 g</td>
                           <th>支付币别:</th>
                           <td>人民币</td>
                        </tr>
                        <tr>
                           <th valign="top">收货人地址:</th>
                           <td valign="top" colspan="3"><s:property value="%{#session.address.location}"/></td>
                        </tr>
                        <tr>
                           <th valign="top">订单附言:</th>
                           <td valign="top" colspan="3"><s:property value="%{#session.order.comment}"/></td>
                        </tr>
                     </tbody>
                  </table>
               </div>
            </div>
            <table width="100%" class="liststyle data" border="0" cellspacing="0" cellpadding="0">
               <colgroup>
                  <col class="span-auto ColColorGray">
                     <col class="span-4 ColColorOrange textright">
                        <tbody>
                           <tr>
                              <th>商品总金额:</th>
                              <td>￥${session.oldTotalPrice }</td>
                           </tr>
                           <tr>
                              <th>配送费用:</th>
                              <td>￥0</td>
                           </tr>
                           <tr>
                              <th>您可获得积分:</th>
                              <td>${session.totalGrade }</td>
                           </tr>
                           <tr>
                              <th>订单总金额:</th>
                              <td class="price1">￥${session.oldTotalPrice }</td>
                           </tr>
                        </tbody>
            </table>
         </div>
         <input name="order_id" type="hidden" value="20160105142518">
            <input name="money" type="hidden" value="28">
               <input name="currency" type="hidden" value="CNY">
                  <input name="cur_money" type="hidden" value="28">
                     <input name="cur_rate" type="hidden" value="1.0000">
                        <input name="cur_def" type="hidden" value="CNY">
                           <input name="payment[payment]" type="hidden" value="38">
                              <div class="FormWrap ">
                                 <table width="100%" class="liststyle data" border="0" cellspacing="0" cellpadding="0">
                                    <colgroup>
                                       <col class="span-6 ColColorBlue">
                                          <col class="span-5 ColColorGray textcenter">
                                             <col class="span-auto ColColorGray textcenter">
                                                <tbody>
                                                   <tr>
                                                      <td><strong>共需支付:</strong> <span class="hueorange fontcolorRed font20px">￥${session.oldTotalPrice }</span></td>
                                                      <td><input class="actbtn btn-pay" type="submit" value="立刻支付"></td>
                                                   </tr>
                                                </tbody>
                                 </table>
                              </div>
      </form>
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
