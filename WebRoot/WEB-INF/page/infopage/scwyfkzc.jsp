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
         <div id="1080">
            <p align="center">
               <strong><font size="3">上菜网预付卡章程</font></strong>
            </p>
            <p>
               <strong>第一章 总 则</strong><br>第一条 为了进一步促进上菜网消费能力，满足和方便广大消费者日益增长的消费需求，向消费者提供更好更快地电子化支付服务，切实保障有关各方的权益，特制定本章程。<br>第二条 上菜网预付卡是指由上海上蔬电子商务有限公司（以下简称上海上蔬）发行，旨在流通和服务于消费市场的非记名预付卡。上菜网预付卡适用范围是上海上蔬旗下的购物网站“上菜网”（ <a href="/myShangCaiWang">www.myShangCaiWang.com</a> ），上菜网预付卡以人民币为结算币种，上菜网预付卡具有在线支付、刷卡消费的功能。<br>第三条 上海上蔬电子商务有限公司、特约商户、购卡人及其他当事人均须遵守本章程。<br>第四条 本章程涉及的部分名词遵从如下定义：<br>（一）购卡人：指使用货币资金购买上菜网预付卡用于支付的单位或个人；<br>（二）特约商户：是指与上海上蔬约定，接受上菜网预付卡进行交易的单位；<br>（三）上菜网预付卡：上菜网预付卡是指单张面值不超过1000元，不在上海上蔬将预付卡存储介质与单位或个人有效资料进行绑定登记的预付卡。 
            </p>
            <p>
               <strong>第二章 使用范围</strong><br>第五条 上菜网预付卡可在上菜网（ <a href="/myShangCaiWang">www.myShangCaiWang.com</a> ）及上海上蔬指定的特约商户刷卡消费。预付卡不得用于或变相用于提取现金，不得用于购买或交换其他预付卡，不得具有透支功能。 
            </p>
            <p>
               <strong>第三章 上菜网预付卡办理</strong><br>第六条 单位或个人购买上菜网预付卡，符合以下条件必须实行实名登记：<br>（一）单位一次性购买一万元（含）以上金额，或个人一次性购买5000元（含）以上金额的上菜网预付卡；<br>（二）个人代理他人购卡的，应当登记代理人和被代理人的身份基本信息，核对有效身份证件，并留存有效身份证件的复印件或者影印件。单位购卡不得代理，经办人员须为单位正式员工。<br>第七条 购卡实名登记资料需符合以下要求：<br>（一） 单位提交营业执照复印件、及经办人的有效身份证件进行登记；<br>（二） 个人提交有效身份证件行登记。<br>第八条 单位一次性购卡金额达5000元（含）以上，个人一次性购卡金额达1万元（含）以上，上海上蔬只接受银行转账方式购买，不接受现金购买。上海上蔬要对转出账户名称和账号，转入账户名称和账号、转账金额等进行登记。<br>第九条 上菜网预付卡单张最大面值不超过1000元（含）。 <br>第十条 上菜网预付卡办理条件对照表：<br> <img src="/myShangCaiWang/images/20160106/36c2d4bd0c92e4ae.jpg"><br>第十一条 上海上蔬在收到购卡人的货币资金后，向购卡人交付预付卡，并向购卡人出具购买凭证和收款收据。购买凭证载明购买日期、购买金额、存储介质号码等事项。一至三个工作日内进行卡激活。<br>第十二条 上菜网预付卡坏卡换卡及密码重置服务，用户办理坏卡换卡或密码重置收取服务费，由代理清洁算公司向费用收取对象开具发票。<br>（办理地址：上海市宜山路700号A4座二楼）<br>（一）坏卡换卡。<br>a)&nbsp;对于因顾客使用不当或磨损造成损坏，导致无法识别磁条的会员卡，提供换卡服务，换卡手续费10元。<br>b)&nbsp;上菜网预付卡换卡用户需提供有效身份证原件。<br>c)&nbsp;用户换卡时旧卡需退回我公司，旧卡金额等额充入新卡内。<br>（二）密码重置<br>a)&nbsp;顾客遗忘密码，需至柜面办理密码重置服务，每次收取服务费10元。<br>b)&nbsp;上菜网预付卡密码重置需提供有效身份证原件。<br>第十三条
                                                                                 上海上蔬向购卡人公示下列事项：<br>（一）上海上蔬的名称、地址、服务电话；<br>公司名称：上海上蔬电子商务有限公司<br>地址：中国上海市普陀区南石二路132号<br>公司客户服务电话：4006-673573<br>（二）上菜网预付卡使用方式及受理范围；<br>请持卡人详细阅读《上菜网预付卡章程》，登录公司网站 <a href="/myShangCaiWang">www.myShangCaiWang.com</a> <br>第十四条 上海上蔬不对非记名预付卡提供挂失补卡务，不向购卡人偿付不记名预付卡卡内的电子货币金额。<br>第十五条 上菜网预付卡自购卡之日起有效期三年。<br>第十六条 财务人员实时查询资金到账情况，依据购卡信息对相应的上菜网预付卡进行激活，钱到上海上蔬备付金帐户后一至三个工作日内激活并可以使用；使用现金购卡的，一至三个工作日内激活后即可使用。 
            </p>
            <p>
               <strong>第四章 收费项目及收费标准</strong><br>第十七条 上菜网预付卡非人为损坏的坏卡换卡不收取办理工本费。<br>第十八条 因用户原因造成的卡损坏换卡及有效期卡到期换卡，按10元/张收取办卡工本费，由代理清结算公司开具收取工本费等额发票。<br>第十九条 上菜网预付卡持有用户应该在有效期内使用。对自购买日起超过3年以上从未消费使用的上菜卡，公司从第4年第一个月起按月扣取不超过5元作为账户服务费。对超过有效期的上菜网预付卡，提供客服前台人工协助延期3个月的服务，延期服务每次收取最多不超过10元的服务费。 
            </p>
            <p>
               <strong>第五章 账户及交易管理</strong><br>第二十条 上菜网预付卡不限使用者，但因转让、转借、公用、共用而产生的一切后果我公司概不负责。<br>第二十一条 上菜网预付卡的资金由我公司备付金存管银行统一管理。<br>第二十二条 上菜网预付卡必须凭密码在特约商户进行消费。购卡人可：致电技术中心服务电话&nbsp; 4008205550&nbsp; 或登录网站 <a href="/myShangCaiWang">www.myShangCaiWang.com</a> 卡务咨询链接办理密码修改。 
            </p>
            <p>
               <strong>第六章 上海上蔬和购卡人的权利和义务</strong><br>第二十三条 上海上蔬的权利和义务<br>（一）上海上蔬有权冻结伪造、变造的上菜网预付卡，并依法提请有关机关追究当事人的责任。<br>（二）购卡人冒用他人身份或使用伪造、变造身份证明文件购买的记名上菜网预付卡，上海上蔬有权冻结，并依法提请有关机关追究当事人责任。<br>（三）上海上蔬应当向购卡人提供有关上菜网预付卡的使用说明资料，包括章程、使用说明及收费标准。现有购卡人亦可索取上述资料。<br>（四）使用上菜网预付卡购买商品后需要退货的，特约商户将资金退回至原支付预付卡内，不得支付现金或退入其他账户内。预付卡接受退货资金后的卡内资金余额不得超过规定的限额。<br>（五）上海上蔬应当在上菜网预付卡的章程或使用说明中向购卡人说明密码的重要性及丢失的责任。<br>（六）上海上蔬对购卡人的资料负有保密的责任，保管期限自业务结束期起5年时间。<br>（七）上海上蔬旗下上菜网网站对用户在注册中提供的相关资信资料及在交易中产生的相关资料负有保密义务，但有权利用这些资料进行有关联系、沟通之用，或者根据法律规定向有权查询的法定机构，或为完成交易指令的需要向第三方提供。为向用户提供优质服务，上海上蔬有权在与第三方合作商签订保密条款的基础上，允许第三方合作商直接向用户提供增值服务。同时上海上蔬有权为统计分析、内部管理之目的使用上述资料。<br>第二十四条 购卡人的权利和义务：<br>（一）购卡人享有上海上蔬对其预付卡所承诺的各项服务的权利，有权监督服务质量，并对不符服务质量进行投诉。<br>（二）购卡人有权知悉其选用的上菜网预付卡的功能、使用方法、收费项目、收费标准。<br>（三）购卡人未妥善保管上菜网预付卡存储介质，导致存储介质遗失、灭失的，应当自行承担经济损失。<br>（四）购卡人对上菜网预付卡存储介质、密码或密钥保管不善，导致他人冒用上菜网预付卡造成的经济损失，应当自行承担。<br>（五）购卡人或其他单位和个人不得伪造、变造上菜网预付卡，不得使用伪造、变造的上菜网预付卡，不得私自设立上菜网预付卡交易场所，不得倒卖上菜网预付卡。构成犯罪的，应当依法承担刑事责任。情节轻微，不构成犯罪的，应当按照规定承担行政责任。<br>（六）购卡人不得在上海上蔬指定商户以外的其他场所使用上菜网预付卡。购卡人未按约定进行交易造成经济损失的，应当自行承担。<br>（七）
                                                               用户承诺自己在使用上菜网预付卡时实施的所有行为遵守国家法律、法规以及各种社会公共利益或公共道德。对于任何法律后果的发生，用户将以自己的名义独立承担所有相应的法律责任。用户不得利用上菜网预付卡从事非法或不正当的交易。用户从事非法活动或不正当交易产生的一切后果与责任，由用户独立承担。 <br>上述行为包括但不限于： <br>1、侵害他人名誉、隐私权、商业秘密、商标权、著作权、专利权、其他人身和财产权利。 <br>2、冒用他人名义使用本服务。 <br>3、从事任何不法交易行为，如洗钱等行为。 <br>4、利用上菜网预付卡进行无真实交易背景的虚假交易。 <br>5、从事任何可能含有电脑病毒或是可能侵害本服务系统、资料之行为。 <br>6、其他被上海上蔬有正当理由认为不适当之行为。 <br>对因用户违反上述条款，引致索赔、诉讼及其他程序致使上海上蔬电子商务有限公司受到损害的，用户应承担一切包括赔偿责任在内的法律责任（包括合理的律师费用）。<br> <br> <strong>第七章 上菜网预付卡业务终止、清算、赎回</strong><br>第二十五条 上海上蔬解散、依法被撤销、被宣告破产，或经中国人民银行批准同意终止预付卡业务的，在自解散、被撤销、被宣告破产或被批准终止业务之日起，在大众媒体、营业场所及其网站显著位置至少公告30日以下事项： <br>（一）上菜网预付卡业务终止原因；<br>（二）上菜网预付卡业务终止时间；<br>第二十六条 持卡人债权债务清算事项，含赎回场所、时间、手续等事项；<br>第二十七条 特约商户债权债务清算事项；<br>第二十八条 中国人民银行要求公告的其他事项。 
            </p>
            <p>
               <strong>第八章 附 则</strong><br>第二十九条 本章程未尽事宜，按照国家有关法律、法规、规章执行。 <br>第三十条 用户在购买和使用上菜网预付卡前，确认已经就全部条款进行了详细地阅读，双方对章程的全部条款均无疑义，并对章程涉及的权利义务、责任限制及免责条款的法律含义有了准确无误的理解。&nbsp;<br>第三十一条 本章程的任何条款如因任何原因而被确认无效，都不影响本章程其他条款的效力。&nbsp;<br>第三十二条 本章程的管辖地为上海上蔬电子商务有限公司的注册地。&nbsp;<br>第三十三条 本章程自上海上蔬旗下上菜网网站 <a href="/myShangCaiWang">www.myShangCaiWang.com</a> 发布之日起生效。 
            </p>
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