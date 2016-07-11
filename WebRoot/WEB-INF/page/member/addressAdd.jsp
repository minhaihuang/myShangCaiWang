<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加地址信息</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-1.8.3.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/validate/validate.js">
	
</script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/validate/validateMessage_zh_CN.js">
	
</script>
</head>

<script type="text/javascript">
	//客户端数据有效性检查
	$().ready(function() {
		$("#addressForm").validate({
			rules : {
				userName : {
					required : true,
				},

				location : {
					required : true,
				},
				mobile : {
					required : true,
				}
			},

			submitHandler : function(form) {
				alert('请求提交中');
				form.submit();
				
				//opener.location.reload();
				//window.close();
			}
		}

		);

	});
</script>
<body>

	<div style="margin-left: 30%">

		<form id="addressForm"
			action="${pageContext.request.contextPath }/member/addressAction_add.action"
			method="post">
			<table>

				<tr>
					<td>收件人</td>
					<td><input type="text" name="userName" /></td>
				</tr>
				<tr>
					<td>地址</td>
					<td><input type="text" name="location" /></td>
				</tr>
				<tr>
					<td>手机号码</td>
					<td><input type="text" name="mobile" /></td>
				</tr>

				<tr>
					<td>固定号码</td>
					<td><input type="text" name="phone" /></td>
				</tr>

				<tr>
					<td>邮政编码</td>
					<td><input type="text" name="postNumber" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="添加" /></td>
				</tr>
			</table>
		</form>

	</div>
</body>
</html>