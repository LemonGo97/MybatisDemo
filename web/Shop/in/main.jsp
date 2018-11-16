<%@ page import="com.ambition.entity.Order.Order" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Ambition
  Date: 2018/11/16
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
//    List<Order> orderList= (List<Order>) request.getAttribute("orderList");
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/amazeui.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/core.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/menu.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/index.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/admin.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/typography.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/form.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/component.css"/>
    <style type="text/css">
        th, td, tr {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="content">
    <div class="am-g" align="center">
        <!-- Row start -->
        <div class="am-u-md-3" STYLE="width: 50%">
            <div class="card-box">
                <h4 class="header-title m-t-0 m-b-30">总收入</h4>
                <div class="widget-chart-1 am-cf">
                    <div class="widget-detail-2">
                                <span class="badge  pull-left m-t-20  am-round"
                                      style="color: #fff; background: #0e90d2;">32% <i
                                        class="zmdi zmdi-trending-up"></i> </span>
                        <h2 class="m-b-0"> 8451 </h2>
                        <p class="text-muted m-b-25">Revenue today</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- col end -->
        <div class="am-u-md-3" STYLE="width: 50%">
            <div class="card-box">
                <h4 class="header-title m-t-0 m-b-30">总接单量</h4>
                <div class="widget-chart-1 am-cf">
                    <div class="widget-detail-2">
                                <span class="badge  pull-left m-t-20  am-round"
                                      style="color: #fff; background: #0e90d2;">32% <i
                                        class="zmdi zmdi-trending-up"></i> </span>
                        <h2 class="m-b-0"> 8451 </h2>
                        <p class="text-muted m-b-25">Revenue today</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- col end -->
        <!-- Row end -->
    </div>

    <!-- Row start -->
    <div class="am-g">

        <!-- col start -->
        <div class="am-u-md-8" style="width: 100%">
            <div class="card-box">
                <h4 class="header-title m-t-0 m-b-30">最近订单状态</h4>
                <div class="am-scrollable-horizontal am-text-ms" style="font-family: '微软雅黑';">
                    <table class="am-table   am-text-nowrap">
                        <thead>
                        <tr>
                            <th>订单ID</th>
                            <th>订单创建时间</th>
                            <th>订单完成时间</th>
                            <th>订单状态</th>
                            <th>配送方式</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${orderList}" var="order" varStatus="status">
                        <tr>
                            <td>${order.orderId}</td>
                            <td>${order.createDate}</td>
                            <td>${order.overDate}</td>
                            <td>
                            <c:if test="${order.orderState==0}"><span class="label label-primary">未付款</span></c:if>
                            <c:if test="${order.orderState==1}"><span class="label label-warning">未接单</span></c:if>
                            <c:if test="${order.orderState==2}"><span class="label label-pink">未收货</span></c:if>
                            <c:if test="${order.orderState==3}"><span class="label label-success">成交</span></c:if>
                            <c:if test="${order.orderState==4}"><span class="label label-danger">已取消</span></c:if>
                            </td>
                            <td>${order.ways}</td>
                        </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- col end -->
    </div>
    <!-- Row end -->


</div>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/amazeui.min.js"></script>

</body>
</html>
