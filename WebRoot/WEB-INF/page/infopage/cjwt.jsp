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
            <div id="419">
               <p>
                  <span style="color: rgb(102, 102, 102); line-height: 130%; font-family: 宋体; font-size: 10pt; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">
                     <font color="#000000"> <img width="750" height="31" src="/myShangCaiWang/images/20160106/76cb94a407520e91.png"><br>◆ </font><font color="#000000" size="3">购买之前请先阅读 <br> ◎收件人（请您尽可能填写完整的收件人姓名，以便送货公司和您确认。） <br> ◎送货地址（请您填写正确收件地址及大厦名称。如您是送到公司，请填写贵公司名称及部门名称等。） <br> ◎送货时间（我们将尽可能在您指定的时间內送达給您。） <br></font>
                  </span>
                  <span style="color: rgb(102, 102, 102); line-height: 130%; font-family: 宋体; font-size: 10pt; mso-ascii-font-family: Verdana; mso-hansi-font-family: Verdana; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">
                     <font size="3"></font>
                  </span>
               </p>
               <font size="3">
                  <p align="left" class="MsoNormal" style="background: white; margin: 0cm 0cm 0pt; text-align: left; line-height: 130%; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;">
                     <font color="#000000"> <img width="750" height="31" src="/myShangCaiWang/images/20160106/3ff0f028ea13097e.png" /></font>
                  </p>
                  <p align="left" class="MsoNormal" style="background: white; margin: 0cm 0cm 0pt; text-align: left; line-height: 130%; mso-margin-top-alt: auto; mso-margin-bottom-alt: auto; mso-pagination: widow-orphan;">
                     <table class="MsoTableGrid" style="border: currentColor; border-collapse: collapse; mso-border-alt: solid black .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-themecolor: text1;" border="1" cellspacing="0" cellpadding="0">
                        <tbody>
                           <tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes;">
                              <td width="54" valign="top" style="padding: 0cm 5.4pt; border: 1pt solid black; width: 40.85pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1;" rowspan="10">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font size="3"> <img width="66" height="641" style="width: 66px; height: 877px;" src="/myShangCaiWang/images/20160106/0ffa93d9385ab20b.png"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                              <td width="118" valign="top" style="border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: black black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">关于订购流程<span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: black black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">会员登录后，进入商品的订购页面，选择分量，放入购物车，点击立即购买确认收货地址、支付方式等信息后，按订购键，轻松完成。<span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <font size="3"><font color="#000000"><span style='font-family: 宋体; mso-bidi-font-family: "Times New Roman"; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;'>“客服中心”中有详细的购物向导介绍，一目了然；如果您需要更多的咨询请联系客服。</span> <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                             <o:p></o:p>
                                          </span></font></font>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                           <tr style="mso-yfti-irow: 1;">
                              <td width="118" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">关于个人信息<span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">为了维护您的安全，我们不会泄露任何关于您的个人信息。<span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                           <tr style="mso-yfti-irow: 2;">
                              <td width="118" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <font size="3"><font color="#000000"><span style='font-family: 宋体; mso-bidi-font-family: "Times New Roman"; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;'>非会员可以订购商品吗</span> <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                             <o:p></o:p>
                                          </span></font></font>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">不可以，我们实行会员制。注册会员步骤很简单，会员注册后即可订购。<span lang="EN-US" style="mso-font-kerning: 0pt;">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                           <tr style="mso-yfti-irow: 3;">
                              <td width="118" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">怎样取消订单<span lang="EN-US">
                                                ?
                                                <span style="mso-font-kerning: 0pt;">
                                                   <o:p></o:p>
                                                </span>
                                             </span></font></font>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <font size="3"><font color="#000000"><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">a)</span> <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                             订购未支付状态的时候，
                                             <span lang="EN-US">3</span>
                                             天之内收不到您的货款，系统自动为您取消订单。
                                             <span lang="EN-US">
                                                <o:p></o:p>
                                             </span>
                                          </span></font></font>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <font size="3"><font color="#000000"><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">b)</span> <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                             未付款状态，会员因个人原因需要取消订单，可以进入“会员中心”
                                             <span lang="EN-US">-</span>
                                             〉“我的订单”中点击取消。
                                             <span lang="EN-US">
                                                <o:p></o:p>
                                             </span>
                                          </span></font></font>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <font size="3"><font color="#000000"><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">c)</span> <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                             已付款未发货的时候，请及时联系客服我们会按照您要求的退款方式退还资金并取消订单。
                                             <span lang="EN-US">
                                                <o:p></o:p>
                                             </span>
                                          </span></font></font>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <font size="3"><font color="#000000"><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">d)</span> <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                             已发货的订单是不可以更改及任意取消，若由于特殊原因必须取消时对于其发生的费用（配送费、空运费、关税等涉及的费用）会员需要承担。请深思熟虑之后再下订单。
                                             <span lang="EN-US">
                                                <o:p></o:p>
                                             </span>
                                          </span></font></font>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">注： 订单状态随时都能登陆“我的帐户”中查看您的订单状态，具体的订单状态要以上菜网后台系统为准。<span lang="EN-US">
                                                <o:p></o:p>
                                             </span>
                                       </font></font>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                           <tr style="mso-yfti-irow: 4;">
                              <td width="118" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <font size="3"><font color="#000000"><span style='font-family: 宋体; mso-bidi-font-family: "Times New Roman"; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;'>我买的商品有质量问题，怎么办？</span> <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                             <o:p></o:p>
                                          </span></font></font>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font color="#000000" size="3">您收到的产品在质量满意保证期内因质量问题产生的退换货需求，请联系上菜网客服退换货事宜，我们将在确认商品存在质量问题后提供退换货服务。</font>
                                       <span lang="EN-US">
                                          <br>
                                       </span>
                                       <font size="3"><font color="#000000">您收到的产品若超出质量满意保证期限，我们需要鉴定为质量问题方可退换。 <span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                           <tr style="mso-yfti-irow: 5;">
                              <td width="118" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">如何获得发票？<span lang="EN-US" style="mso-font-kerning: 0pt;">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">如您需要发票，请您在订单留言中注明。<span lang="EN-US" style="mso-font-kerning: 0pt;">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                           <tr style="mso-yfti-irow: 6;">
                              <td width="118" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">我的订单已经下了几天了，为什么还收不到货？<span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">如遇此类情况，建议您可以在“我的订单<span lang="EN-US">-</span>订单查询”内查询订单状态，如有疑问可联系网站客服<span lang="EN-US">
                                                4006-673-573
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                           <tr style="mso-yfti-irow: 7;">
                              <td width="118" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">如果我订的一种食品缺货，怎么办？ <span lang="EN-US">
                                                <o:p></o:p>
                                             </span>
                                       </font></font>
                                    </span>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">有些食品是季节性的，如果有品种缺货或者过季，根据您的要求，我们可以用其它产品进行调换；也可以进行缺货登记，在产品到货时通知您。<span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                           <tr style="mso-yfti-irow: 8;">
                              <td width="118" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">你们的食品是如何保证安全的？ <span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">我们所售出的产品都是与上海郊区各农业龙头企业、菜园农庄、合作社及各著名品牌的禽蛋类、肉类等供应商直接合作，与亲临商场选购的产品享受同样的质量保证。含有质量保证书的产品按照保证书的承诺执行。 <span lang="EN-US">
                                                <o:p></o:p>
                                             </span>
                                       </font></font>
                                    </span>
                                 </p>
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <o:p>
                                          <font color="#000000" size="3"></font>
                                       </o:p>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                           <tr style="mso-yfti-irow: 9; mso-yfti-lastrow: yes;">
                              <td width="118" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 88.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">其他问题<span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                              </td>
                              <td width="392" valign="top" style="border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: rgb(240, 240, 240) black black rgb(240, 240, 240); padding: 0cm 5.4pt; width: 294.25pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-themecolor: text1; mso-border-left-alt: solid black .5pt; mso-border-left-themecolor: text1; mso-border-bottom-themecolor: text1; mso-border-right-themecolor: text1; mso-border-top-alt: solid black .5pt; mso-border-top-themecolor: text1;">
                                 <p class="MsoNormal" style="margin: 0cm 0cm 0pt;">
                                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-font-kerning: 0pt; mso-ascii-theme-font: minor-fareast; mso-fareast-theme-font: minor-fareast; mso-hansi-theme-font: minor-fareast; mso-fareast-font-family: 宋体;">
                                       <font size="3"><font color="#000000">如果您还有其他问题，您可以咨询客服热线<span lang="EN-US">4006-673-573</span>询问。<span lang="EN-US">
                                                <o:p></o:p>
                                             </span></font></font>
                                    </span>
                                 </p>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                     <p></p>
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