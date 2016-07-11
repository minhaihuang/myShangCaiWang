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
            <div id="425">
               <p>
                  <font size="3"><font face="宋体"><font size="4"><strong><font color="#38761d"><br>配送方式<br></font></strong><br></font><font size="2"><strong>您在<font color="#38761d">上菜网</font>（
                        </strong></font> <a href="/myShangCaiWang">
                           <font size="2"><strong>www.myShangCaiWang.com</strong></font>
                        </a><font size="2"><strong>）购买的商品会通过国际知名的雅玛多（中国）运输有限公司旗下的黑猫宅急便等第三方物流送货上门。</strong></font></font></font>
               </p>
               <p>
                  <font face="宋体" size="2"><strong>由于生鲜食品的特殊属性，请您务必在快递人员面前开箱验收货物后签字验收，客户签收后，上菜网对商品可能发生的品质变化不承担法律责任。</strong></font>
               </p>
               <p>
                  <font color="#38761d" face="宋体" size="3"><strong>详情请咨询客服人员：4006-673-573。</strong></font>
               </p>
               <p>
                  <font size="3"><font face="宋体"> <img width="1120" height="649" style="width: 629px; height: 378px;" src="/myShangCaiWang/images/20160106/1abeff2d8ee392ba.png"></font></font>
               </p>
               <font face="宋体" size="3">
                  <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                     <span lang="EN-US">
                        <font face="宋体" size="2"><span lang="EN-US">
                              <strong>上海地区订单每日中午12:00前下单，48小时内发货（您也可以在配送方式确认时选择您希望的收货时间，我们会尽快为您安排发货。</strong>
                           </span></font>
                     </span>
                     <span lang="EN-US">
                        <font face="宋体" size="2"><span lang="EN-US">
                              <strong>试运行期间，您可以指定送达时间，分为上午，下午。）<br> <br> <font color="#ff0000">试运行期间双休日产生的订单统一在下周一发货，不便之处敬请谅解。</font></strong>
                           </span></font>
                     </span>
                  </p>
                  <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                     <span lang="EN-US">
                        <font face="宋体" size="2"><span lang="EN-US"></span></font>
                     </span>
                     &nbsp;
                  </p>
                  <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                     <span lang="EN-US">
                        <font face="宋体" size="2"><span lang="EN-US">
                              <strong>注：交通管制，自然灾害或其他不可抗拒因素导致配送延迟不在服务承诺涵盖范围内。</strong>
                           </span></font>
                     </span>
                  </p>
                  <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                     <span lang="EN-US">
                        <font face="宋体" size="2"><span lang="EN-US"></span></font>
                     </span>
                     &nbsp;
                  </p>
                  <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                     <span lang="EN-US">
                        <font face="宋体" size="2"><span lang="EN-US">
                              <strong>上海地区配送费用设置：</strong>
                           </span></font>
                     </span>
                  </p>
                  <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                     <span lang="EN-US">
                        <font face="宋体" size="2"><span lang="EN-US">
                              <strong>1.订单满200元免收运费，低于200元的订单收取15元快递费。<br>2.以下法定节假日（元旦、春节、劳动节、国庆节）不配送，顺延至节后第一天配送。 </strong>
                           </span></font>
                     </span>
                  </p> <span lang="EN-US">
                     <font face="宋体" size="3"><span lang="EN-US">
                           <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                              <font size="2"><strong>注： <br>积分兑换礼品不单独配送，只随商品订单一起配送。 </strong></font>
                           </p>
                        </span></font>
                     <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                        <font face="宋体" size="3"></font>
                     </p>
                  </span>
               </font>
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