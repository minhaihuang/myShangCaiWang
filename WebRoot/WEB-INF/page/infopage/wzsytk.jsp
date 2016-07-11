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
            <div id="480">
               <font size="3"> </font>
               <p>
                  <font size="3"><br> <font face="宋体"><strong><font color="#38761d">网站使用条款<br></font></strong><br>上菜网重视对会员隐私保护，尊重会员个人隐私是本站的一项基本政策。您提供的登记资料及本网站保留的有关您的若干其他个人资料将受到中国有关隐私的法律保护。<br>为了帮助您了解我们将如何搜集、应用及保护您所提供的个人信息，上菜网谨以下声明，说明我们的隐私权保护政策 (Privacy Policy) 。 <br>以下内容将告诉您， 上菜网在网站内所搜集的数据、运用方式，以及查询或更正的方法等事项。<br> <br></font><font face="宋体"><strong><font color="#ff0000">1.上菜网从何处搜集我的个人资料？<br></font><br></strong>当您填写完会员注册申请，即成为上菜网的会员，我们会从注册信息中获得您的个人信息，包括姓名、电子邮箱、生日、性别、住址、电话、等其它相关数据。您填写的数据愈详细，我们愈能提供您所需求的相关讯息及服务。成为会员后，您将获得一个上菜网的会员账号，并可由该账号充分使用上菜网提供的所有会员服务。<br> <br></font><font face="宋体"><font color="#ff0000"><strong>2.上菜网如何使用我的数据？<br></strong></font>&nbsp;<br>原则上，使用者进入上菜网时，并不需要输入个人数据，除非明确告知。当您参与我们的在线活动或网络调查时，您只需提供用户名及登录密码，<br>其它所需之数据即会由上菜网数据库提供。除了上述，我们会记录使用者上站的的浏览活动等数据，但是这些数据仅供作流量分析和网络行为调查，以便于改善我们的网站服务质量，这些数据也只是总量上的分析，不会和特定个人相连系。<br>除了您主动提供的个人数据之外，如果您与上菜网的客服人员联系，或是向客服中心反应您的意见，我们会保存您的通讯记录。<br>为了尊重会员，公司一定不会在未经会员同意授权的情况下公开、编辑及透露会员的个人信息。本站不公开会员个人信息，除以下情况外：<br>（1）会员授权本站透露这些信息。<br>（2）相应法律及程序要求本站提供会员个人资料。<br>（3）在紧急情况下竭力维护会员个人和社会大众隐私安全。<br>（4）符合其他相关要求。<br>
                                                      <br></font><font face="宋体"><font color="#ff0000"><strong>3.&nbsp; 有以下行为的会员将被取消会员资格。<br></strong></font><br>1) 违反注册条款<br>2) 提供虚假个人资料<br>3) 会员有损公司利益的行为<br>4) 违反中国的法律、法规、违反互联网相关规定的行为<br>5) 将会员帐号用于出售、拍卖等，拿会员帐号当作商品进行交易的行为<br>6) 出借、转让 会员帐号给其他会员等不恰当行使会员权利的行为<br>7) 通过盗取密码、诈骗等不正当手段获得会员帐号的行为</font></font>
               </p>
               <p>
                  <font face="宋体" size="3"></font>&nbsp;
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
