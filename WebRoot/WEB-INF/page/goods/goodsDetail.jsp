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
<script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery-1.8.3.js"></script>

<script type="text/javascript">
	function addFavorite(){
		//获取当前商品的id值
		var goodsId=$('#goodsId').val();
		var url="${pageContext.request.contextPath}/member/favoriteAction_addFavorite.action";
		$.post(url,{'goodsId':goodsId},function(data){
			alert('加入收藏夹成功');
		});
		
	}
</script>
</head>

<body id="warp">
   <!-- 页面主题区域 -->
   <div id="main">
	
      <!-- 主题区域左侧 -->
      <jsp:include page="/head/left.jsp" />

      <!-- 主题区域右侧 -->
      <div id="right">
         <div class="banner2"></div>
         <div class="AllWrapInside clearfix">
            <div class="mainColumn pageMain">

               <div class="GoodsInfoWrap">
                  <div id="goods-viewer">
                     <table width="100%">
                        <tbody>
                           <tr>
                              <td align="center" valign="top">
                                 <div class="goodspic">
                                    <div class="goods-detail-pic">
                                       <img style="width: 300px; height: 300px;" src="${pageContext.request.contextPath }<s:property value="%{#request.goods.goodsMaxImgPath}"/>"/>
                                    </div>
                                 </div>
                              </td>
                              <td width="60%" valign="top">
                                 <form class="goods-action" action="${pageContext.request.contextPath }/member/cartAction_buy.action" method="post"  gnotify="?product-gnotify.jsp">
                                   	<input type="hidden" id="goodsId" name="goodsId" value="<s:property value="%{#request.goods.goodsId}"/>"/>
                                    <h1 class="goodsname"><s:property value="%{#request.goods.goodsName}"/></h1>
                                    <ul class="goodsprops clearfix">
                                       <li><span>商品编号：</span><s:property value="%{#request.goods.goodsId}"/></li>
                                       <li><span>计量单位：</span> <s:property value="%{#request.goods.weight}"/>克/盒</li>
                                       <li><span>所得积分：</span> <span id="goodsScore"><s:property value="%{#request.goods.grade}"/></span></li>
                                    </ul>
                                    <ul class="goods-price list">
                                       <li><span>销售价：</span> <span class="price1"> ￥<s:property value="%{#request.goods.price}"/></span></li>
                                    </ul>
                                    <div class="hightline ">
                                       <div class="hightbox">
                                          <div class="buyinfo">
                                             <table width="auto">
                                                <tbody>
                                                   <tr>
                                                      <td><span>购买数量：</span></td>
                                                      <td>
                                                         <div class="Numinput">
                                                            <input name="goods[num]" type="text" size="5" value="1">
                                                               <span class="numadjust increase"></span>
                                                               <span class="numadjust decrease"></span>
                                                         </div>
                                                      </td>
                                                      <td><span style="display: none;">
                                                            &nbsp;&nbsp;(库存
                                                            <span class="store">9999+</span>
                                                            )
                                                         </span></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                          </div>
                                          <input name="cat_id" type="hidden" value="6">
                                             <input name="goods[goods_id]" type="hidden" value="619">
                                                <input name="goods[pmt_id]" type="hidden" value="">
                                                   <div class="btnBar clearfix">
                                                      <div class="floatLeft">
                                                         <input class="actbtn btn-buy" type="submit" value="加入购物车">
                                                      </div>
                                                      <div>
                                                         <input class="actbtn btn-shouc" onclick="addFavorite()" type="button" value="收藏此商品">
                                                      </div>
                                                   </div>
                                       </div>
                                    </div>
                                 </form>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                     <div style="clear: both;"></div>
                     <div class="goods-detail-tab clearfix">
                        <div class="goodsDetailTab active">
                           <span>商品详情</span>
                        </div>
                     </div>
                     <div class="clear"></div>
                     <div class="section pdtdetail" tab="商品详情">
                        <div class="goodsprop_ultra clearfix"></div>
                        <div class="body indent uarea-output" id="goods-intro">
                           <div style="margin-left: 0px;">
                              <strong> <span style="font-family: 宋体; font-size: 12pt;">
                                    有机农产品在生产加工过程中禁止使用农药、化肥、激素等人工合成物质，并且不允许使用基因工程技术，按照国家有机食品发展中心（
                                    <span lang="EN-US">OFDC)</span>
                                    的要求进行有机农业生产，是完全健康的安全农产品。 <br> <br>
                                 </span>
                              </strong> 
                              <font size="2"> 
                              
                              <font size="3" style="color: rgb(255, 0, 0);"> <strong><s:property value="%{#request.goods.goodsName}"/></strong>
                              </font>
                              
                              </font> 
                              
                  
                              
                              <br style="font-weight: bold;"/> 
                              
                              <font size="2"> 
                              <font size="3" style="color: rgb(255, 0, 0);"> 
                              <span style="color: rgb(106, 168, 79); font-weight: bold;">商品介绍</span>
                              	<br/>
                              	<br/>
                                    </font>
                                    <s:property value="%{#request.goods.detail}"/>
                                 </font> 
                                 
                                 <br> 
                                 
                                 <font size="2" style="font-weight: normal;">
                                 
                                 
                                 </font> 
                                 <br style="font-weight: normal;"/> 
                                           <br> <br> <br> 
                                  <img src="/myShangCaiWang/themes/green/distribution.jpg"/> <br>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <script>
                                var buycoutText = $E('#goods-viewer .buyinfo input[type=text]').addEvent('keydown', function(e) {
                                  if ($A(keyCodeFix).include(e.code).length > 25) {
                                    e.stop();
                                  }
                                });
                                var getStore = function() {

                                  return $E('#goods-viewer .buyinfo .store').get('text').toInt()

                                };

                                buycoutText.addEvent('keyup', function(e) {

                                  if (getStore() < this.value)
                                    this.value = getStore();
                                  if (!this.value || this.value.toInt() < 1)
                                    this.value = 1;
                                });
                                /*购买数量调节*/
                                $$('#goods-viewer .buyinfo .numadjust').addEvent('click', function(e) {
                                  var countText = $E('#goods-viewer .buyinfo input[name^=goods[num]');
                                  if (this.hasClass('increase')) {
                                    countText.set('value', (countText.value.toInt() + 1).limit(1, getStore()));
                                  } else {
                                    countText.set('value', (countText.value.toInt() - 1).limit(1, getStore()));
                                  }
                                  this.blur();
                                });

                                $$('#goods-viewer .buyinfo .numadjust').addEvents({
                                  'mousedown' : function() {
                                    this.addClass('active');
                                  },
                                  'mouseup' : function() {
                                    this.removeClass('active');
                                  }
                                });
                              </script>
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