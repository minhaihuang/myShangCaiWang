<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery-1.8.3.js"></script>
 
<script type="text/javascript">
	//清空购物车
	function clearCart(){
		if (confirm("确定清空购物车吗")) {
                 $('#cartTable').empty();
                 
                
				 //总价格
				 $('#totalPriceInBody').empty();
				 $('#totalPriceInBody').append('0');
				 $('#totalPriceInHead').empty();
				 $('#totalPriceInHead').append('0');
				 
				 
				 //总件数
                 $('#totalCountInHead').empty();
                 
				 $('#totalCountInHead').append('0');
				 
				 
                 //ajax更新后台数据
                 var url="${pageContext.request.contextPath}/member/cartAction_clear.action";
				 
		
				 $.post(url,{},function(data){
					window.location.href=window.location.href;
				 });
                 
                } else {
                    
                }
	}

	function countIncrease(index){
		var operation="increase";
		normal(index,operation);
	}


	function countDecrease(index){
		var operation="decrease";
		normal(index,operation);
	}
	
	//公共的一些代码
	function normal(index,operation){
		var oldCount=$("#goodsCount"+index).val();
		
		//转换类型，字符串转换为int
		var temp=parseInt(oldCount);
		
		if("decrease"==operation){
			//旧值减1
			var newValue=temp-1;
		}else{
			//旧值加1
			var newValue=temp+1;
		}
		
	
		if(newValue<1){
			alert('购买数量不能小于1');
			newValue=1;
		}
		//转换类型，int转换为字符串
		var newValueStr=String(newValue);
		
		//重新设置值
		$('#goodsCount'+index).attr('value',newValueStr);
		
		
		//计算一种商品的总价格
		
		//获取当前商品的价格
		var goodsPrice = document.getElementById("price"+index).innerText;
		
		//转换类型
		var priceInt=parseInt(goodsPrice);
		//计算一种商品的总价格
		var oneGoodsTotalPrice=newValue*priceInt;
		
		//设置一种商品的总价格
		var oneGoodsTotalPriceStr=String(oneGoodsTotalPrice);
		
		
		$('#oneGoodsTotalPrice'+index).empty();
		$('#oneGoodsTotalPrice'+index).append(oneGoodsTotalPriceStr);
		
		
		
		
		//设置全部商品的总价格
		
		//获取最大的索引
		var maxIndexStr=$("#maxIndex").val();
		var maxIndexInt=parseInt(maxIndexStr);
		
		//计算总价格
		var totalPrice=0;
		for(var i=0;i<maxIndexInt;i++){
			//获取每种商品的总价值
			var oneGoodsTotalPriceStr=document.getElementById("oneGoodsTotalPrice"+i).innerText;
			
			var oneGoodsTotalPriceInt=parseInt(oneGoodsTotalPriceStr);
			
			//计算
			totalPrice+=oneGoodsTotalPriceInt;
		}
		
		//设置总价格
		var totalPriceStr=String(totalPrice);
		
		
		$('#totalPriceInBody').empty();
		$('#totalPriceInBody').append(totalPriceStr);
		$('#totalPriceInHead').empty();
		$('#totalPriceInHead').append(totalPriceStr);
		
		//设置总件数
		var totalCountStr=document.getElementById("totalCountInHead").innerText;
		var totalCountInt=parseInt(totalCountStr);
		if("decrease"==operation){
			
				totalCountInt=totalCountInt-1;
				
				if(totalCountInt==0){
					totalCountInt=1;
				}
			
		}else{
			totalCountInt=totalCountInt+1;
		}
		
		$('#totalCountInHead').empty();
		$('#totalCountInHead').append(totalCountInt);
		
		//利用ajax更新服务器数据
		
		var url="${pageContext.request.contextPath}/member/cartAction_update.action";
		var goodsId=$('#goodsId'+index).val();
		
		$.post(url,{'operation':operation,'goodsId':goodsId},function(data){
			window.location.href=window.location.href;
		});
		
		
	}
	
	
</script>

</head>

