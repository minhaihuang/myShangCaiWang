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
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/validate/validate.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/validate/validateMessage_zh_CN.js">
	</script>
	
	<script type="text/javascript">
	//客户端数据有效性检查
	$().ready(function() {
		$("#passWordForm").validate({
			rules : {
				oldPassWord : {
					required : true,
				},

				passWord : {
					required : true,
				},
				
				rePassWord : {
					required : true,
					equalTo  :'#passWord'
				}
			},

			submitHandler : function(form) {
				form.submit();
				
			}
		}

		);
		
		$("#payPassWordForm").validate({
			rules : {
				oldPayPassWord : {
					required : true,
				},

				payPassWord : {
					required : true,
				},
				
				rePayPassWord : {
					required : true,
					equalTo  :'#payPassWord'
				}
			},

			submitHandler : function(form) {
				form.submit();
				
			}
		}

		);

	});
</script>
</head>

<body id="warp">

   

   <!-- 页面主题区域 -->
   <div class="AllWrapInside">
      <div style="margin: auto; width: 950px; font-size: 12px; font-family: Arial, Helvetica, sans-serif">
         <div class="MemberCenter">

			<jsp:include page="/head/myLeft.jsp" ></jsp:include>

            <div class="MemberMain">
               <div style="margin-right: 175px;">
                  <form class="section" id="passWordForm" action="${pageContext.request.contextPath }/member/myCountAction_updatePassWord.action" method="post">
                     <div class="FormWrap" style="background: none; margin: 0px; padding: 0px; border: currentColor; border-image: none;">
                        <table width="180" class="forform" style="padding: 2px; text-align: center; margin-left: 10px;" border="0" cellspacing="0" cellpadding="2">
                           <tbody>
                              <tr>
                                 <td style="background: rgb(187, 217, 87); padding: 2px;"><a style="text-decoration: none;" href="?member-security.jsp">
                                       <strong style="color: rgb(255, 255, 255);">密码修改</strong>
                                    </a></td>
                                 <td style="padding: 2px;"></td>
                                 <td style="background: rgb(221, 238, 163); padding: 2px;"><a href="?member-1-security.jsp">安全问题</a></td>
                              </tr>
                           </tbody>
                        </table>
                        <div style="border-top-color: rgb(241, 241, 241); border-top-width: 1px; border-top-style: solid;"></div>
                        <div class="division" style="border: currentColor; border-image: none;">
                         
                          <span style="color:red">${request.passWordMessage }</span>
                           <table width="100%" class="forform" border="0" cellspacing="0" cellpadding="0">
                              <tbody>
                                 <tr>
                                    <th>旧密码：</th>
                                    <td><input name="oldPassWord" class="x-input inputstyle" required="true" type="password" autocomplete="off"/></td>
                                 </tr>
                                 <tr>
                                    <th>新密码：</th>
                                    <td><input  id="passWord" name="passWord" class="x-input inputstyle" required="true" type="password" autocomplete="off"/></td>
                                 </tr>
                                 <tr>
                                    <th>确认新密码：</th>
                                    <td><input name="rePassWord" class="x-input inputstyle" required="true" type="password" autocomplete="off"/></td>
                                 </tr>
                                 <tr>
                                    <th></th>
                                    <td><input class="actbtn btn-save" type="submit" value="保存"></td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </form>
                  <form class="section" id="payPassWordForm" action="${pageContext.request.contextPath }/member/myCountAction_updatePayPassWord.action" method="post">
                     <div class="division" style="border: currentColor; border-image: none;">
                        	<span style="color:red">${request.payPassWordMessage }</span>
                        <table width="100%" class="forform" border="0" cellspacing="0" cellpadding="0">
                           <tbody>
                              <tr>
                                 <th>旧支付密码：</th>
                                 <td><input name="oldPayPassWord" class="x-input inputstyle" required="true" type="password" autocomplete="off"/></td>
                              </tr>
                              <tr>
                                 <th>新支付密码：</th>
                                 <td><input name="payPassWord" id="payPassWord" class="x-input inputstyle" required="true" type="password" autocomplete="off"/></td>
                              </tr>
                              <tr>
                                 <th>确认新支付密码：</th>
                                 <td><input name="rePayPassWord" class="x-input inputstyle" required="true" type="password" autocomplete="off"/></td>
                              </tr>
                              <tr>
                                 <th></th>
                                 <td><input class="actbtn btn-save" type="submit" value="保存"/></td>
                              </tr>
                           </tbody>
                        </table>
                     </div>
                  </form>
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