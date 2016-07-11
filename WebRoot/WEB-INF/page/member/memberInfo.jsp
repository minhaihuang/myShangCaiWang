<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
	src="${pageContext.request.contextPath }/script/DatePicker/WdatePicker.js">
	
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
                  <div class="title">完善个人信息</div>
                  
                  <form class="section" id="form_saveMember" action="${pageContext.request.contextPath }/member/userAction_update.action" method="post">
                     <input type="hidden" name="userId" value="${session.user.userId }"/>
                      <input type="hidden" name="passWord" value="${session.user.passWord }"/>
                       <input type="hidden" name="payPassWord" value="${session.user.payPassWord }"/>
                       <input type="hidden" name="totalGrade" value="${session.user.totalGrade }"/>
                     
                     <div class="FormWrap" style="background: none; margin: 0px; padding: 0px; border: currentColor; border-image: none;">
                        <div class="division" style="border: currentColor; border-image: none;">
                           <table width="100%" class="forform" border="0" cellspacing="0" cellpadding="0">
                              <tbody>
                                 <tr>
                                    <th>货币：</th>
                                    <td><select name="cur">
                                          <option value="CNY">人民币</option>
                                    </select></td>
                                 </tr>
                                 <tr>
                                    <th><em>*</em>Email：</th>
                                    <td><input name="email" class="x-input inputstyle" required="true" type="text" value="${session.user.email }" autocomplete="off" vtype=""></td>
                                 </tr>
                              </tbody>
                           </table>
                        </div>
                        <div style="border-top-color: rgb(241, 241, 241); border-top-width: 1px; border-top-style: solid;"></div>
                        <div class="division" style="border: currentColor; border-image: none;">
                           <table width="100%" class="forform" border="0" cellspacing="0" cellpadding="0">
                              <tbody>
                                 <tr>
                                    <th>姓名</th>
                                    <td><input name="userName" readonly="readonly" class="x-input inputstyle _x_ipt" required="false" type="text" value="${session.user.userName }" autocomplete="off"/></td>
                                 </tr>
                                 <tr>
                                    <th>性别</th>
                                    <td>
                                    <s:if test="#session.user.gender==\"female\"">
                                    
                                    <input name="gender" type="radio"  value="male"/>
                                          <label>男</label> 
                                     <input name="gender" type="radio"  checked="checked" value="female"/>
                                           <label>女</label></td>
                                      </s:if>
                                      <s:else>
                                      	 	<input name="gender" type="radio" checked="checked" value="male"/>
                                          		<label>男</label> 
                                     	  	<input name="gender" type="radio" value="female"/>
                                           		<label>女</label></td>
                                      </s:else>
                                 </tr>
                                 <tr>
                                    <th>出生日期</th>
                                    <td>
                                          <input name="birthday" onclick="WdatePicker()" class="cal cal" id="el-68cb0-86313" type="text" size="10" maxlength="10" value="${session.user.birthday }" autocomplete="off" vtype="date"/></td>
                                 </tr>
                                 <tr>
                                    <th>地区</th>
                                    <td><span class="span _x_ipt" vtype="area2" package="mainland">
                                          <input name="area" type="hidden" value="mainland:上海/上海市/卢湾区:24">
                                             <select onchange="selectArea(this,this.value,2)"><option value="_NULL_">请选择...</option>
                                                <option selected="selected" value="21" has_c="true">上海</option></select> <span class="x-region-child">
                                                &nbsp;-&nbsp;<select onchange="selectArea(this,this.value,2)"><option value="_NULL_">请选择...</option>
                                                   <option selected="selected" value="22" has_c="true">上海市</option></select>
                                                <span class="x-region-child">
                                                   &nbsp;-&nbsp;<select onchange="selectArea(this,this.value,2)"><option value="_NULL_">请选择...</option>
                                                      <option value="23" has_c="true">黄浦区</option>
                                                      <option selected="selected" value="24" has_c="true">卢湾区</option>
                                                      <option value="25" has_c="true">徐汇区</option>
                                                      <option value="26" has_c="true">长宁区</option>
                                                      <option value="27" has_c="true">静安区</option>
                                                      <option value="28" has_c="true">普陀区</option>
                                                      <option value="29" has_c="true">闸北区</option>
                                                      <option value="30" has_c="true">虹口区</option>
                                                      <option value="31" has_c="true">杨浦区</option>
                                                      <option value="32" has_c="true">闵行区</option>
                                                      <option value="33" has_c="true">宝山区</option>
                                                      <option value="34" has_c="true">嘉定区</option>
                                                      <option value="35" has_c="true">浦东新区</option>
                                                      <option value="36" has_c="true">金山区</option>
                                                      <option value="37" has_c="true">松江区</option>
                                                      <option value="38" has_c="true">青浦区</option>
                                                      <option value="39" has_c="true">南汇区</option>
                                                      <option value="40" has_c="true">奉贤区</option>
                                                      <option value="41" has_c="true">崇明县</option></select>
                                                </span>
                                             </span>
                                       </span></td>
                                 </tr>
                                 <tr>
                                    <th>联系地址</th>
                                    <td><input name="address" class="x-input inputstyle _x_ipt"  type="text" value="${session.user.address }" autocomplete="off"/></td>
                                 </tr>
                                 <tr>
                                    <th>邮编</th>
                                    <td><input name="postNumber" class="x-input inputstyle _x_ipt"  type="text" value="${session.user.postNumber }" autocomplete="off"/></td>
                                 </tr>
                                 <tr>
                                    <th>手机号码</th>
                                    <td><input name="mobile" class="x-input inputstyle _x_ipt" required="false" type="text" value="${session.user.mobile }" autocomplete="off"/></td>
                                 </tr>
                                 <tr>
                                    <th>固定电话</th>
                                    <td><input name="phone" class="x-input inputstyle _x_ipt"  type="text" value="${session.user.phone }" autocomplete="off"/></td>
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