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
            <div id="404">
               <font color="#274e13"></font>
               <p>
                  <br> <strong><font color="#38761d" face="宋体" size="3">我们的团队</font></strong>
               </p>
               <p>
                  <font face="宋体"><font color="#000000" size="3">&nbsp; &nbsp;“上菜网”（</font> <a href="/myShangCaiWang">
                        <font color="#000000" size="3">www.myShangCaiWang.com</font>
                     </a><font color="#000000" size="3">）的运营团队凭借对新生代都市白领群体们居家生活方式的深刻理解和洞察，从产品品质保障、供应链整合、物流配送及项目背后所蕴含的“让利于民、关爱民生”等品牌理念与价值入手，竭力为广大市民提供安全、健康、便捷、实惠的寓意高品位生活的生鲜食品互联网零售服务。</font></font>
               </p>
               <p>
                  <font face="宋体"><font color="#000000" size="3">&nbsp; &nbsp; 今天，我们期望通过上海蔬菜集团强大的农产品供应链、物流及品质整合能力，和最为便捷高效的电子商务经营手段，将“上菜网”（</font> <a href="/myShangCaiWang">
                        <font color="#000000" size="3">www.myShangCaiWang.com</font>
                     </a><font color="#000000" size="3">）打造成国内领先的农副产品网络零售与服务商。<br></font></font><font color="#38761d" face="宋体"></font>
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;">
                  <font color="#38761d" face="宋体"><font face="宋体"><strong><font color="#274e13"><font size="3"><font color="#ff0000">我们的优势</font>&nbsp;&nbsp;</font></font></strong></font></font>
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;">
                  <font color="#38761d" face="宋体"><font face="宋体"><strong><font color="#274e13" size="3"></font></strong></font></font>&nbsp;
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;">
                  <font color="#38761d" face="宋体"><font color="#38761d" face="宋体" size="3"><strong>安全检测，品质溯源，品质保证</strong></font></font>
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;">
                  <font color="#38761d" face="宋体"><font color="#000000" size="3">&nbsp; &nbsp; 上菜网严格的食品安全检测，全程的食品质量追溯，为您提供新鲜、安全、健康的食材。</font></font>
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;">
                  <font color="#38761d" face="宋体"><font color="#000000" size="3"></font></font>&nbsp;
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;">
                  <font color="#38761d" face="宋体"><strong><font color="#38761d" size="3">基地资源，快速分销，留住新鲜</font></strong></font>
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;" dir="ltr">
                  <font color="#38761d" face="宋体"><font color="#000000" face="宋体" size="3">&nbsp; &nbsp; 在全国范围内建有150多个蔬菜精品基地，基地总面积超过160万亩，有力的保证了集团的新鲜蔬菜供给。高速运输，快速分销，把新鲜健康留住。</font></font>
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;" dir="ltr">
                  <font color="#38761d" face="宋体"><font size="3"></font></font>&nbsp;
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;" dir="ltr">
                  <font color="#38761d" face="宋体"><strong><font size="3">强效整合，品质生活，为您打造</font></strong></font>
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;" dir="ltr">
                  <font color="#38761d" face="宋体"><font face="宋体"><font color="#000000" size="3">&nbsp; &nbsp; 我们期望通过上海蔬菜集团强大的农产品供应链、物流及品质整合能力，和最为便捷高效的电子商务经营手段，将“上菜网”（</font> <a href="/myShangCaiWang/">
                           <font color="#000000" face="宋体" size="3">www.673573.com</font>
                        </a><font color="#000000"><font size="3"><font face="宋体">）打造成国内领先的农副产品网络零售与服务商，</font>满足社会及广大市民在这个与时俱近的年代里对高品质生活的追求。</font></font></font></font>
               </p>
               <p class="STYLE1" style="margin: 0cm 0cm 0pt;" dir="ltr">
                  <img src="/myShangCaiWang/images/20160106/09eb4205362d1758.jpg">
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
