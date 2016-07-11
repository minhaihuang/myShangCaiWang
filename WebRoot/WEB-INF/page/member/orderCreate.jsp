<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
      <form id="f_order_pay" action="/myShangCaiWang/" method="post" target="_blank">
         <input name="order_id" type="hidden" value="20160105142518">
            <input name="money" id="hidden_money" type="hidden" value="28">
               <input name="currency" type="hidden" value="CNY">
                  <input name="cur_money" id="hidden_cur_money" type="hidden" value="28">
                     <input name="cur_rate" type="hidden" value="1.0000">
                        <input name="cur_def" type="hidden" value="CNY">
                           <div class="success clearfix pushdown-2">
                              <h3>恭喜！您的订单已经提交！请在3天内完成付款，否则订单会被自动取消！</h3>
                           </div>
                           <h3>订单信息</h3>
                           <div class="ColColorBlue" style="padding: 5px; border: 1px solid rgb(204, 204, 204); border-image: none;">
                              <span>订单编号：</span>
                              <strong class="font14px"><s:property value="%{#order.orderId}"/></strong> &nbsp;&nbsp;[
                              <a href="${pageContext.request.contextPath }/member/orderAction_orderDetail.action">查看订单详细信息»</a>
                              ]
                              <div id="billNo" style="display: none;"></div>
                           </div>
                           <div class="division" style="padding: 15px;">
                              <span>订单金额:</span>
                              <strong class="hueorange fontcolorRed font20px" id="span_amount">￥${session.oldTotalPrice }</strong>
                           </div>
                           <h3>订单支付</h3>
                           <div class="ColColorBlue" style="padding: 5px; border: 1px solid rgb(204, 204, 204); border-image: none;">
                              您选择了： <strong class="hueorange fontcolorRed font14px">支付宝付款[即时到帐]</strong>
                              <a href="/myShangCaiWang/">[ 选择其他支付方式 ]</a>
                           </div>
                           <div class="division">
                              <input name="payment[payment]" type="hidden" value="38">
                                 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tbody>
                                       <tr>
                                          <td width="50%">
                                             <div class="customMessages">请选择支付方式。</div>
                                          </td>
                                       </tr>
                                       <tr>
                                          <td><input class="actbtn btn-pay" id="btn-pay" type="submit" value="立刻支付"></td>
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