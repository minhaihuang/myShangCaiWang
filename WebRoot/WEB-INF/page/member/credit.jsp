<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
      <div style="margin: auto; width: 950px; font-size: 12px; font-family: Arial, Helvetica, sans-serif">
         <div class="MemberCenter">


             <jsp:include page="/head/myLeft.jsp" ></jsp:include>

            <div class="MemberMain">
               <div style="margin-right: 175px;">
                  <div class="title">我的积分</div>
                  <div class="points">
                     <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tbody>
                           <tr>
                              <td width="200">
                                 <div class="currentpoints">
                                    <div style="padding-top: 30px;">
                                       <strong>您当前的有效积分：</strong><br> <span style="color: rgb(253, 107, 0); font-size: 20px; font-weight: bold;">${session.user.totalGrade }</span>
                                    </div>
                                 </div>
                              </td>
                              <td style="line-height: 20px;"><strong>积分规则：</strong><br> 1. 当积分已达到某一兑换积分标准时，顾客可将累计积分依照网站相应积分及兑换标准兑换回馈商品，网站将即时从用户会员积分中扣减相应积分。<br> 2. 各项回馈项目（包含各项商品、服务或抵用券等）及兑换标准及兑换规则均以兑换当时最新回馈活动公告或目录为准。<br> 3. 部分兑换商品有数量限制的，兑完为止。<br> 4. 公告或目录如有有效期限的，逾期即不得兑换。<br> 5. 积分兑换区的商品为只可用积分兑换的商品（如积分价格：100积分）。</td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
                  <br> <br>
                        <table width="100%" class="memberlist" border="0" cellspacing="0" cellpadding="0">
                           <tbody>
                              <tr>
                                 <th>日期</th>
                                 <th>积分</th>
                                 <th>摘要</th>
                              </tr>
                              <tbody>
                                 <tr>
                                    <td>2015-12-30 14:58</td>
                                    <td class="point">500</td>
                                    <td class="textleft">网店机器人触发事件</td>
                                 </tr>
                              </tbody>
                        </table>
               </div>
            </div>

            <div class="clear"></div>
         </div>
      </div>
      <div style="display: none;">
         <div class="memberlist-tip">
            <div class="tip">
               <div class="tip-title"></div>
               <div class="tip-text"></div>
            </div>
         </div>
      </div>
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
