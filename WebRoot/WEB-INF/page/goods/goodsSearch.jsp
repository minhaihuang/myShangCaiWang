<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:include page="/head/head.jsp" />


<script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery-1.8.3.js"></script>

<script type="text/javascript">
	var $j = jQuery.noConflict(); 
	
	function addFavorite(index){
		
		//获取当前商品的id值
		var goodsId=$j('#goodsId'+index).val();
		var url="${pageContext.request.contextPath}/member/favoriteAction_addFavorite.action";
		$j.post(url,{'goodsId':goodsId},function(data){
			alert('加入收藏夹成功');
		});
		
	}
</script>


   <!-- 页面主题区域 -->
   <div id="main">

      <!-- 主题区域左侧 -->
      <jsp:include page="/head/left.jsp" />

      <!-- 主题区域右侧 -->
      <div id="right">
         <div class="banner2"></div>
         <div class="AllWrapInside clearfix">
            <div class="mainColumn pageMain">
               <div id="206">
                  <div class="Navigation position">
                     您当前的位置：
                     <span>
                        <a href="/myShangCaiWang/">首页</a>
                     </span>
                     <span>»</span>
                     <span>
                        <a href="/myShangCaiWang/"><s:property value="%{#request.categoryName}"/></a>
                     </span>
                     <span>»</span>
                     <span class="now"><s:property value="%{#request.classifyName}"/></span>
                  </div>
               </div>
               <div class="clear"></div>
               <div class="GoodsSearchWrap">
                  <div class="search_total">
                     总共找到 <font color="red"><s:property value="%{#request.goodsList.size}"/></font> 个商品
                  </div>

				<%int index=0; %>
				<s:iterator value="%{#request.goodsList}" var="goods">
                  <div style="width: 100%;">
                     <div class="items-gallery " style="width: 23.6%; float: left;">
                        <div class="goodpic" style="width: 125px; height: 125px;">
                        <input type="hidden" id="goodsId<%=index %>" name="goodsId" value="<s:property value="%{#goods.goodsId}"/>"/>
                        
                           <a style="width: 120px; height: 120px;" href="${pageContext.request.contextPath }/goods/goodsAction_goodsDetail.action?goodsId=<s:property value="%{#goods.goodsId}"/>" target="_blank">
                              <img src=" ${pageContext.request.contextPath }<s:property value="%{#goods.goodsMinImgPath}"/>"/>
                           </a>
                         <!--  <s:property value="%{#goods.goodsMinImgPath}"/> --> 
                          
                        </div>
                        <div class="goodinfo">
                           <div class="entry-content" style="width: 100%">
                              <div style="margin: 0 auto">
                                 <h6>
                                    <a title="<s:property value="%{#goods.goodsName}"/>" class="entry-title" href="${pageContext.request.contextPath }/goods/goodsAction_goodsDetail.action?goodsId=<s:property value="%{#goods.goodsId}"/>"><s:property value="%{#goods.goodsName}"/>（<s:property value="%{#goods.weight}"/>克/盒）</a>
                                 </h6>
                              </div>
                              <div>
                                 <span class="price1">￥<s:property value="%{#goods.price}"/></span>
                              </div>
                              <div>
                                 <ul class="button">
                                    <li class="addcart"><a title="加入购物车" class="listact" href="/myShangCaiWang/member/cartAction_buy.action?goodsId=<s:property value="%{#goods.goodsId}"/>"   type="g" buy="1376">加入购物车</a></li>
                                    <li title="<s:property value="%{#goods.goodsName}"/>" class="star-on" star="1376"><a title="加入收藏" class="listact" onclick="addFavorite(<%=index %>)" href="javascript:void(0);"  rel="nofollow">加入收藏</a></li>
                                 </ul>
                              </div>
                           </div>
                        </div>
                     </div>
                     <%index++; %>
                     </s:iterator>
                     

                  </div>
               </div>

            </div>
            <div class="sideColumn pageSide"></div>
         </div>
      </div>


  <jsp:include page="/head/foot.jsp"></jsp:include>