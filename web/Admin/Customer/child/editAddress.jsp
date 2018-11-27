<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <meta charset="utf-8">
    <title>用户修改页面</title>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css" media="all">
    <style>
        body {
            padding: 10px;
            font-size: 14px;
            background: #fff;
            width: 95%;
            margin: 0 auto;
            font-size: 14px;
            line-height: 20px;
            overflow: hidden;
        }

        p {
            margin-bottom: 10px;
        }

        input {
            border: 1px solid #999;
            padding: 5px 10px;
            margin: 0 10px 10px 0;
        }

        .layui-input-inline {
            margin-left: 180px;
        }

        .layui-layer-content {
            overflow: auto;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="<%=path%>/layui/address-master/dist/amazeui.min.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path%>/layui/address-master/dist/amazeui.address.css"/>
</head>
<body style="overflow: auto;">
<form class="layui-form" action="">
    <input id="userId" type="text" name="userId" hidden="hidden"/>
    <input id="username" type="text" hidden="hidden" name="username"/>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>收货地址&nbsp;&nbsp;&nbsp;<font size="3" color="#cc4d1a">地址</font></legend>
    </fieldset>
    <div class="layui-form-item">
        <div class="layui-inline">

            <div class="layui-input-inline" style="width: 370px">
                <%--<input id="address1" type="text" name="address1" lay-verify="required"--%>
                <%--autocomplete="off" class="layui-input" placeholder="收货地址#1" onclick="choseadd()">--%>
                <div class="am-form-group am-input-group" id="addresses1">
				<span class="am-input-group-label">
					<i class="am-icon am-icon-home"></i>
					<span class="am-padding-horizontal-xs">地址一</span>
				</span>
                    <input readonly id="address1" type="text" id="address1" name="address1"
                           class="am-form-field am-radius"
                           placeholder="请选择地址" required="">
                </div>
            </div>

            <div class="layui-input-inline" style="width: 370px">
                <%--<input id="address2" type="text" name="address2" lay-verify="required"--%>
                <%--autocomplete="off" class="layui-input"  placeholder="收货地址#2" onclick="choseadd()">--%>
                <div class="am-form-group am-input-group" id="addresses2">
				<span class="am-input-group-label">
					<i class="am-icon am-icon-home"></i>
					<span class="am-padding-horizontal-xs">地址二</span>
				</span>
                    <input readonly type="text" name="nickname" id="address2" name="address2"
                           class="am-form-field am-radius" placeholder="请选择地址"
                           required="">
                </div>
            </div>

            <div class="layui-input-inline" style="width: 370px">
                <%--<input id="address3" type="text" name="address3" lay-verify="required"--%>
                <%--autocomplete="off" class="layui-input"  placeholder="收货地址#3" onclick="choseadd()">--%>
                <div class="am-form-group am-input-group" id="addresses3">
				<span class="am-input-group-label">
					<i class="am-icon am-icon-home"></i>
					<span class="am-padding-horizontal-xs">地址三</span>
				</span>
                    <input readonly type="text" name="nickname" id="address3" name="address3"
                           class="am-form-field am-radius" placeholder="请选择地址"
                           required="">
                </div>
            </div>
        </div>
    </div>

    <div align="center">
        <button class="layui-btn " lay-filter="demo" lay-submit="" id="addCustomer">提交</button>
        <button class="layui-btn" id="closeIframe" onclick="closer()">关闭</button>
    </div>
</form>


<script src="<%=path%>/layui/address-master/dist/jquery.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path%>/layui/address-master/dist/amazeui.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path%>/layui/address-master/dist/iscroll.min.js" type="text/javascript" charset="utf-8"></script>
<script src="<%=path%>/layui/address-master/dist/address.js" type="text/javascript" charset="utf-8"></script>
<script>
    $(function () {
        document.addEventListener('touchmove', function (e) {
            e.preventDefault();
        }, false);
        //	带底部的
        $("#addresses1").address({
            prov: "广东省",
            city: "清远市",
            district: "阳山县",
            scrollToCenter: true,
            footer: true,
            selectEnd: function (json) {
                console.log(JSON.stringify(json));
            }
        });
        $("#addresses2").address({
            prov: "广东省",
            city: "清远市",
            district: "阳山县",
            scrollToCenter: true,
            footer: true,
            selectEnd: function (json) {
                console.log(JSON.stringify(json));
            }
        });
        $("#addresses3").address({
            prov: "广东省",
            city: "清远市",
            district: "阳山县",
            scrollToCenter: true,
            footer: true,
            selectEnd: function (json) {
                console.log(JSON.stringify(json));
            }
        });
    });
</script>
<script src="<%=path%>/layui/layui.all.js"></script>
<script>


    layui.use(['jquery', 'form'], function () {
        var $ = layui.$
            , form = layui.form;

        form.on('submit(demo)', function (data) {
            $.ajax({
                type: "POST",//提交方式
                url: "<%=path%>/editAddress.pubro",//提交的地址
                data: "userId=" + $("#userId").val() + "&address1=" + $("#address1").val() + "&address2=" + $("#address2").val() + "&address3=" + $("#address3").val(),
                datatype: "text",
                success: function () {//成功之后返回的信息 msg就是返回的内容
                    layer.alert("地址信息修改成功，点击关闭按钮返回", {
                        time: 0
                        , btn: ['Sure']
                        , icon: 6
                        , yes: function () {
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        }
                    })
                },
                error: function () {//失败后调用的函数
                    layer.alert("地址信息修改失败，请稍后重试", {
                        icon: 5
                    })
                }
            });


            return false;
        });
    });

    function closer() {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    };

</script>

</body>
</html>
