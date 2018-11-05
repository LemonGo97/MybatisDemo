<%@page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="<%=path%>/after/static/css/font.css">
    <link rel="stylesheet" href="<%=path%>/after/static/css/weadmin.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <script src="<%=path%>/after/static/js/html5.min.js"></script>
    <script src="<%=path%>/after/static/js/respond.min.js"></script>
</head>

<body>
<script src="<%=path%>/after/static/js/html5.min.js"></script>
<script src="<%=path%>/after/static/js/respond.min.js"></script>
<div class="weadmin-nav">
			<span class="layui-breadcrumb">
        <a href="<%=path%>/">首页</a>
        <a href="">用户管理</a>
        <a>
          <cite>用户列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">&#x1002;</i></a>
</div>
<div id="testText">
    <marquee><font color="#ff2370" size="2">重要消息：系统将在今晚24:00分进行大规模升级，届时所有用户和商家都无法访问平台，请注意</font></marquee>
</div>
<div class="weadmin-body">

    <div class="layui-row" style="text-align:center;">
        <form id="customerform" class="layui-form layui-col-md12 we-search" method="get" action="<%=path%>/customerlist">
            <%--<div class=" layui-col-md12 we-search">--%>
            用户搜索：
            <div class="layui-inline">
                <input type="text" name="account" placeh
                       older="用户账号" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-inline">
                <input type="text" name="username" placeholder="用户名" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-inline">
                <input type="text" name="telephone" placeholder="电话号码" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-inline">
                <input class="layui-input" placeholder="最早注册时间" name="startdate" id="start">
            </div>
            <div class="layui-inline">
                <input class="layui-input" placeholder="最晚注册时间" name="enddate" id="end">
            </div>

            <button class="layui-btn" lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
            <%--</div>--%>
    </form>
    </div>
    <div class="weadmin-block">
        <button  class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
        <button class="layui-btn" onclick="WeAdminShow('添加用户','<%=path%>/after/pages/member/add.jsp',600,400)"><i
                class="layui-icon"></i>添加
        </button>
        <span class="fr" style="line-height:40px">共有${fn:length(messageList)} 个用户</span>
    </div>
    <table class="layui-table" id="memberList">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i
                        class="layui-icon">&#xe605;</i></div>
            </th>
            <th>ID</th>
            <th>账号</th>
            <th>姓名</th>
            <th>密码</th>
            <th>注册日期</th>
            <th>电话号码</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${messageList}" var="customer" varStatus="status">
            <tr data-id="${status.index + 1}">
                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" name="userId"  data-id="${customer.userId}"><i
                            class="layui-icon">&#xe605;</i></div>
                    <%--value="${customer.userId}"--%>
                        <%--<input  type="checkbox" lay-skin="primary">--%>
                </td>

                <td>${status.index + 1}</td>
                <td>${customer.account}</td>
                <td>${customer.username}</td>
                <td>${customer.password}</td>
                <td>${customer.createdate}</td>
                <td>${customer.telephone}</td>
                <td class="td-status">
                    <span class="layui-btn layui-btn-normal layui-btn-xs">已启用</span></td>
                <td class="td-manage">
                    <a onclick="member_stop(this,'10001')" href="javascript:;" title="启用">
                        <i class="layui-icon">&#xe601;</i>
                    </a>
                    <a title="编辑" onclick="WeAdminEdit('编辑','<%=path%>/after/pages/member/edit.jsp', 1, 600, 400)"
                       href="javascript:;">
                        <i class="layui-icon">&#xe642;</i>
                    </a>
                    <a onclick="WeAdminShow('修改密码','<%=path%>/after/pages/member/password.jsp',600,400)" title="修改密码"
                       href="javascript:;">
                        <i class="layui-icon">&#xe631;</i>
                    </a>
                    <a title="删除" onclick="member_del(this,'${customer.userId}')" href="javascript:;">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <div class="page">
        <div>
            <a class="prev" href="">&lt;&lt;</a>
            <a class="num" href="">1</a>
            <span class="current">2</span>
            <a class="num" href="">3</a>
            <a class="num" href="">489</a>
            <a class="next" href="">&gt;&gt;</a>
        </div>
    </div>
</div>
<!--<script type="text/javascript" src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>-->
<script src="<%=path%>/after/lib/layui/layui.js" charset="utf-8"></script>
<script src="<%=path%>/after/static/js/eleDel.js" type="text/javascript" charset="utf-8"></script>
</body>

</html>