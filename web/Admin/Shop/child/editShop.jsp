<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <meta charset="utf-8">
    <title>商家修改页面</title>
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
    </style>
</head>
<body>
<form class="layui-form" action="">
    <input id="shopId" type="text" name="shopId" hidden="hidden"/>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>商铺名称&nbsp;&nbsp;&nbsp;<font size="3" color="#cc4d1a">必填</font></legend>
    </fieldset>
    <div class="layui-form-item">

        <div class="layui-input-inline">
            <input id="shopname" type="text" name="shopname" lay-verify="required|username" placeholder="请输入你的商铺名称"
                   autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>商铺管理密码&nbsp;&nbsp;&nbsp;<font size="3" color="#cc4d1a">必填</font></legend>
    </fieldset>
    <div class="layui-form-item">

        <div class="layui-input-inline">
            <input id="pass1" type="password" name="password" required lay-verify="required|pass" placeholder="请输入密码"
                   autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-form-mid layui-word-aux"  style="margin-left: 20px;">密码必须大于6位</div>
    </div>

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>所在地&负责人&nbsp;&nbsp;&nbsp;<font size="3" color="#cc4d1a">必填</font></legend>
    </fieldset>
    <div class="layui-form-item">
        <div class="layui-inline">

            <div class="layui-input-inline">
                <input id="shopAddress" type="text" name="shopAddress"
                       autocomplete="off" class="layui-input"/>
            </div>
            <div class="layui-input-inline" style="margin-left: 20px;">
                <input id="businessMan" type="text" name="businessMan"
                       autocomplete="off" class="layui-input"/>
            </div>
        </div>
    </div>

    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>商铺联系方式&nbsp;&nbsp;&nbsp;<font size="3" color="#cc4d1a">这将是你登陆系统的依据</font></legend>
    </fieldset>
    <div class="layui-form-item">
        <div class="layui-inline">

            <div class="layui-input-inline">
                <input id="telephone" type="tel" name="telephone" lay-verify="required|phone|telephone"
                       autocomplete="off" class="layui-input" placeholder="请输入你的手机号">
            </div>
        </div>
    </div>
    <div align="center">
        <button class="layui-btn " lay-filter="demo" lay-submit="" id="addCustomer">提交</button>
        <button class="layui-btn" id="closeIframe" onclick="closer()">关闭</button>
    </div>
</form>


<script src="<%=path%>/layui/layui.all.js"></script>
<%--<script src="<%=path%>/layui/lay/modules/jquery.js"></script>--%>
<script>
    layui.use(['jquery', 'form'], function () {
        var $ = layui.$
            , form = layui.form;
        form.verify({
            username: function (value) { //value：表单的值、item：表单的DOM对象
                if (!new RegExp("^[a-zA-Z0-9_\u4e00-\u9fa5\\s·]+$").test(value)) {
                    return '用户名不能有特殊字符';
                }
                if (/(^\_)|(\__)|(\_+$)/.test(value)) {
                    return '用户名首尾不能出现下划线\'_\'';
                }
                if (/^\d+\d+\d$/.test(value)) {
                    return '用户名不能全为数字';
                }
            },
            telephone: function (value) {
                if (value.length < 11) {
                    return '手机号码至少为11位';
                }
            }

            //我们既支持上述函数式的方式，也支持下述数组的形式
            //数组的两个值分别代表：[正则匹配、匹配不符时的提示文字]
            , pass: [
                /^[\S]{6,12}$/
                , '密码必须6到12位，且不能出现空格'
            ]
        });

        form.on('submit(demo)', function (data) {
            $.ajax({
                type: "POST",//提交方式
                url: "<%=path%>/editShop",//提交的地址
                data: "shopname=" + $("#shopname").val() + "&password=" + $("#pass1").val() + "&telephone=" + $("#telephone").val() + "&shopId=" + $("#shopId").val() + "&shopAddress=" + $("#shopAddress").val() + "&businessMan=" + $("#businessMan").val(),
                datatype: "text",
                success: function () {//成功之后返回的信息 msg就是返回的内容
                    layer.alert("用户信息修改成功，点击关闭按钮返回", {
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
                    layer.alert("用户信息修改注册失败，请稍后重试", {
                        icon: 6
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
