<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/validate/validate.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/validate/validateMessage_zh_CN.js">
	
</script>

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/kindeditor/themes/default/default.css" />
<script charset="utf-8"
	src="${pageContext.request.contextPath }/kindeditor/kindeditor-min.js"></script>
<script charset="utf-8"
	src="${pageContext.request.contextPath }/kindeditor/lang/zh_CN.js"></script>
<script type="text/javascript">
	//客户端数据有效性检查
	$().ready(function() {
		$("#goodsForm").validate({
			rules : {
				goodsName : {
					required : true,
				},

				price : {
					required : true,
				}
			},

			submitHandler : function(form) {
				form.submit();
				alert('请求已提交');
				opener.location.reload();
				window.close();
			}
		}

		);

	});
</script>
<script type="text/javascript">
	function selectClassify() {
		//获取选中的大类的id
		var categoryId = $("#category").val();
		if (!categoryId) {
			alert(123456);
			//空值，直接返回
			return;
		} else {
			//利用ajax请求来获取数据
			var url = "${pageContext.request.contextPath}/goods/goodsAction_getClassifyById.action";

			$.post(url, {
				"categoryId" : categoryId,
				"timestamp" : new Date().getTime()
			}, function(data) {

				addTable(data);
			});
		}
	}

	function addTable(classifyArray) {

		//先清空旧数据
		$("#classifyTr").empty();
		//遍历数组
		var html = "<td></td><td>";
		for ( var i in classifyArray) {
			var classify = classifyArray[i];

			html += ' <input type="checkbox" name="classify" value="'+classify.classifyId+'"/>'
					+ classify.classifyName;
		}
		html += "</td>";

		$("#classifyTr").append(html);
	}
</script>


<script>
	//默认是利用php来上传文件，在此处添加下面的这段代码后将会利用jsp来上传文件
	KindEditor
			.ready(function(K) {
				K
						.create(
								'#detail',
								{
									'items' : [ 'source', '|', 'undo', 'redo',
											'|', 'preview', 'template', 'cut',
											'copy', 'paste', 'plainpaste',
											'wordpaste', '|', 'justifyleft',
											'justifycenter', 'justifyright',
											'justifyfull', 'insertorderedlist',
											'insertunorderedlist', 'indent',
											'outdent', 'subscript',
											'superscript', 'clearhtml',
											'quickformat', 'selectall', '|',
											'fullscreen', '/', 'formatblock',
											'fontname', 'fontsize', '|',
											'forecolor', 'hilitecolor', 'bold',
											'italic', 'underline',
											'strikethrough', 'lineheight',
											'removeformat', '|', 'image',
											'insertfile', 'table', 'hr',
											'emoticons', 'map', 'code',
											'pagebreak', 'link', 'unlink' ],
									uploadJson : '${pageContext.request.contextPath }/GoodsServlet',
									fileManagerJson : '${pageContext.request.contextPath }/kindeditor/jsp/file_manager_json.jsp',
									allowFileManager : true,
									afterCreate : function() {
										this.sync();
									},
									afterBlur : function() {
										this.sync();
									}
								});
			});
</script>


<script type="text/javascript">
	//服务器端数据有效性检查，检查账号的唯一性，利用ajax
	function checkUnique(dom) {
		//获取参数
		var value = $(dom).val();
		
		if (value) {
			$
					.post(
							"${pageContext.request.contextPath }/goods/goodsAction_checkUnique.action",
							{
								'goodsName' : value
							},
							function(data) {
								var rightImg = $("#rightImg");
								if (data == 'true') {
									//如果账号是唯一的，显示对号小图标
									rightImg.css('display', 'inline');
									rightImg
											.attr("src",
													'${pageContext.request.contextPath }/images/20160106/right.png');
									$(dom).after(accountImg);
								} else {
									rightImg.removeAttr("src");
									alert("该商品名称已经存在");
								}

							});
		}
		;
	}

</script>

<title>添加商品</title>
</head>
<body>
	<div>
		<form id="goodsForm"
			action="${pageContext.request.contextPath}/goods/goodsAction_add.action"
			method="post" enctype="multipart/form-data">
			<div style="color: red;">${message }</div>
			<table>
				<tr>
					<td>商品名称</td>
					<td><input type="text" name="goodsName" onblur="checkUnique(this)"/>
					<img id="rightImg" style="display:none"/>
					</td>
				</tr>
				<tr>
					<td>价格</td>
					<td><input type="text" name="price" />
					</td>
				</tr>
				<tr>
					<td>可获积分</td>
					<td><input type="text" name="grade" />
					</td>
				</tr>
				<tr>
					<td>计量单位</td>
					<td><input type="text" name="weight" />
					</td>
				</tr>
				<tr>
					<td>商品图片</td>
					<td><input type="file" name="upload" />
					</td>
				</tr>

				<tr>
					<td>商品描述</td>
					<td><textarea name="detail" id="detail"
							style="width: 500px; height: 160px; padding: 1;FONT-FAMILY: 宋体; FONT-SIZE: 9pt">
				</textarea>
					</td>
				</tr>

				<tr>
					<td>选择商品大类</td>
					<td><s:select onchange="selectClassify()" emptyOption="true"
							name="category" list="%{#request.categoryList}"
							listKey="categoryId" listValue="categoryName"></s:select></td>
				</tr>

				<tr id="classifyTr"></tr>

				<tr>
					<td></td>
					<td><input type="submit" value="添加" />
					</td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>