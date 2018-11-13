<%--
  Created by IntelliJ IDEA.
  User: Ambition
  Date: 2018/11/13
  Time: 12:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<%
    String userId = String.valueOf(session.getAttribute("userId"));
    String username = String.valueOf(session.getAttribute("username"));
%>
<html>
<head>
    <title>支付页面</title>
    <link rel="stylesheet" href="<%=path%>/after/static/css/font.css">
    <link rel="stylesheet" href="<%=path%>/after/static/css/weadmin.css">
    <script type="text/javascript" src="<%=path%>/layui/layui.js" charset="utf-8"></script>
</head>
<body>

<center>


    <h1 style="margin-top: 90px"><font color="#cc243d">您须支付本次订单金额为：￥<%=request.getAttribute("money")%>
    </font></h1>
    <h2>请扫码完成支付</h2>
    <div style="margin-top: 40px;;margin-bottom: 40px" >
        <table border="1">

            <tr align="center">
                <td align="center"><img src='<%=path%>/front/images/wechatPay.png' id="wechatpay"
                                        style="margin-left: 10px;margin-right: 10px" width="160px"
                                        hight="200px"></td>
                <td align="center"><img src='<%=path%>/front/images/aliPay.jpg' id="alipay"
                                        style="margin-left: 10px;margin-right: 10px" width="160px"
                                        hight="200px"></td>
            </tr>
        </table>

    </div>
    <button class="layui-btn layui-btn-radius layui-btn-normal"  onclick="over(<%=request.getAttribute("orderId")%>)">已完成支付</button>
    <button class="layui-btn layui-btn-radius layui-btn-warm"  onclick="cancel()">稍后支付</button>

    </center>

<script src="<%=path%>/front/assets/js/jquery.min.js"></script>
<script src="<%=path%>/front/assets/js/amazeui.min.js"></script>
<script src="<%=path%>/front/assets/js/app.js"></script>
<script>

    function over(orderId) {

        var datas= "orderId=" + orderId + "&operate=" + "over";
        $.ajax({
            type: "GET",//提交方式
            url: "/payServlet",//提交的地址
            data: datas,//携带的数据参数
            datatype: "text",//数据类型
            success: function (msg) {//成功之后返回的信息 msg就是返回的内容
                if (msg=="success"){
                    alert("订单创建成功");
                    window.location = "/customerQueryOrder?customerId=<%=userId%>";
                }else{
                    alert("支付失败");
                    alert(msg);
                }
            },
            error: function () {//失败后调用的函数
                alert("订单创建失败");
            }

        });
    }

    function cancel() {
        window.location = "/customerQueryOrder?customerId=<%=userId%>";
    }

</script>
</body>
</html>
