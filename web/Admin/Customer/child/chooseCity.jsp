<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
String path=request.getContextPath();
%>
<html>

	<head>
		<meta http-equiv="Content-Language" content="zh-CN" />
		<meta charset="utf-8">
		<title>地区选择</title>
		<meta name="Author" content="topoadmin" />
		<meta name="keywords" content="" />
		<meta name="description" content="" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, minimal-ui">
		<link rel="stylesheet" type="text/css" href="<%=path%>/layui/address-master/dist/amazeui.min.css" />
		<link rel="stylesheet" type="text/css" href="<%=path%>/layui/address-master/dist/amazeui.address.css" />
		<style type="text/css">
			form>h1 {
				color: #D83832;
				font-size: 20px;
			}
		</style>
	</head>

	<body>

		<%--<form class="am-form am-padding-sm">--%>
			<div class="am-form-group am-input-group" id="addresses2">
				<input readonly type="text" name="nickname" id="address2" class="am-form-field am-radius" placeholder="请选择地址" required="" >
			</div>
		<%--</form>--%>


		<script src="<%=path%>/layui/address-master/dist/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=path%>/layui/address-master/dist/amazeui.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=path%>/layui/address-master/dist/iscroll.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="<%=path%>/layui/address-master/dist/address.js" type="text/javascript" charset="utf-8"></script>

		<script type="text/javascript">
			$(function() {
				document.addEventListener('touchmove', function (e) {
					e.preventDefault();
				}, false);
				//	带底部的
				$("#addresses2").address({
					prov: "广东省",
					city: "清远市",
					district: "阳山县",
					scrollToCenter: true,
					footer: true,
					selectEnd: function(json) {
						console.log(JSON.stringify(json));
					}
				});
			});
		</script>
	</body>

</html>