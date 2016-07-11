<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
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



<script type="text/javascript">
	function changeAddress(dom){
		var value=dom.value;
		
		if(value=='0'){
		
			document.getElementById('showOtherAddress').style.display='block';
		}else{
   			document.getElementById('showOtherAddress').style.display='none';
   		}
	}
	function test(index){
	alert(1234);
	}
	
</script>
</head>

<body id="warp">

   <!-- 页面主题区域 -->
   <!-- 结算页面 -->
   <div class="AllWrapInside">
      <div class="CartWrap" id="log">
         <div class="CartNav clearfix">
            <div class="floatLeft">
               <img alt="购物流程--确认订单填写购物信息" src="/myShangCaiWang/themes/green/cartnav-step3.gif">
            </div>
            <div class="floatRight">
               <img src="/myShangCaiWang/themes/green/cartnav-cart.gif">
            </div>
         </div>
          						
         <form id="order-create" action="${pageContext.request.contextPath }/member/orderAction_orderCreate.action" method="post" extra="subOrder">
            <div style="display: none;">
               <input class="x-input " type="text" vtype="checkForm" autocomplete="off">
            </div>
            <div class="FormWrap checkoutbase">
               <table width="100%" cellspacing="0" cellpadding="0">
                  <tbody>
                     <tr>
                        <td width="100" style="vertical-align: middle; white-space: nowrap;">
                           <h3>收货信息确认</h3>
                        </td>
                        <td>
                           <div class="division receiver" id="receiver">
                              <ul class="list receiver-sel">
                              
                              <%int index=0; %>
                              	<s:iterator value="%{#request.addressSet}" var="address">
                                 <li><input name="addressId" type="radio"  checked="checked" value="<s:property value="%{#address.addressId}"/>"/>
                                     
                                       adsf (收货人：<s:property value="%{#address.userName}"/>  &nbsp;
                                       	电话：<s:property value="%{#address.mobile}"/>  &nbsp;
                                       	邮编：<s:property value="%{#address.postNumber}"/>) &nbsp; 
                                       <a  class="lnk addredit" href="${pageContext.request.contextPath }/member/addressAction_updateAddress.action?addressId=<s:property value="%{#address.addressId}"/>" >编辑</a>
                                       &nbsp;&nbsp; 
                                       <a style="text-decoration: underline;" href="${pageContext.request.contextPath }/member/addressAction_deleteAddress.action?addressId=<s:property value="%{#address.addressId}"/>">删除</a></li>
                                       <%index++; %>
                                </s:iterator>
                                
                                
                                 <li><a href="${pageContext.request.contextPath }/member/addressAction_addAddress.action" > 其他收货地址</a> </li>
                              

                              </ul>
                              
                              <div class="receivermore" style="padding: 5px; margin-top: 4px;">
                                 订单附言：
              
                                 <input name="comment" class="x-input inputstyle" style="width: 400px;" type="text" value="" vtype="text" autocomplete="off"/>
                                
                                    指定送货时间: <input onclick='$(this).getNext("div")[this.checked?"show":"hide"]();' type="checkbox">
                                       <div style="margin-top: 4px; display: none;">
                                          送货时间：<select name="delivery[day]" class="inputstyle" onchange="$('specal_day').style.display=(this.value=='specal')?function(){$('specal_day').getFirst().makeCalable(); return '';}():'none'">
                                             <option selected="selected" value="任意日期">任意日期</option>
                                             <option value="仅工作日">仅工作日</option>
                                             <option value="仅休息日">仅休息日</option>
                                             <option value="specal">指定日期</option>
                                          </select>&nbsp;
                                          <span id="specal_day" style="display: none;">
                                             <input name="delivery[specal_day]" class="x-input cal inputstyle" style="width: 80px;" type="text" readonly="1" value="2016-01-06" vtype="text" autocomplete="off" real="1">
                                          </span>
                                          <select name="delivery[time]" class="inputstyle">
                                             <option value="任意时间段">任意时间段</option>
                                             <option value="午前 9:00~14:00">午前 9:00~14:00</option>
                                             <option value="午后 14:00~20:00">午后 14:00~20:00</option>
                                             <!-- <option value="上午">上午</option> <option value="下午">下午</option> -->
                                             <!--<option value="晚上">晚上</option> -->
                                          </select>
                                       </div>
                              </div>
                           </div>
                        </td>
                     </tr>
                  </tbody>
               </table>
               <table width="100%" cellspacing="0" cellpadding="0">
                  <tbody>
                     <tr>
                        <td width="100" style="vertical-align: middle; white-space: nowrap;">
                           <h3>
                              配送方式确认<em style="color: red;">*</em>
                           </h3>
                        </td>
                        <td>
                           <div class="division" id="shipping">
                              <table width="100%" class="liststyle data" cellspacing="0" cellpadding="0">
                                 <colgroup>
                                    <col class="span-5 ColColorGray">
                                       <col class="span-auto textleft">
                                          <tbody>
                                             <tr>
                                                <th style="text-align: left;"><label style="width: auto;"> <input name="delivery[shipping_id]" class="toCheck" id="shipping_4" style="cursor: pointer;" onclick="Order.shippingChange(this,event)" type="radio" value="4" has_cod="1"> 黑猫宅急便 </label></th>
                                                <td><span class="fontcolorRed" style="font-size: 14px;">+￥15.0</span> <br> <font size="2" style="color: rgb(255, 0, 0); font-weight: bold;"> 单笔订单未满200元加收15元配送费 <br> <br> 您在上菜网购买的商品均通过雅玛多（中国）运输有限公司送货上门。 </font> <br> <font color="#38761d" size="2"> <strong> <span style="font-family: 宋体;"></span>
                                                         </strong>
                                                      </font> <font color="#38761d" size="2"> <strong> <span style="font-family: 宋体;">
                                                                  <br> 1.您可以指定送达时间“上午”或“下午”。 <br> 2.上海地区订单每日中午12:00前下单，48小时内备货。 <br> 3.法定节假日（元旦、春节、劳动节、国庆节）顺延至节后第一天配送。 <br> 4.积分兑换礼品不单独配送，只随商品订单一起配送。 <br> 5.送货范围为上海市市区全境配送（包括崇明三岛）。 
                                                               </span>
                                                         </strong>
                                                      </font></td>
                                             </tr>
                                          </tbody>
                              </table>
                           </div>
                        </td>
                     </tr>
                  </tbody>
               </table>
               <table width="100%" cellspacing="0" cellpadding="0">
                  <tbody>
                     <tr>
                        <td width="100" style="vertical-align: middle; white-space: nowrap;">
                           <h3>
                              支付方式确认<em style="color: red;">*</em>
                           </h3>
                        </td>
                        <td>
                           <div class="division">
                              <div id="_payment_currency" style="padding: 5px;">
                                 货币类型：<select name="payment[currency]" class="x-input-select inputstyle inputstyle" id="payment-cur" required="true" onchange="Order.setCurrency(this,event); Order.paymentChange(this);"><option selected="selected" value="CNY">人民币</option></select>
                              </div>
                              <div id="payment">
                                 <table width="100%" class="liststyle data" id="_normal_payment" cellspacing="0" cellpadding="0">
                                    <colgroup>
                                       <col class="span-5 ColColorGray">
                                          <col class="span-auto">
                                             <tbody>
                                                <tr id="_pay_cod">
                                                   <th style="text-align: left;"><input name="payment[payment]" class="x-payMethod" id="payment_bank" style="cursor: pointer;" type="radio" value="-1" paytype="offline">货到付款</th>
                                                   <td><font size="2"> <span style="font-family: 宋体;">由我们的快递人员在将货物送到时收取货款（接受现金抵用券，现金或带有银联标志的银行卡刷卡支付）。</span>
                                                   </font></td>
                                                </tr>

                                                <tr>
                                                   <input id="paytypes[45]" type="hidden" value="abchina">
                                                      <th style="text-align: left;"><label><input name="payment[payment]" class="x-payMethod" style="cursor: pointer;" onclick="Order.paymentChange(this)" type="radio" value="45" paytype="abchina" formatmoney="￥0.00" moneyamount="">中国农业银行(借记卡)</label></th>
                                                      <td>中国农业银行(借记卡) <span style="background-color: rgb(255, 255, 255);"></span> <br> <img src="/myShangCaiWang/images/20160106/c85ee5bbd5df772d.jpg"> <br></td>
                                                </tr>
                                                <tr>
                                                   <input id="paytypes[46]" type="hidden" value="abchinacredit">
                                                      <th style="text-align: left;"><label><input name="payment[payment]" class="x-payMethod" style="cursor: pointer;" onclick="Order.paymentChange(this)" type="radio" value="46" paytype="abchinacredit" formatmoney="￥0.00" moneyamount="">中国农业银行(信用卡)</label></th>
                                                      <td>中国农业银行(信用卡) <br> <img src="/myShangCaiWang/images/20160106/c397c0d2f55fb375.jpg"> <br></td>
                                                </tr>
                                                <tr>
                                                   <input id="paytypes[38]" type="hidden" value="alipay">
                                                      <th style="text-align: left;"><label><input name="payment[payment]" class="x-payMethod" style="cursor: pointer;" onclick="Order.paymentChange(this)" type="radio" value="38" paytype="alipay" formatmoney="￥0.00" moneyamount="">支付宝付款[即时到帐]</label></th>
                                                      <td><span style="font-family: 宋体;">
                                                            <font size="2"> 如果您拥有支付宝账号，您可以在结算货款时使用支付宝进行支付。 <br></font>
                                                         </span> <img src="/myShangCaiWang/images/20160106/1cf0d311166da5d4.jpg"> <br></td>
                                                </tr>
                                             </tbody>
                                 </table>
                              </div>
                           </div>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </div>
            <div class="FormWrap">
               <h3>购买的商品</h3>
               <div class="division">
                  <table width="100%" class="liststyle" cellspacing="0" cellpadding="0">
                     <colgroup>
                        <col class="span-auto">
                           <col class="span-auto textleft">
                              <col class="span-2">
                                 <col class="span-2">
                                    <col class="span-2">
                                       <col class="span-1">
                                          <col class="span-2 ColColorOrange">
                                             <thead>
                                                <tr>
                                                   <th>图片</th>
                                                   <th class="product">商品名称</th>
                                                   <th class="price">积分</th>
                                                   <th class="price">销售价格</th>
                                                   <th class="number">优惠价格</th>
                                                   <th class="number">数量</th>
                                                   <th class="price">小计</th>
                                                </tr>
                                             </thead>
                                             
                                             <tbody>
                                             

                                             <s:iterator value="%{#request.cartItemList}" var="cartItem">
                                             	bbbbb;
                                                <tr>
                                                   <td width="10%">
                                                      <div class="product-list-img" style="margin: 0px auto; width: 50px; height: 50px;" ghref="?product-619.jsp" isrc="/myShangCaiWang/images/20160106/ff7447bc296c9a15.jpg">
                                                         <a style="border: 0px currentColor; border-image: none;" href="${pageContext.request.contextPath }/goods/goodsAction_goodsDetail.action?goodsId=<s:property value="%{#cartItem.goods.goodsId}"/>" target="_blank">
                                                            <img width="50" height="50" style="cursor: pointer;" src="${pageContext.request.contextPath }<s:property value="%{#cartItem.goods.goodsMinImgPath}"/>"/>
                                                         </a>
                                                      </div>
                                                   </td>
                                                   <td width="35%" class="product;"><s:property value="%{#cartItem.goods.goodsName}"/> <input name="cart[g][cart][619-898-na]" type="hidden" value="1">
                                                         <input name="cart[g][pmt][619]" type="hidden" value="0"></td>
                                                   <td width="10%" class="price"><s:property value="%{#cartItem.goods.price}"/></td>
                                                   <td width="10%" class="price">￥<s:property value="%{#cartItem.goods.price}"/></td>
                                                   <td width="10%" class="cost">￥<s:property value="%{#cartItem.goods.price}"/></td>
                                                   <td width="10%" class="number"><s:property value="%{#cartItem.goodsCount}"/>
                                                     <!--   <h3 class="t">(提示:需要备货)</h3>-->
                                                   </td>
                                                   <td width="10%" class="cost">￥${cartItem.goods.price * cartItem.goodsCount }</td>
                                                </tr>
                                                
                                                </s:iterator>
                                             </tbody>
                  </table>
               </div>
            </div>
            <div id="amountInfo">
               <div class="clearfix">
                  <table width="100%" class="liststyle data" cellspacing="0" cellpadding="0">
                     <colgroup>
                        <col class="span-auto ColColorGray">
                           <col class="span-4 ColColorOrange textright">
                              <!-- <tr> <th>商品总价格：</th> <td value="13" class="price">￥13.0</td> </tr>-->
                              <tbody>
                                 <tr>
                                    <th>订单总金额：</th>
                                    <td><span class="price1">￥${session.totalPrice }</span> <br> 是否需要发票?(税金: <strong>0%</strong> ) <input name="payment[is_tax]" id="is_tax" onclick="Order.updateTotal()" type="checkbox" value="true">
                                             <p id="tax_company" style="visibility: hidden;">
                                                发票抬头：
                                                <input name="payment[tax_company]" class="inputstyle" type="text">
                                             </p>
                                             <script>
                                                                                            $('is_tax').addEvent('click', function() {
                                                                                              $('tax_company').setStyle('visibility', this.checked ? 'visible' : 'hidden');
                                                                                            }).fireEvent('click');
                                                                                          </script></td>
                                 </tr>
                                 <tr>
                                    <th>此订单数获得积分：</th>
                                    <td>${session.totalGrade }</td>
                                 </tr>
                                 <tr>
                                    <th>您的积分总计：</th>
                                    <td>${session.user.totalGrade }</td>
                                 </tr>
                              </tbody>
                  </table>
               </div>
            </div>
            <div class="CartBtn clearfix">
               <input name="fromCart" type="hidden" value="true">
                  <div class="span-auto">
                     <input class="actbtn btn-return-checkout" onclick="window.location='?cart-index.jsp';" type="button" value="返回购物车">
                  </div>
                  <div class="span-auto floatRight last">
                     <input class="actbtn btn-confirm" id="order_ct_dgc" type="submit" value="确认无误，下订单">
                  </div>
            </div>
         </form>
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
<script type="text/javascript">

	function updateAddress(index){
		alert(1234);
		//获取当前更新的地址的id值
		var addressId=$('addressId'+index).val();
		
		alert(addressId);
		var url="openWindow('${pageContext.request.contextPath }/member/addressAction_updateAddress.action','800','400')";
		$.post(url,{"addressId":addressId,"timestamp" : new Date().getTime()},function(data){
				
			});
	}
</script>