<%--
  Created by IntelliJ IDEA.
  User: Ambition
  Date: 2018/11/9
  Time: 16:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%String path = request.getContextPath();%>
<%String userId = String.valueOf(session.getAttribute("userId"));%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin table Examples</title>
    <meta name="description" content="订单管理">
    <meta name="keywords" content="table">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="<%=path%>/front/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=path%>/front/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="订单管理"/>
    <link rel="stylesheet" href="<%=path%>/front/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="<%=path%>/front/assets/css/admin.css">
    <style type="text/css">
        th, td, tr {
            text-align: center;
        }
    </style>
</head>
<body>
<!-- content start -->
<div class="admin-content" style="overflow: auto">
    <div class="admin-content-body">
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">历史订单</strong> /
                <small>Order</small>
            </div>
        </div>

        <hr>

        <div class="am-g">
            <div class="am-u-sm-12 am-u-md-6">
                <div class="am-btn-toolbar">
                    <div class="am-btn-group am-btn-group-xs">
                        <span style="margin-left: 10px">共 ${fn:length(orders)} 条记录</span>
                    </div>
                </div>
            </div>

        </div>

        <div class="am-g">
            <div class="am-u-sm-12">
                <form class="am-form" method="get" action="/customerQueryOrder">
                    <input hidden name="customerId" value="<%=userId%>">
                    <%--在这里获取session中的用户ID并放到这里--%>
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr>
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
                                <td>${status.index + 1}</td>
                                <td><a href="<%=path%>${order.orderFile}" download>文件</a></td>
                                <td>￥${order.money}</td>
                                <td class="am-hide-sm-only">${order.shopListResult.shopName}</td>
                                <td class="am-hide-sm-only">
                                    <c:if test="${order.orderState==0}">未付款</c:if>
                                    <c:if test="${order.orderState==1}">未接单</c:if>
                                    <c:if test="${order.orderState==2}">未收货</c:if>
                                    <c:if test="${order.orderState==3}">成交</c:if>
                                    <c:if test="${order.orderState==4}">已取消</c:if>
                                </td>
                                <td class="am-hide-sm-only">${order.createDate}</td>
                                <td class="am-hide-sm-only">${order.overDate}</td>
                                <td class="am-hide-sm-only">${order.address}</td>
                                <td class="am-hide-sm-only">${order.ways}</td>
                                <td>
                                    <div class="am-btn-toolbar" style="float: none">
                                        <div class="am-btn-group am-btn-group-xs" style="float: none">

                                            <c:if test="${order.orderState==0}">
                                                <button id="pay" type="button" onclick=" pays(${order.orderId})"
                                                        class="am-btn am-btn-default am-btn-xs  am-hide-sm-only">
                                                    <span class="am-icon-credit-card"></span> 付款
                                                </button>
                                                <button id="cancel" type="button" onclick="cancels(${order.orderId})"
                                                        class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
                                                        style="margin-left: 5px">
                                                    <span class="am-icon-trash-o"></span> 取消
                                                </button>
                                            </c:if>
                                            <c:if test="${order.orderState==1}">
                                                <button id="receipt" type="button" onclick="revices(${order.orderId})"
                                                        class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
                                                    <span class="am-icon-angellist"></span> 收货
                                                </button>
                                                <button id="cancel" type="button" onclick="cancels(${order.orderId})"
                                                        class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only"
                                                        style="margin-left: 5px">
                                                    <span class="am-icon-trash-o"></span> 取消
                                                </button>
                                            </c:if>
                                            <c:if test="${order.orderState==2}">
                                                <button id="receipt" type="button" onclick="revices(${order.orderId})"
                                                        class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
                                                    <span class="am-icon-angellist"></span> 收货
                                                </button>
                                            </c:if>
                                            <c:if test="${order.orderState==3}">
                                                <button id="delete" type="button" onclick="del(${order.orderId})"
                                                        class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
                                                    <span class="am-icon-trash-o"></span> 删除
                                                </button>
                                            </c:if>
                                            <c:if test="${order.orderState==4}">
                                                <button id="delete" type="button" onclick="del(${order.orderId})"
                                                        class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only">
                                                    <span class="am-icon-trash-o"></span> 删除
                                                </button>
                                            </c:if>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </form>
            </div>

        </div>
    </div>