<body id="warp">

   <!-- 页面主题区域 -->
   <div class="AllWrapInside">
      <div class="CartWrap" id="cart-index">
         <div class="CartNav clearfix">
            <div class="floatLeft">
               <img alt="购物流程--查看购物车" src="/myShangCaiWang/themes/green/cartnav-step1.gif">
            </div>
            <div class="floatRight">
               <img src="/myShangCaiWang/themes/green/cartnav-cart.gif">
            </div>
         </div>
         <div class="section" id="cart-items">
            <form id="formcCart" action="${pageContext.request.contextPath }/member/cartAction_checkout.action" method="post" extra="cart">
               <div class="FormWrap" id="cartItems">
                  <h3>已放入购物车的商品:</h3>
                  请在此确认您要购买的商品。
                  <div class="division" id="goodsbody">
                     <table width="100%" class="liststyle" cellspacing="0" cellpadding="3" id="cartTable">
                        <colgroup>
                           <col class="span-2 ">
                              <col class="span-auto">
                                 <col class="span-2">
                                    <col class="span-2">
                                       <col class="span-2">
                                          <col class="span-2">
                                             <col class="span-2 ColColorOrange">
                                                <col class="span-2">
                                                   <thead>
                                                      <tr>
                                                         <th>图片</th>
                                                         <th>商品名称</th>
                                                         <th>商品积分</th>
                                                         <th>销售价格</th>
                                                         <th>优惠价格</th>
                                                         <th>数量</th>
                                                         <th>小计</th>
                                                         <th>删除</th>
                                                      </tr>
                                                   </thead>
                                                  
                                                   
                       
                                                   <tbody>
                                                   <%int index=0; %>
                                                   <div id="cartTableBody">
                                                   <s:iterator value="%{#session.cart.cartItemList}" var="cartItem">
                                                   <input type="hidden" id="goodsId<%=index %>" value="<s:property value="%{#cartItem.goods.goodsId}"/>"/>
                                                      <tr price="13.0" urlremove="/myShangCaiWang/" urlupdate="/myShangCaiWang/" number="1">

                                                         <td style="text-align: left;">
                                                            <div class="cart-product-img" style="margin: 0px auto; width: 50px; height: 50px;" href="/myShangCaiWang/" isrc="/myShangCaiWang/images/20160106/ff7447bc296c9a15.jpg">
                                                               <a  target="_parent" href="${pageContext.request.contextPath }/goods/goodsAction_goodsDetail.action?goodsId=<s:property value="%{#cartItem.goods.goodsId}"/>" >
                                                                  <img width="50" height="50" style="cursor: pointer;" src="${pageContext.request.contextPath }<s:property value="%{#cartItem.goods.goodsMinImgPath}"/>">
                                                               </a>
                                                            </div>
                                                         </td>
                                                         <td width="25%"><a href="/myShangCaiWang/" target="_blank"><s:property value="%{#cartItem.goods.goodsName}"/></a></td>
                                                         <td><s:property value="%{#cartItem.goods.grade}"/></td>
                                                  
                                                         <td class=" mktprice1">￥<span  id="price<%=index %>" ><s:property value="%{#cartItem.goods.price}"/></span></td>
                                                         
                                                         <td>￥<s:property value="%{#cartItem.goods.price}"/></td>
                                                         <td>
                                                            <div class="Numinput">
                                                              
                                                                  <!-- 
                                                                   <input id="goodsCount" name="goodsCount" class="_x_ipt textcenter" onchange="Cart.ItemNumUpdate(this,this.value,event);" type="text" size="3" value="<s:property value="%{#cartItem.goodsCount}"/>"/> 
                                                                  <span class="numadjust increase" onclick="Cart.ItemNumUpdate($(this).getPrevious('input'),1,event);"></span>
                                                                  <span class="numadjust decrease" onclick="Cart.ItemNumUpdate($(this).getPrevious('input'),-1,event);"></span>
                                                                  -->
                                                                  <input id="goodsCount<%=index %>" name="goodsCount" class="_x_ipt textcenter" onchange="goodsCountChange(<%=index %>)" type="text" size="3" value="<s:property value="%{#cartItem.goodsCount}"/>"/>
                                                                  <span class="numadjust increase"  onclick="countIncrease(<%=index %>);"></span>
                                                                  <span class="numadjust decrease"  onclick="countDecrease(<%=index %>)"></span>
                                                            </div>
                                                         </td>
                                                         <td class="itemTotal fontcolorRed">￥<span id="oneGoodsTotalPrice<%=index %>">${cartItem.goods.price * cartItem.goodsCount }</span></td>
                                                         <td><span class="lnk quiet fontcolorRed" >
                                                              
                                                             <a style="width: 120px; height: 120px;" href="${pageContext.request.contextPath }/member/cartAction_cartItemDelete.action?goodsId=<s:property value="%{#cartItem.goods.goodsId}"/>" >
                               <img style='background-position: 0px -27px; width: 13px; height: 13px; background-image: url("/myShangCaiWang/themes/green/bundle.gif"); background-repeat: no-repeat;' alt="删除" src="/myShangCaiWang/themes/green/transparent.gif">
                           		</a>
                                                            </span></td>
                                                            
                                               
                                                      </tr>
                                                       <%index++; %>
                                                 	  </s:iterator> 
                                                 	  </div>
                                                 
                                                   </tbody>
                                                   
                     </table>
                     
                     <input type="hidden" id="maxIndex" value="<%=index%>"/>
                     
                     
                     
                     
                     
                     
                     
                  </div>
                  <div class="span-auto" style="width: 45%;"></div>
                  <div class="floatRight" style="width: 45%;">
                     <div id="cartTotal">
                        <div class="division total-item" id="cart-total-item" style="display: none;">
                           <table width="100%" class="liststyle_data" cellspacing="0" cellpadding="3">
                              <colgroup>
                                 <col class="span-auto">
                                    <col class="span-2">
                                       <tbody>
                                          <!--  -->
                                       </tbody>
                           </table>
                        </div>
                        <table width="100%" class="liststyle_data" cellspacing="0" cellpadding="3">
                           <colgroup>
                              <col class="span-auto">
                                 <col class="span-2">
                                    <tbody>
                                       <tr>
                                          <th align="right"><span style="color: rgb(0, 0, 0); font-size: 14px;">商品总额：</span></th>
                                          <td><span id="totalPriceInBody" class="totalprice price1" style="padding-right: 15px;">￥${session.totalPrice }</span></td>
                                       </tr>
                                    </tbody>
                        </table>
                     </div>
                  </div>
                  <div class="clear"></div>
               </div>
               <div class="CartBtn clearfix" style="margin-bottom: 5px;">
                  <div class="span-auto">
                     <a class="actbtn btn-return" href="?gallery-6.jsp">«继续购物</a>
                  </div>
                  <div class="span-auto">
                     <a class="actbtn btn-clearcat" id="clearCart" href="javascript:void(0);" onclick="clearCart()">清空购物车</a>
                  </div>
                  <div class="span-auto"></div>
                  <div class="span-auto floatRight">
                     <input class="actbtn btn-next" type="submit" value="下单结算»">
                  </div>
               </div>
            </form>
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
