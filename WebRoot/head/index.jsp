<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<jsp:include page="/head/head.jsp" />

   <!-- 页面主题区域 -->
   <div id="main">
     
      <!-- 主题区域左侧 -->
     	<jsp:include page="/head/left.jsp" />

      <!-- 主题区域右侧 -->
      <div id="right">
      
         <!-- 首页主题宣传区域、焦点图 -->
         <div class="banner">
            <div id="358">
               <div id="wid358_body">
                  <div id="wid358_img" class="imgout"></div>
                  <div id="wid358_btn"></div>
                  <div id="wid358_loading">
                     <div id="wid358_loadingbar"></div>
                  </div>
               </div>
            </div>
            <!-- 首页主题宣传区域 效果控制js代码-->
            <script type="text/javascript">
                          new Asset.javascript('/myShangCaiWang/script/plugins/widgets/duceflash.pack.js', {
                            id : 'duceflash_js',
                            onload : function() {
                              $('wid358_body').fn = new DuceFlash({
                                wid : 'wid358',
                                type : 1,
                                done : 5000,
                                move : 0,
                                duration : 500,
                                zoom : 0,
                                width : 737,
                                height : 342,
                                imgw : 737,
                                imgh : 342,
                                btn : {
                                  w : 19,
                                  h : 19,
                                  mar : "left:4",
                                  pos : 19
                                },
                                imgs : [ {
                                  img : "/myShangCaiWang/images/20160106/dc76ca40225707fd.jpg",
                                  href : "/myShangCaiWang/",
                                  target : ""
                                }, {
                                  img : "/myShangCaiWang/images/20160106/7864b61130ba301a.jpg",
                                  href : "/myShangCaiWang/",
                                  title : "橙子",
                                  target : ""
                                }, {
                                  img : "/myShangCaiWang/images/20160106/10efdcb8c9782dad.jpg",
                                  href : "/myShangCaiWang/",
                                  title : "送米",
                                  target : ""
                                }, {
                                  img : "/myShangCaiWang/images/20160106/23980c2c7d22ad30.jpg",
                                  href : "/myShangCaiWang/",
                                  target : ""
                                }, {
                                  img : "/myShangCaiWang/images/20160106/24285a5ac61dd766.jpg",
                                  href : "/myShangCaiWang/",
                                  title : "猪肉",
                                  target : ""
                                } ]
                              });
                            }
                          });
                        </script>
         </div>
         
         <!-- 蔬菜展示区域 -->
         <div class="vegetable">
            <div class="vegetable-tit">
               <div class="vegetable-titl"></div>
               <div class="vegetable-titc">
                  <div id="182">
                     <a href="/myShangCaiWang" type="url">更多...</a>
                  </div>
               </div>
               <div class="vegetable-titr"></div>
            </div>
            <div class="vegetable-nr">
               <div class="vegetable-nr-pro">
                  <div id="184">
                     <div class="GoodsListWrap GoodsList GoodsShow">
                     
                     <%int index=0; %>
				<s:iterator value="%{#session.goodsListInSession}" var="goods">
                  
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
                     
                     
                      <!--  
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                           <tbody>
                         
                              <tr valign="top">
                              
                                 <td width="25%" class="item textcenter" id="item-1172"><a class="pic" style="width: 120px; height: 120px;" href="/myShangCaiWang/" target="_blank">
                                       <img alt="【平价菜】刺黄瓜" src="/myShangCaiWang/images/20160106/83950eb49fabf0c2.jpg" />
                                    </a>
                                    <div class="info">
                                       <div class="gname" style="height: 18px; line-height: 18px;">
                                          <a title="【平价菜】刺黄瓜" href="/myShangCaiWang/">【平价菜】刺黄瓜（500克/盒）</a>
                                       </div>
                                       <div class="clearfix">
                                          <div class="price textcenter">
                                             销售价:<em class="price1">￥6.5</em>
                                          </div>
                                       </div>
                                    </div></td>
                                 <td width="25%" class="item textcenter" id="item-617"><a class="pic" style="width: 120px; height: 120px;" href="/myShangCaiWang/" target="_blank">
                                       <img alt="紫山芋" src="/myShangCaiWang/images/20160106/c46a630ebb8b8044.jpg" />
                                    </a>
                                    <div class="info">
                                       <div class="gname" style="height: 18px; line-height: 18px;">
                                          <a title="紫山芋" href="/myShangCaiWang/">紫山芋（500克）</a>
                                       </div>
                                       <div class="clearfix">
                                          <div class="price textcenter">
                                             销售价:<em class="price1">￥5.0</em>
                                          </div>
                                       </div>
                                    </div></td>
                                 <td width="25%" class="item textcenter" id="item-127"><a class="pic" style="width: 120px; height: 120px;" href="/myShangCaiWang/" target="_blank">
                                       <img alt="【平价菜】丝瓜" src="/myShangCaiWang/images/20160106/b6578229cb550c00.jpg" />
                                    </a>
                                    <div class="info">
                                       <div class="gname" style="height: 18px; line-height: 18px;">
                                          <a title="【平价菜】丝瓜" href="/myShangCaiWang/">【平价菜】丝瓜（400-450克）</a>
                                       </div>
                                       <div class="clearfix">
                                          <div class="price textcenter">
                                             销售价:<em class="price1">￥4.9</em>
                                          </div>
                                       </div>
                                    </div></td>
                                 <td width="25%" class="item textcenter" id="item-92"><a class="pic" style="width: 120px; height: 120px;" href="/myShangCaiWang/" target="_blank">
                                       <img alt="藕" src="/myShangCaiWang/images/20160106/bf0fecf5a05f0259.jpg" />
                                    </a>
                                    <div class="info">
                                       <div class="gname" style="height: 18px; line-height: 18px;">
                                          <a title="藕" href="/myShangCaiWang/">藕（500克/包）</a>
                                       </div>
                                       <div class="clearfix">
                                          <div class="price textcenter">
                                             销售价:<em class="price1">￥15.0</em>
                                          </div>
                                       </div>
                                    </div></td>
                              </tr>
                              
                          
                           </tbody>
                        </table>-->
                     </div>
                  </div>
               </div>
               <div class="vegetable-nr-pic">
                  <div id="183">
                     <div class="AdvBanner">
                        <a href="/myShangCaiWang/" target="_self">
                           <img style="width: 175px; height: 350px;" src="/myShangCaiWang/images/20160106/8349e0ac4caa1728.jpg" />
                        </a>
                     </div>
                  </div>
               </div>
               <div class="clear"></div>
            </div>
         </div>
      </div>
   </div>


  <jsp:include page="/head/foot.jsp"></jsp:include>