</div>
<!-- content end -->

<div class="am-modal am-modal-confirm" tabindex="-1" id="my-confirm">
    <div class="am-modal-dialog">
        <div class="am-modal-hd" id="msgtitle">删除确认</div>
        <div class="am-modal-bd" id="msgcontent">
            你，确定要删除这条记录吗？
        </div>
        <div class="am-modal-footer">
            <span class="am-modal-btn" data-am-modal-cancel>取消</span>
            <span class="am-modal-btn" data-am-modal-confirm>确定</span>
        </div>
    </div>
</div>

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=path%>/front/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="<%=path%>/front/assets/js/amazeui.min.js"></script>
<script src="<%=path%>/front/assets/js/app.js"></script>
<script>
    // $("#delete").on('click',
    function del(ordId) {
        $("#msgtitle").html("删除确认");
        $("#msgcontent").html(" 你，确定要删除这条记录吗？");
        $('#my-confirm').modal({
            relatedTarget: this,
            onConfirm: function () {
                var orderId = ordId;
                $.ajax({
                    type: "GET",//提交方式
                    url: "/delOrderOne",//提交的地址
                    data: "orderId=" + orderId,//携带的数据参数
                    datatype: "text",//数据类型
                    success: function (msg) {//成功之后返回的信息 msg就是返回的内容
                        window.location.reload();
                        alert("删除成功");
                    },
                    error: function () {//失败后调用的函数
                        alert("删除失败");
                    }
                });
            },
            // closeOnConfirm: false,
            onCancel: function () {
                alert("哈哈哈哈哈哈哈啊，你怎么取消了？？")
            }
        });
    }

    function cancels(ordId) {
        $("#msgtitle").html("取消订单");
        $("#msgcontent").html("你，确定要取消这个订单吗？");
        $('#my-confirm').modal({
            relatedTarget: this,
            onConfirm: function () {
                var orderId = ordId;
                var datas = "orderId=" + orderId + "&operate=" + "cancels";
                $.ajax({
                    type: "GET",//提交方式
                    url: "/payServlet",//提交的地址
                    data: datas,//携带的数据参数
                    datatype: "text",//数据类型
                    success: function (msg) {//成功之后返回的信息 msg就是返回的内容
                        if (msg == "success") {
                            alert("订单取消成功");
                            window.location = "/customerQueryOrder?customerId=<%=userId%>";
                        } else {
                            alert("订单取消失败");
                            alert(msg);
                        }
                    },
                    error: function () {//失败后调用的函数
                        alert("订单取消失败");
                    }

                });
            },
            // closeOnConfirm: false,
            onCancel: function () {
                alert("哈哈哈哈哈哈哈啊，你怎么取消了？？")
            }
        });
    }

    function pays(ordId) {
        window.location = "/payServlet?orderId=" + ordId;
    }

    function revices(ordId) {
        $("#msgtitle").html("收货确认");
        $("#msgcontent").html("您已经收到您的订单了吗？");
        $('#my-confirm').modal({
            relatedTarget: this,
            onConfirm: function () {
                var orderId = ordId;
                var datas = "orderId=" + orderId + "&operate=" + "shouhuo";
                $.ajax({
                    type: "GET",//提交方式
                    url: "/payServlet",//提交的地址
                    data: datas,//携带的数据参数
                    datatype: "text",//数据类型
                    success: function (msg) {//成功之后返回的信息 msg就是返回的内容
                        if (msg == "success") {
                            alert("收货成功");
                            window.location = "/customerQueryOrder?customerId=<%=userId%>";
                        } else {
                            alert("收货失败");
                            alert(msg);
                        }
                    },
                    error: function () {//失败后调用的函数
                        alert("收货失败");
                    }

                });
            },
            // closeOnConfirm: false,
            onCancel: function () {
                alert("哈哈哈哈哈哈哈啊，你怎么取消了？？")
            }
        });
    }

</script>
</body>
</html>
