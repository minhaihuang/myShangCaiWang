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
            <div id="444">
               <p>
                  <br> <font color="#38761d" face="宋体" size="3"><strong>售后服务</strong></font>
               </p>
               <p>
                  <font color="#ff0000" face="宋体" size="3"><strong>提示：</strong></font>
               </p>
               <p>
                  <font face="宋体" size="3">客户签收商品时请遵照以下要求进行验货，检查无误后再行签收。如发现问题可以当着快递人员的面与上菜网的客服中心联系（4006-673-573）。签收后上菜网将不再为货物问题承担售后责任。<br>如需办理退换货，请保存好商品及其包装、票据和赠品，作为办理相关业务的依据，并需事先与上菜网客服中心取得确认。 </font>
               </p>
               <p>
                  <font color="#ff0000" face="宋体" size="3"><strong>上菜网验货与拒收政策</strong></font>
               </p>
               <p>
                  <font face="宋体" size="3">为保障您的权益，请您在收到商品时与配送员当面核对商品的种类、数量、规格、赠品、金额、外包装等是否与订单一致，准确无误后再进行签收。签收后，“上菜网”不再为以上问题负责。如当面验收时发现有质量问题：如产品变质、外表破损等，请联系我们的客服人员（4006-673-573），我们的客服人员在确认详细后予以更换。</font>
               </p>
               <p>
                  <font face="宋体" size="3">如果您在签收前已确认上述问题无误，请您在“上菜网”发货单上签字确认。如果订单商品含有密封包装，且拆封后无质量问题时，不可拒收。</font>
               </p>
               <p>
                  <font face="宋体" size="3">如产生拒收情况，已支付的货物款项将原封不动的退回到您的账户。对于“上菜网”原因造成的订单拒收，客户无需支付配送费；客户原因造成的订单拒收，“上菜网”将收取您的单程配送费。</font>
               </p>
               <p>
                  <font face="宋体" size="3"><font color="#ff0000"><strong>退换货政策<br></strong></font> <br>若客户发现商品存在质量问题应立即停止使用，并立刻联系“上菜网”客服中心。经检测确属质量问题的，客户可以选择退换货，建议选择换货，“上菜网”将提供与原商品同规格以一换二的新品进行更换。</font>
               </p>
               <p>
                  <font face="宋体" size="3">食用类产品，客户应在检查产品质量满意后，进行签收。如签收后客户发现质量问题，上菜网不承担退换货责任。</font>
               </p>
               <p>
                  <font face="宋体" size="3">粮油干货、礼品卡券等，客户如发现产品质量问题，在未开封的情况下，上菜网承担退换货。如开封后，上菜网不予退换货。</font>
               </p>
               <p>
                  <font face="宋体" size="3">客户在收到产品时，请仔细检查包装状况，若出现液体渗漏或包装严重破损，可当场要求退换货。<br>&nbsp;&nbsp; <br> <font color="#ff0000"><strong>存在以下情形之一的，“上菜网”不承担退换货责任：</strong></font></font>
               </p>
               <p>
                  <font face="宋体" size="3">1.如因客户个人原因造成的商品损坏，或客户已大量食用货物，我们将不予退换。</font>
               </p>
               <p>
                  <font face="宋体" size="3">2.任何非购自“上菜网”的商品。</font>
               </p>
               <p>
                  <font face="宋体" size="3">3.因客户使用或保管不当导致出现包装破损或质量问题的商品。</font>
               </p>
               <p>
                  <font face="宋体" size="3">4.任何因客户原因导致超过保质期的商品。</font>
               </p>
               <p>
                  <font face="宋体" size="3">5.通常情况下，一张订单只能进行一次退换货操作，所以为了确保您的权益，请您考虑周全后与我们联系。上菜网不接受二次换货。</font>
               </p>
               <p>
                  <font face="宋体" size="3">6.觉得与图片信息不符的不能退换货。图片及信息仅供参照，因拍摄灯光及不同显示器色差等问题可能造成商品图片与实物有一定色差，一切以实物为准。</font>
               </p>
               <p>
                  <font face="宋体" size="3">7. 商品的外包装、附件、说明书不完整或者发票、检测单有涂改、缺少的情况不可退换。<br></font>
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