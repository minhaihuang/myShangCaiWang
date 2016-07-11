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
            <div id="421">
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font color="#38761d" size="3"><strong><br>支付方式</strong></font>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <strong><font color="#38761d" size="3"></font></strong>
                  </span>
                  &nbsp;
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <strong><font color="#38761d" size="3">上菜网（<a href="/myShangCaiWang/">www.myShangCaiWang.com</a>）<font color="#000000">提供多种支付方式。</font></font></strong>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font color="#ff0000" face="宋体" size="3"></font>
                  </span>
                  &nbsp;
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font color="#ff0000" face="宋体" size="3"><strong>（一）货到付款</strong></font>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;"></span>
                  <span style="font-family: 宋体;">
                     <font size="3"></font>
                  </span>
                  &nbsp;
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font size="3">接受货到付款（现金或带有银联标志的银行卡刷卡支付）<br> <strong><font color="#ff0000"><br>（二）使用上菜卡支付<br></font></strong></font>
                  </span>
               </p>
               <font size="3"> </font>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font size="3"><font size="3"><span style="font-family: 宋体;">使用上菜卡直接支付。在结算时选择此支付方式，您的货款将直接从您的上菜卡帐户余额中扣除。</span><font face="宋体"> <br> <a href="https://polypay.673573.com/cardserviceveg/" target="_blank" type="url">
                                 <font color="#cc0000"><strong>余额查询请点击这里。</strong></font>
                              </a></font></font><strong><font color="#ff0000"><font color="#cc0000"> </font> <img src="/myShangCaiWang/images/20160106/d748bdb9f4a9ca21.jpg"><br> <br>（三）农业银行网银在线支付</font><br></strong>如果您拥有农业银行借记卡与信用卡，您可以在结算货款时使用农业银行卡支付。</font>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span lang="EN-US">
                     <o:p>
                        <font face="宋体" size="3"></font>
                     </o:p>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font color="#ff0000" size="3"></font>
                  </span>
                  &nbsp;
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font color="#ff0000" size="3"><strong>（四）招商银行网银在线支付</strong></font>
                  </span>
                  <span style="font-family: 宋体;">
                     <font size="3"></font>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font color="#000000" size="3">如果您拥有招商银行账户，您可以在结算货款时使用招商银行卡支付。(招商银行在线支付平台支持非招行卡支付:中国工商银行、中国农业银行、中国银行、中国建设银行、交通银行、中信银行、中国光大银行、华夏银行、中国民生银行、广东发展银行、深圳发展银行、兴业银行、浦发银行、浙商银行、北京银行、宁波银行、平安银行、杭州银行、南京银行、北京农村商业银行、中国邮政储蓄银行、东亚银行)。</font>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font size="3"></font>
                  </span>
                  <span style="font-family: 宋体;"></span>
                  <span style="font-family: 宋体;">
                     <font color="#ff0000" size="3"></font>
                  </span>
                  &nbsp;
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font color="#ff0000" size="3"><strong>（五）在线支付宝付款</strong></font>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font size="3">如果您拥有支付宝账号，您可以在结算货款时使用支付宝进行支付。</font>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;"></span>
                  &nbsp;
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font size="2"><strong><span style="font-family: 宋体;">1）</span> <span style="font-family: 宋体;">支付宝支持以下各银行卡：</span></strong></font>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font color="#000000" size="2"><span style="color: black; font-family: 宋体;">
                        <strong> <img src="/myShangCaiWang/images/20160106/750e7c60817cb20f.png"><br></strong>
                     </span></font>
               </p>
               <font size="3"><span style="color: black; font-family: 宋体;">
                     <font color="#ff0000"><strong> </strong></font>
                  </span></font>
               <p>
                  <font size="3"><font color="#ff0000"><strong><font color="#000000" size="2">2）更多关于支付宝账户充值问题，请点击 <a href="http://help.alipay.com/lab/index.htm" target="_blank">
                                 <img src="/myShangCaiWang/images/20160106/dbda86ec0b291994.jpg">
                              </a></font></strong></font></font>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span lang="EN-US">
                     <o:p>
                        <font color="#ff0000" face="宋体" size="3"></font>
                     </o:p>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font size="3"><span style="color: black; font-family: 宋体;">
                        <font color="#ff0000"><strong>（六）兑换券支付</strong></font>
                     </span></font>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font face="宋体" size="3"><span style="color: black; font-family: 宋体;"></span></font>&nbsp;
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font size="3"><font face="宋体"><span style="color: black; font-family: 宋体;"></span> <span lang="EN-US" style="color: black; font-family: verdana;">
                           <o:p></o:p>
                        </span></font></font>
               </p>
               <span style="color: black; font-family: 宋体;">
                  <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                     <span style='color: black; font-family: 宋体; mso-ascii-font-family: "Times New Roman"; mso-hansi-font-family: "Times New Roman";'>
                        <font size="3">如果您拥有本公司的兑换券，您可以在首页中点击“兑换券专区”输入卡号、验证码，领取相应的商品。并在签收货品后，将兑换券交给快递人员。请务必妥善保管好您的兑换券。</font>
                     </span>
                  </p>
                  <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                     <span style='color: black; font-family: 宋体; mso-ascii-font-family: "Times New Roman"; mso-hansi-font-family: "Times New Roman";'></span>
                     &nbsp;
                  </p>
               </span>
               <font face="宋体" size="3"><span style="color: black; font-family: 宋体;"></span></font>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font size="3"><font face="宋体"><span style="color: black; font-family: 宋体;"></span> <span lang="EN-US" style="color: black; font-family: verdana;">
                           <o:p></o:p>
                        </span></font></font>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span lang="EN-US" style="color: black; font-family: verdana;">
                     <o:p>
                        <font face="宋体" size="3"></font>
                     </o:p>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font size="3"><span style="color: black; font-family: 宋体;">
                        <font color="#ff0000"><strong>（七）线上交易，线下支付</strong></font>（<strong>针对企业团购、批发</strong>）
                     </span></font>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font face="宋体" size="3"><span style="color: black; font-family: 宋体;"></span></font>&nbsp;
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <font size="3"><font face="宋体"><span style="color: black; font-family: 宋体;"></span> <span lang="EN-US" style="color: black; font-family: verdana;">
                           <o:p></o:p>
                        </span></font></font>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font size="3">如果您是企业、单位或团购用户，您可以选择在本公司网站选购完商品之后在线下进行转账、汇款、支票等支付方式进行支付。</font>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;">
                     <font size="3">具体请联系客服人员：4006-673-573。</font>
                  </span>
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <span style="font-family: 宋体;"></span>
                  &nbsp;
               </p>
               <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                  <img src="/myShangCaiWang/images/20160106/b676a480d2c29297.png">
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
