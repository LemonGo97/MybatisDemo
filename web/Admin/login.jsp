<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path=request.getContextPath();
    String bashpath=request.getContextPath();
%>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>后台管理系统</title>
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon" />
    <link rel="stylesheet" href="<%=path%>/layui/otherCss/css/font.css">
	<link rel="stylesheet" href="<%=path%>/layui/otherCss/css/weadmin.css">
    <script src="<%=path%>/layui/layui.js" charset="utf-8"></script>

</head>
<body class="login-bg">
    
    <div class="login">
        <div class="message">管理登录</div>
        <div id="darkbannerwrap"></div>
        
        <form method="post" class="layui-form" action="/adminLogin.loro">
            <input name="username" placeholder="用户名"  type="text" lay-verify="required" class="layui-input" >
            <hr class="hr15">
            <input name="password" lay-verify="required" placeholder="密码"  type="password" class="layui-input">
            <hr class="hr15">
            <input class="loginin" value="登录" lay-submit lay-filter="login" style="width:100%;" type="submit">
            <hr class="hr20" >
        </form>
    </div>

    <script src="<%=path%>/layui/layui.all.js"></script>
    <script type="text/javascript">
        var errori ='<%=request.getParameter("error")%>';
        if(errori=='yes'){
            layer.msg("登录失败,请检查你的用户名和密码!");
        }
    </script>  
    <!-- 底部结束 -->
</body>
</html>