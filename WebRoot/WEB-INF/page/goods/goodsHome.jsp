<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<title>商品管理</title>
<link href="${pageContext.request.contextPath }/css/Style.css"
	type="text/css" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/script/dataTables/css/jquery.dataTables.css">
<script type="text/javascript" language="javascript"
	src="${pageContext.request.contextPath }/script/dataTables/js/jquery.js"></script>
<script type="text/javascript" language="javascript"
	src="${pageContext.request.contextPath }/script/dataTables/js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript"
	src="${pageContext.request.contextPath }/script/util.js"></script>
<script type="text/javascript" language="javascript"
	src="${pageContext.request.contextPath }/script/dataTables/fnReloadAjax.js"></script>
</head>
<style type="text/css">
.tableClass tr {
	text-align: center;
}

.tableClass tr td {
	line-height: 5px;
	background-color: #f5fafe;
	border-top: gray 1px solid;
	border-left: gray 1px solid;
}

.tableClass thead tr td {
	font-weight: bold;
	line-height: 0px;
	border-bottom: none;
	background-image:
		url('${pageContext.request.contextPath }/images/tablehead.jpg');
}

.tableClass  img {
	margin-top: -6px;
	margin-bottom: -6px;
}
</style>
<script type="text/javascript">
	var options = {
		"oLanguage" : {
			"sUrl" : "${pageContext.request.contextPath }/script/dataTables/zh_CN.txt"
		},
		"bProcessing" : true,

		"columns" : [{
			"data" : "goodsName"
		}, {
			"data" : "price"
		}, {
			"data" : "weight"
		}, {
			"data" : "grade"
		}, {
			"data" : "xxx"//这一行主要是用来显示删除的功能
		} ],
		"bPaginate" : true, //翻页功能
		"bLengthChange" : false, //改变每页显示数据数量
		"bFilter" : false, //过滤功能
		"bInfo" : true,//页脚信息
		"bSort" : false, //排序功能
		"bStateSave" : true,//状态保存开关,使用cookie记录当前页码,即是页面关闭,重新打开时还是上次的页码
		//"bDestory":true,
		//ajax服务器分页逻辑
		bServerSide : true, //开启服务器支持
		sAjaxSource : "${pageContext.request.contextPath }/goods/goodsAction_page.action?timestamp="
				+ new Date().getTime(),//指定请求路径
		fnRowCallback : function(nRow, aData, iDisplayIndex) {
			var deleteUrl = "${pageContext.request.contextPath }/goods/goodsAction_goodsDelete.action";
			var updateUrl = "${pageContext.request.contextPath }/goods/goodsAction_goodsEdit.action";
			var content = "<a  href='" + deleteUrl + "?goodsId=" + aData.goodsId
					+ "'>删除</a>   <a href='" + updateUrl + "?goodsId=" + aData.goodsId
					 + "'>修改</a>";
			//把一行的最后一个单元格里的内容替换为删除超链接 和 修改超链接
			$(":last-child", nRow).html(content);

			nRow.onmouseover = function() {
				$('td', this).css('background-color', 'white');
			}
			nRow.onmouseout = function() {
				$('td', this).css('background-color', '#F5FAFE');
			}
			return nRow;
		},
		fnServerParams : function(aoData) {
			var value = $("#goodsName").val();
			//...其他的js代码确定value的值
			aoData.push({
				"name" : "goodsName",
				"value" : value
			});
		},
		//需要从服务器请求数据时调用(如何使用ajax进行请求)
		fnServerData : function(sSource, aoData, fnCallback, oSettings) {
			oSettings.jqXHR = $.ajax({
				"dataType" : 'json',
				"type" : "POST",
				"url" : sSource,
				"data" : aoData,
				"success" : fnCallback
			});
		}
	}
	//显示表格样式，开启哪些功能
	var pageTables;
	$(document).ready(function() {
		
		pageTables = $('#table').dataTable(options);
		
	});

	//使用ajax刷新表格
	function query() {
		
		pageTables.fnReloadAjax();
	}

	
</script>


<body>
	<div align="center">
		<div style="width:90%;background-color: #f5fafe;">
			<div style="height: 10px;"></div>
			<div
				style="font: bold 12pt 宋体 ;background-image:url('${pageContext.request.contextPath}/images/b-info.gif')"
				align="center">商品信息管理</div>
			<div align="left">
				<form id="exportForm" method="post">
					商品名称<input name="goodsName" type="text" id="goodsName" />
				</form>
			</div>
			<div style="height: 10px"></div>
			<div>
				<div
					style="float: left;width:80px;background-image: url('${pageContext.request.contextPath }/images/cotNavGround.gif')">
					<img src="${pageContext.request.contextPath }/images/yin.gif"
						width="15" />商品列表
				</div>
				<div align="right" style="float: right;">
					<button onclick="query()">查询</button>

					<button
						onclick="openWindow('${pageContext.request.contextPath }/goods/goodsAction_goodsAdd.action','800','400')">添加商品</button>
				</div>
				<div style="clear: both;"></div>
			</div>
			<table id="table" class="tableClass">
				<thead style="width: 100%;">
					<tr>
						<td>商品名称</td>
						<td>价格</td>
						<td>计量单位/克</td>
						<td>可获积分</td>
						<td>操作</td>
					</tr>
				</thead>
			</table>

		</div>
	</div>
	<div id="tt"></div>
</body>
</html>
