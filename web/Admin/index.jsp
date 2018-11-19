<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<%
    String adminaccount = String.valueOf(session.getAttribute("adminName"));
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>云印享后台管理</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="shortcut icon" href="<%=path%>/Admin/favicon.ico" type="image/x-icon"/>
    <link rel="stylesheet" href="<%=path%>/layui/otherCss/css/font.css">
    <link rel="stylesheet" href="<%=path%>/layui/otherCss/css/weadmin.css">
    <script type="text/javascript" src="<%=path%>/layui/layui.js" charset="utf-8"></script>

</head>

<body>
<input hidden value="<%=adminaccount%>" id="adminaccount">
<!-- 顶部开始 -->
<div class="container">
    <div class="logo">
        <a href="<%=path%>/Admin/index.jsp">云印享管理平台</a>
    </div>
    <div class="left_open">
        <i title="展开左侧栏" class="iconfont">&#xe699;</i>
    </div>

    <ul class="layui-nav right" lay-filter="">
        <li class="layui-nav-item">
            <a href="javascript:;"><%=adminaccount%>
            </a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <%--<a onclick="WeAdminShow('切换帐号','/adminlogout.ro')">切换帐号</a>--%>
                </dd>
                <dd>
                    <a class="loginout" href="/adminlogout.ro">退出</a>
                </dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index">
            <a href="<%=path%>/front/in/index.jsp">前台首页</a>
        </li>
    </ul>

</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe6b8;</i>
                    <cite>用户管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <%--在这里，href表示servlet中写的地址，main代表ifream--%>
                        <a _href="/customerlist.ro" target="jumpage">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>用户列表</cite>

                        </a>
                    </li>
                    <li>
                        <a _href="/customeRec.ro" target="jumpage">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>小黑屋</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe698;</i>
                    <cite>商家管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/shoplist.ro" target="jumpage">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>店铺列表</cite>
                        </a>
                    </li>
                    <li>
                        <a _href="/shopRec.ro" target="jumpage">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>商家黑名单</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont">&#xe723;</i>
                    <cite>订单管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i>
                </a>
                <ul class="sub-menu">
                    <li>
                        <a _href="/adminQueryOrder.ro" target="jumpage">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>订单列表</cite>
                        </a>
                    </li>
                </ul>
            </li>
            <a class="sub-menu" style="font-size: 14px;    padding: 10px 15px 10px 20px;    display: block;    cursor: pointer;" href="javascript:void(0)" onclick="location.href='/adminlogout.ro'">
                <i class="iconfont" style="padding-right: 10px; line-height: 14px;">&#xe6ce;</i>
                <cite>退出系统</cite>
            </a>

        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="wenav_tab" id="WeTabTip" lay-allowclose="true">
        <ul class="layui-tab-title" id="tabName">
            <li>我的桌面</li>
        </ul>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe name="jumpage" src='<%=path%>/Admin/welcome.jsp' frameborder="0" scrolling="yes"
                        class="weIframe"></iframe>
            </div>
        </div>
    </div>
</div>
<div class="page-content-bg"></div>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->
<!-- 底部开始 -->
<div class="footer">
    <div class="copyright">Copyright ©2018 Ambition v1.0 All Rights Reserved</div>
</div>
<!-- 底部结束 -->
<script type="text/javascript">
    layui.config({
        base: '<%=path%>/layui/otherJs/js/'
        , version: '101100'
    }).use('admin');
    layui.use(['jquery', 'admin'], function () {
        var $ = layui.jquery;
        $(function () {
            var acc = $("#adminaccount").val();
            if (acc == "null") {
                window.location.href = '/adminlogout.ro';
                return false;
            } else {
                layer.msg("欢迎管理员：" + $("#adminaccount").val() + " 登陆后台管理")
                return false;
            }
        });
    });

</script>
</body>
<!--Tab菜单右键弹出菜单-->
<ul class="rightMenu" id="rightMenu">
    <li data-type="fresh">刷新</li>
    <li data-type="current">关闭当前</li>
    <li data-type="other">关闭其它</li>
    <li data-type="all">关闭所有</li>
</ul>

</html>