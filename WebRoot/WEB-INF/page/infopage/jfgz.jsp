<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
   <div class="AllWrapInside clearfix">
      <div class="mainColumn pageMain pagear">
         <div class="AllWrapInside clearfix">
            <div class="mainColumn pageMain pagear">
               <div style="width: 180px; overflow: hidden; float: left;">
                  <div id="410">
                     <div class="about">
                        <div class="shopping-tt">购物指南</div>
                        <ul>
                           <li><a href="xhyzc.jsp">新会员注册</a></li>
                           <li><a href="rhxdd.jsp">如何下订单</a></li>
                           <li><a href="cxwddd.jsp">查询我的订单</a></li>
                           <li><a href="zxkf.jsp">在线客服</a></li>
                           <li><a href="cjwt.jsp">常见问题</a></li>
                        </ul>
                     </div>
                  </div>
                  <div id="502">
                     <div class="about">
                        <div class="about-tit">公司简介</div>
                        <ul>
                           <li><a href="gyssjt.jsp">关于上蔬集团</a></li>
                           <li><a href="qxsc.jsp">旗下市场</a></li>
                           <li><a href="wmdtd.jsp">我们的团队</a></li>
                           <li><a href="lxwm.jsp">联系我们</a></li>
                        </ul>
                     </div>
                  </div>
                  <div id="506">
                     <div class="about">
                        <div class="pay-tt">支付/配送方式</div>
                        <ul>
                           <li><a href="zffs.jsp">支付方式</a></li>
                           <li><a href="psfs.jsp">配送方式</a></li>
                           <li><a href="psfw.jsp">配送范围</a></li>
                           <li><a href="ddcx.jsp">订单查询</a></li>
                        </ul>
                     </div>
                  </div>
                  <div id="507">
                     <div class="about">
                        <div class="server-tt">服务说明</div>
                        <ul>
                           <li><a href="qyhgsm.jsp">企业惠购说明</a></li>
                           <li><a href="xqpg.jsp">小区拼购</a></li>
                           <li><a href="hydjzd.jsp">会员等级制度</a></li>
                           <li><a href="jfgz.jsp">积分规则</a></li>
                           <li><a href="kqgn.jsp">卡券功能</a></li>
                           <li><a href="shfw.jsp">售后服务</a></li>
                           <li><a href="wzsytk.jsp">网站使用条款</a></li>
                           <li><a href="scwyfkzc.jsp">上菜网预付卡章程</a></li>
                           <li><a href="sckthkqb.jsp">上菜卡提货卡区别</a></li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div style="overflow: hidden; margin-left: 190px;">
                  <div id="437">
                     <p>
                        <br> <font color="#38761d" size="3"><strong>积分规则</strong></font>
                     </p>
                     <p>
                        <font color="#ff0000" size="3"><strong>1.积分说明:</strong></font>
                     </p>
                     <p>
                        <font size="3">积分是为了答谢支持“上菜网”的会员而制定的一种奖励方式，您可以进入会员中心查看积分明细。凡是在上菜网网站购物消费成功，即可以获得相关积分，购买金额越高，获得的积分越多。</font>
                     </p>
                     <p>
                        <font color="#ff0000" size="3"><strong>2.积分规则 </strong></font>
                     </p>
                     <p>
                        <font size="3">(1)购物积分：会员成功购物，获得商品对应积分。（每消费1元积1分，以此类推）<br>注：您需要在收到所订购商品后登录上菜网网站，在“会员中心”—〉“订单查询”中状态若为“已收货”，系统会为您自动加上相应积分。 </font>
                     </p>
                     <p>
                        <font size="3">注：储值卡作为上菜网特殊商品不设置购买积分，即购买礼品卡时不奖励任何积分，但使用储值卡购买其他上菜网商品时可以获得相应的购物积分。</font>
                     </p>
                     <p>
                        <font size="3">(2)其他获取积分的途径：<br>注册成为上菜网会员就能立即获得500积分。 </font>
                     </p>
                     <p>
                        <font color="#ff0000" size="3"><strong>3.积分的用途：</strong></font>
                     </p>
                     <p>
                        <font size="3">a.积分可在积分换礼专区兑换相关的优惠券，用于购买商品时抵扣部分金额，详情请见优惠券专区。<br>b.积分可在积分换礼专区兑换我们提供的礼品（礼品数量以实际库存为准，兑完即止）。 <br> <span style="text-decoration: underline;">
                                    <strong><font color="#ff0000">注意事项：</font></strong>
                                 </span>积分不得出售，转让。 <br>每位会员的注册帐号是唯一的，我们对每个会员单独计算积分，不接受多个会员积分合并计算及使用。 <br>积分不设有效期限，会员在税分换礼专区使用后不得恢复。<br>为保障会员权益，上菜网网站将保留对本积分规则的相关解释权。 </font>
                     </p>
                     <p>
                        <font color="#ff0000" size="3"><strong>4.发生以下情况，将扣除相应积分。</strong></font>
                     </p>
                     <p>
                        <font size="3">如果购物出现退货情况，扣除本次购物所获得的积分。<br>在本站或相关网站上发表故意诽谤或广告性质留言的会员，扣除100分。（情况恶劣者，上菜网保留删除其用户名及相关信息的权利。） </font>
                     </p>
                  </div>
               </div>
            </div>
            <div class="sideColumn pageSide"></div>
         </div>
         <div style="overflow: hidden; margin-left: 190px;">
            <div id="437">
               <p>
                  <br> <font color="#38761d" size="3"><strong>积分规则</strong></font>
               </p>
               <p>
                  <font color="#ff0000" size="3"><strong>1.积分说明:</strong></font>
               </p>
               <p>
                  <font size="3">积分是为了答谢支持“上菜网”的会员而制定的一种奖励方式，您可以进入会员中心查看积分明细。凡是在上菜网网站购物消费成功，即可以获得相关积分，购买金额越高，获得的积分越多。</font>
               </p>
               <p>
                  <font color="#ff0000" size="3"><strong>2.积分规则 </strong></font>
               </p>
               <p>
                  <font size="3">(1)购物积分：会员成功购物，获得商品对应积分。（每消费1元积1分，以此类推）<br>注：您需要在收到所订购商品后登录上菜网网站，在“会员中心”—〉“订单查询”中状态若为“已收货”，系统会为您自动加上相应积分。 </font>
               </p>
               <p>
                  <font size="3">注：储值卡作为上菜网特殊商品不设置购买积分，即购买礼品卡时不奖励任何积分，但使用储值卡购买其他上菜网商品时可以获得相应的购物积分。</font>
               </p>
               <p>
                  <font size="3">(2)其他获取积分的途径：<br>注册成为上菜网会员就能立即获得500积分。 </font>
               </p>
               <p>
                  <font color="#ff0000" size="3"><strong>3.积分的用途：</strong></font>
               </p>
               <p>
                  <font size="3">a.积分可在积分换礼专区兑换相关的优惠券，用于购买商品时抵扣部分金额，详情请见优惠券专区。<br>b.积分可在积分换礼专区兑换我们提供的礼品（礼品数量以实际库存为准，兑完即止）。 <br> <span style="text-decoration: underline;">
                              <strong><font color="#ff0000">注意事项：</font></strong>
                           </span>积分不得出售，转让。 <br>每位会员的注册帐号是唯一的，我们对每个会员单独计算积分，不接受多个会员积分合并计算及使用。 <br>积分不设有效期限，会员在税分换礼专区使用后不得恢复。<br>为保障会员权益，上菜网网站将保留对本积分规则的相关解释权。 </font>
               </p>
               <p>
                  <font color="#ff0000" size="3"><strong>4.发生以下情况，将扣除相应积分。</strong></font>
               </p>
               <p>
                  <font size="3">如果购物出现退货情况，扣除本次购物所获得的积分。<br>在本站或相关网站上发表故意诽谤或广告性质留言的会员，扣除100分。（情况恶劣者，上菜网保留删除其用户名及相关信息的权利。） </font>
               </p>
            </div>
         </div>
      </div>
      <div class="sideColumn pageSide"></div>
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