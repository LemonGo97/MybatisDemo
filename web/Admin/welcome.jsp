<%@ page import="java.net.InetAddress" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
 <%
	 String path = request.getContextPath();
	 String basePath = request.getServerName();
 %>
<%
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

	java.util.Date currentTime = new java.util.Date();//得到当前系统时间

	String str_date1 = formatter.format(currentTime); //将日期时间格式化
//	String str_date2 = currentTime.toString(); //将Date型日期时间转换成字符串形式

	String ip = InetAddress.getLocalHost().getHostAddress();
	String hostname=InetAddress.getLocalHost().getHostName();

	int port=request.getServerPort();
%>

<html>

	<head>
		<meta charset="UTF-8">
		<title>云印享打印服务平台后台管理</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
		<link rel="stylesheet" href="<%=path%>/layui/otherCss/css/font.css">
		<link rel="stylesheet" href="<%=path%>/layui/otherCss/css/weadmin.css">
	</head>

	<body>
		<div class="weadmin-body">
			<blockquote class="layui-elem-quote">欢迎使用云印享打印服务平台后台管理</blockquote>
			<div class="layui-fluid" style="overflow: hidden;">
				<div class="layui-row layui-col-space15">

					<div class="layui-col-md4">
						<div class="layui-card">
							<div class="layui-card-header">
								系统说明：
								<i class="layui-icon" style="color: #FF5722;">&#xe756;</i>
							</div>
							<div class="layui-card-body layui-text weadmin-text">
								<p>云印享打印服务系统，旨在为用户创造一个更好的服务体验</p>
								<p>如有需要，请移步前台&nbsp;&nbsp;用户（商家）首页</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="layui-col-lg12 layui-collapse" style="border: none;">
				<div class="layui-col-md12">
						
					
					<!--统计信息展示-->
					<fieldset class="layui-elem-field" style="padding: 5px;">

						<!--<legend>信息统计</legend>-->
						<blockquote class="layui-elem-quote font16">信息统计</blockquote>
						<div class="">
							<table class="layui-table">
								<thead>
								<tr>
									<th colspan="2" scope="col">服务器信息</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<th width="30%">服务器计算机名</th>
									<td><span id="lbServerName"><%=hostname%></span></td>
								</tr>
								<tr>
									<td>服务器IP地址</td>
									<td><%=ip%></td>
								</tr>
								<tr>
									<td>服务器域名</td>
									<td><%=basePath%></td>
								</tr>
								<tr>
									<td>服务器端口 </td>
									<td><%=port%></td>
								</tr>
								<tr>
									<td>系统当前时间 </td>
									<td id="firstTime"><%=str_date1%></td>
								</tr>
								</tbody>
							</table>
						</div>
					</fieldset>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="<%=path%>/layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		layui.extend({
			admin: '<%=path%>/layui/otherJs/js/admin',
		});
		layui.use(['jquery', 'element','util', 'admin', 'carousel'], function() {
			var carousel = layui.carousel;
			//建造实例
			carousel.render({
				elem: '.weadmin-shortcut'
				,width: '100%' //设置容器宽度				
				,arrow: 'none' //始终显示箭头	
				,trigger: 'hover'
				,autoplay:false
			});
			
			carousel.render({
				elem: '.weadmin-notice'
				,width: '100%' //设置容器宽度				
				,arrow: 'none' //始终显示箭头	
				,trigger: 'hover'
				,autoplay:true
			});

		});
	</script>

</html>