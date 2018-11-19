<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>订单列表-WeAdmin Frame型后台管理系统-WeAdmin 1.0</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="<%=path%>/layui/otherCss/css/font.css">
    <link rel="stylesheet" href="<%=path%>/layui/otherCss/css/weadmin.css">
    <script src="<%=path%>/layui/layui.js" charset="utf-8"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="<%=path%>/layui/otherJs/js/html5.min.js"></script>
    <script src="<%=path%>/layui/otherJs/js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="weadmin-nav">
			<span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">订单管理</a>
        <a><cite>订单列表</cite></a>
      </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right"
       href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div class="weadmin-body">
    <div class="layui-row" align="center">
        <form class="layui-form layui-col-md12 we-search">
            <div class="layui-input-inline">
                <select id="stat">
                    <option value="9">订单状态</option>
                    <option value="0">未支付</option>
                    <option value="1">未接单</option>
                    <option value="2">未收货</option>
                    <option value="3">已完成</option>
                    <option value="4">已作废</option>
                </select>
            </div>
            <button class="layui-btn" type="button" onclick="searchs()"><i class="layui-icon">&#xe615;</i></button>
        </form>
    </div>
    <div class="weadmin-block" style="height: 35px">
        <%--<button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>--%>
        <span class="fr" style="line-height:40px">共有数据：${fn:length(orders)} 条</span>
    </div>
    <table class="layui-table">
        <thead>
        <tr>
            <th>
                <div class="layui-unselect header layui-form-checkbox" lay-skin="primary"><i
                        class="layui-icon">&#xe605;</i></div>
            </th>
            <th class="table-orderId">ID</th>
            <th class="table-orderFile">文件</th>
            <th class="table-money">订单金额</th>
            <th class="table-shop am-hide-sm-only">商家</th>
            <th class="table-OrderState am-hide-sm-only">订单状态</th>
            <th class="table-createDate am-hide-sm-only">创建时间</th>
            <th class="table-complateDate am-hide-sm-only">完成时间</th>
            <th class="table-complateDate am-hide-sm-only">地址</th>
            <th class="table-complateDate am-hide-sm-only">配送方式</th>
            <th class="table-set">操作</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach items="${orders}" var="order" varStatus="status">
            <tr>
                <td>
                    <div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id='${order.orderId}'><i
                            class="layui-icon">&#xe605;</i></div>
                </td>
                <td>${status.index + 1}</td>
                <td><a href="<%=path%>${order.orderFile}">文件</a></td>
                <td>￥${order.money}</td>
                <td class="am-hide-sm-only">${order.shopListResult.shopName}</td>
                <td class="am-hide-sm-only">
                    <c:if test="${order.orderState==0}">未付款</c:if>
                    <c:if test="${order.orderState==1}">未接单</c:if>
                    <c:if test="${order.orderState==2}">未收货</c:if>
                    <c:if test="${order.orderState==3}">成交</c:if>
                    <c:if test="${order.orderState==4}">已取消</c:if>
                    <c:if test="${order.orderState==5}">派单中</c:if>
                </td>
                <td class="am-hide-sm-only">${order.createDate}</td>
                <td class="am-hide-sm-only"><c:if test="${order.overDate!=null}">${order.overDate}</c:if><c:if
                        test="${order.overDate==null}">订单未完成</c:if></td>
                <td class="am-hide-sm-only">${order.address}</td>
                <td class="am-hide-sm-only">${order.ways}</td>
                <td align="center">
                    <a title="删除" onclick="order_del(${order.orderId})">
                        <i class="layui-icon">&#xe640;</i>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>


<script>

    function order_del(orderId) {
        layui.use(['laydate', 'jquery', 'admin'], function () {
            var $ = layui.jquery;
            layer.confirm('要删除这个订单吗？', {
                btn: ['Sure', 'Nope'] //可以无限个按钮
                , btn1: function (index, layero) {
                    layer.msg(orderId)

                    $.ajax({
                        type: "GET",//提交方式
                        url: "<%=path%>/delOrderOne.us",//提交的地址
                        data: "orderId=" + orderId,
                        datatype: "text",
                        success: function () {//成功之后返回的信息 msg就是返回的内容
                            location.reload();
                        },
                        error: function () {//失败后调用的函数
                            location.reload();
                        }
                    });

                }
            });
        })
    }


    function searchs() {
        layui.use(['jquery'], function () {
            var $ = layui.jquery;
            var msgs = $("#stat option:selected").val();
        //     alert(msgs)
            window.location = "/adminQueryOrder.ro?status=" + msgs;

        })
    }
</script>
<script>
    layui.extend({
        admin: '<%=path%>/layui/otherJs/js/admin'
    });
    layui.use(['laydate', 'jquery', 'admin'], function () {
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });
        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });

    });

</script>
</body>

</html>