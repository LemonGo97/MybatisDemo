<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>店铺信息维护</title>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/amazeui.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/core.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/menu.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/index.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/admin.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/typography.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/form.css"/>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css"/>
    <script src="<%=path%>/layui/layui.all.js"></script>
</head>
<body style="overflow: auto;">
<div class="content">
    <div class="am-g">
        <!-- Row start -->
        <div class="am-u-sm-12">
            <div class="card-box">
                <form  class="am-form"  data-am-validator>
                    <input id="edit" value="yep" hidden="hidden">
                    <c:forEach items="${shopList}" var="shop" varStatus="status">
                        <input id="shopId" value="${shop.shopId}" hidden="hidden">
                     <fieldset>
                        <legend>店铺基本信息维护</legend>
                        <div class="am-form-group">
                            <label for="shopname">店铺名称：</label>
                            <input type="text" style="width: 75%;" id="shopname" minlength="3"
                                  value="${shop.shopName}" placeholder="输入店铺名（至少 3 个字符）"
                                   required/>
                        </div>

                        <div class="am-form-group">
                            <label for="telephone">联系方式：</label>
                            <input type="tel" disabled aria-disabled="true" value="${shop.telephone}"  style="width: 75%;" id="telephone" placeholder="输入手机号码" required/>
                        </div>

                        <div class="am-form-group">
                            <label for="shopaddress">详细地址：</label>
                            <input type="text"  value="${shop.shopAddress}"  style="width: 75%;" id="shopaddress" placeholder="输入店铺详细地址" required/>
                        </div>

                        <div class="am-form-group">
                            <label for="businessman">负责人：</label>
                            <input type="text" style="width: 75%;"  value="${shop.businessMan}"  class="" id="businessman" placeholder="负责人姓名"
                                   max="120" required/>
                        </div>

                        <div class="am-form-group">
                            <label for="shopinfo">店铺简介：</label>
                            <textarea id="shopinfo" minlength="10"  style="width: 75%;"  maxlength="100">${shop.shopInfo}</textarea>
                        </div>

                        <button class="am-btn am-btn-secondary" onclick="update()" type="button">更新信息</button>
                    </fieldset>
                    </c:forEach>
                </form>


            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/app.js"></script>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/blockUI.js"></script>
<script>
    function update() {
        var dataByinfo = "shopname="
            + $("#shopname").val() + "&"
            + "shopaddress=" + $("#shopaddress").val()
            + "&" + "telephone=" + $("#telephone").val()
            + "&" + "businessman=" + $("#businessman").val() + "&"
            + "shopinfo=" + $("#shopinfo").val()+ "&"
            + "edit=" + $("#edit").val()+ "&"
            + "shopId=" + $("#shopId").val()

        $.ajax({
            type: "GET",//提交方式
            url: "/shopInfo.bu",//提交的地址
            data: dataByinfo,//携带的数据参数
            datatype: "text",//数据类型
            success: function (msg) {//成功之后返回的信息 msg就是返回的内容
                // $("#usernameMsg").html(msg);
                layer.msg("店铺信息更新成功")
                parent.location.reload();
            },
            error: function () {//失败后调用的函数
                layer.msg("店铺信息更新失败")
            }
        });
    }
</script>
</body>
</html>
