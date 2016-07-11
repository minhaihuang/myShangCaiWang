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
            <div id="886">
               <font face="宋体" size="3">
                  <p>
                     <br> <font color="#38761d"><strong>联系我们<br> <br></strong></font><font color="#ff0000"><strong>上海上蔬电子商务有限公司<br></strong></font><font size="2"></font>
                  </p>
                  <p>
                     <strong><font size="2">地址：上海市南石二路132号<br>邮编：200062<br>电话：021-32553660(总机) </font></strong>
                  </p>
               </font>
               <p>
                  <font face="宋体" size="3"><strong><font size="2">传真：021-32553665<br>网址： </font></strong></font>
                  <a href="/myShangCaiWang">
                     <font face="宋体" size="2"><strong>www.myShangCaiWang.com</strong></font>
                  </a>
                  <br> <font face="宋体" size="2"><strong>邮箱：</strong></font> <a href="mailto:shangshu@673573.com">
                        <font face="宋体" size="2"><strong>shangshu@673573.com</strong></font>
                     </a> <font face="宋体"><strong><font size="2"> <br> <br></font></strong><strong><font size="2"><font color="#38761d"></font></font></strong></font>
               </p>
               <p>
                  <font face="宋体"><strong><font size="2"><font color="#38761d">业务联络<br> <br></font>商品合作：021-32553661转8033（工作日9:00-17:00）<br>网站合作：021-32553660转8036（工作日9:00-17:00）<br>市场推广：021-32553660转8036（工作日9:00-17:00）</font></strong></font>
               </p>
               <p>
                  <strong style="font-family: 宋体;"><font size="2">销售总监：021-32553660转8005或18930851055（周一至周日 9:00-18:00）</font></strong>
               </p>
               <p>
                  <font face="宋体"><strong><font size="2"><br></font></strong></font>
               </p>
               <p>
                  <font face="宋体"><strong><font size="2"><br>客户服务：4006-673-573(周一至周日9:30-18:00)</font></strong></font>
               </p>
               <font face="宋体"> </font>
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