<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    Integer shopId= (Integer) session.getAttribute("shopId");
%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台模板</title>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/amazeui.css"/>
    <%--<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">--%>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/core.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/menu.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/index.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/admin.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/typography.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/form.css"/>
    <style type="text/css">
        th, td, tr {
            text-align: center;
        }
    </style>
</head>
<body style="overflow: auto;">
<div class="content">
    <div class="card-box" style="padding: 20px 0px 0px 0px;">
        <!-- Row start -->
        <div class="am-g">

            <div class="am-u-sm-12 am-u-md-3" style=" width: 100%;">
                <div class="am-input-group am-input-group-sm">
                    <input type="text" class="am-form-field">
                    <span class="am-input-group-btn">
				            <button class="am-btn am-btn-default" type="button">搜索</button>
				          </span>
                </div>
            </div>
        </div>
        <!-- Row end -->

        <!-- Row start -->
        <div class="am-g">
            <div class="am-u-sm-12">
                <form class="am-form">
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr>
                            <th class="table-orderId">ID</th>
                            <th class="table-money">订单金额</th>
                            <th class="table-OrderState am-hide-sm-only">订单状态</th>
                            <th class="table-createDate am-hide-sm-only">创建时间</th>
                            <th class="table-complateDate am-hide-sm-only">完成时间</th>
                            <th class="table-complateDate am-hide-sm-only">地址</th>
                            <th class="table-complateDate am-hide-sm-only">配送方式</th>
                            <th class="table-set">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:if test="${orderList.size()<=0}">
                            <tr><td colspan="5">您还没有订单</td> </tr>
                        </c:if>
                        <c:forEach items="${orderList}" var="order" varStatus="status">
                            <tr>
                                <td>${status.index + 1}</td>
                                <td>￥${order.money}</td>
                                <td class="am-hide-sm-only">
                                    <c:if test="${order.orderState==0}">等待付款</c:if>
                                    <c:if test="${order.orderState==1}">未接单</c:if>
                                    <c:if test="${order.orderState==2}">未收货</c:if>
                                    <c:if test="${order.orderState==3}">成交</c:if>
                                    <c:if test="${order.orderState==4}">已取消</c:if>
                                    <c:if test="${order.orderState==5}">派单中</c:if>
                                </td>
                                <td class="am-hide-sm-only">${order.createDate}</td>
                                <td class="am-hide-sm-only">${order.overDate}</td>
                                <td class="am-hide-sm-only">${order.address}</td>
                                <td class="am-hide-sm-only">${order.ways}</td>
                                <td>
                                    <div class="am-btn-toolbar" style="float: none">
                                        <div class="am-btn-group am-btn-group-xs" style="float: none">
                                            <c:if test="${order.orderState==1}">
                                                <a id="recive" class="am-btn am-btn-default am-btn-xs am-hide-sm-only"  type="button" onclick="recived(${order.orderId})" download>
                                                    <span class="am-icon-angellist"></span> 接单
                                                </a>

                                            </c:if>
                                            <c:if test="${order.orderState==2}">
                                                <a class="am-btn am-btn-default am-btn-xs am-hide-sm-only" href="${order.orderFile}" type="button"  download>
                                                    <span class="am-icon-angellist"></span> 下载
                                                </a>
                                                <a id="receipt" type="button" onclick="sfSend(${order.orderId})"
                                                        class="am-btn am-btn-default am-btn-xs am-hide-sm-only">
                                                    <input value="${order.address}" id="cuIdress" hidden>
                                                    <span class="am-icon-angellist"></span> 派单
                                                </a>
                                            </c:if>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <div class="am-cf">
                        共 ${fn:length(orderList)}条记录
                    </div>
                    <hr/>
                </form>
            </div>

        </div>
        <!-- Row end -->

    </div>


</div>
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

<!-- navbar -->

<script type="text/javascript" src="<%=path%>/Shop/assets/js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/amazeui.min.js"></script>
<script>
    function recived(ordId) {
        $("#msgtitle").html("接单确认");
        $("#msgcontent").html("接单？？？");
        $('#my-confirm').modal({
            relatedTarget: this,
            onConfirm: function () {
                var orderId = ordId;
                var datas = "orderId=" + orderId + "&operate=" + "jiedan";
                $.ajax({
                    type: "GET",//提交方式
                    url: "/payServlet.pubus",//提交的地址
                    data: datas,//携带的数据参数
                    datatype: "text",//数据类型
                    success: function (msg) {//成功之后返回的信息 msg就是返回的内容
                        if (msg == "success") {
                            alert("接单成功");
                            window.location = "/ShopOrderServlet.bu?shopId=<%=shopId%>";
                        } else {
                            alert("接单失败");
                            alert(msg);
                        }
                    },
                    error: function () {//失败后调用的函数
                        alert("接单失败");
                    }

                });
            },
            // closeOnConfirm: false,
            onCancel: function () {
                alert("取消接单")
            }
        });
    }
    function sfSend(ordId) {
        $("#msgtitle").html("派单确认");
        $("#msgcontent").html("是否开始配送这个订单？");
        $('#my-confirm').modal({
            relatedTarget: this,
            onConfirm: function () {
                var orderId = ordId;
                var datas = "orderId=" + orderId + "&operate=" + "paidan";
                $.ajax({
                    type: "GET",//提交方式
                    url: "/payServlet.pubus",//提交的地址
                    data: datas,//携带的数据参数
                    datatype: "text",//数据类型
                    success: function (msg) {//成功之后返回的信息 msg就是返回的内容
                        if (msg == "success") {
                            alert("派单成功");
                            window.location = "/ShopOrderServlet.bu?shopId=<%=shopId%>";
                        } else {
                            alert("派单失败");
                            alert(msg);
                        }
                    },
                    error: function () {//失败后调用的函数
                        alert("派单失败");
                    }

                });
            },
            // closeOnConfirm: false,
            onCancel: function () {
                alert("取消派单")
            }
        });
    }
</script>
</body>

</html>
