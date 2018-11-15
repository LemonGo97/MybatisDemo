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
        .layui-layer-content{
            overflow: auto;
        }
    </style>
</head>
<body>
<form class="layui-form" action="">
    <input id="userId" type="text" name="userId" hidden="hidden"/>
    <input id="username" type="text" hidden="hidden" name="username" />
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>第一收货地址&nbsp;&nbsp;&nbsp;<font size="3" color="#cc4d1a">地址</font></legend>
    </fieldset>
    <div class="layui-form-item">
        <div class="layui-inline">

            <div class="layui-input-inline">
                <input id="address1" type="text" name="address1" lay-verify="required"
                       autocomplete="off" class="layui-input" placeholder="收货地址#1">
            </div>
        </div>
    </div>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>第二收货地址&nbsp;&nbsp;&nbsp;<font size="3" color="#cc4d1a">地址</font></legend>
    </fieldset>
    <div class="layui-form-item">
        <div class="layui-inline">

            <div class="layui-input-inline">
                <input id="address2" type="text" name="address2" lay-verify="required"
                       autocomplete="off" class="layui-input" placeholder="收货地址#2">
            </div>
        </div>
    </div>
    <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
        <legend>第三收货地址&nbsp;&nbsp;&nbsp;<font size="3" color="#cc4d1a">地址</font></legend>
    </fieldset>
    <div class="layui-form-item">
        <div class="layui-inline">

            <div class="layui-input-inline">
                <input id="address3" type="text" name="address3" lay-verify="required"
                       autocomplete="off" class="layui-input" placeholder="收货地址#3">
            </div>
        </div>
    </div>
    <div align="center">
        <button class="layui-btn " lay-filter="demo" lay-submit="" id="addCustomer">提交</button>
        <button class="layui-btn" id="closeIframe" onclick="closer()">关闭</button>
    </div>
</form>


<script src="<%=path%>/layui/layui.all.js"></script>
<script>
    layui.use(['jquery','form'], function () {
            var $ = layui.$
            ,form = layui.form;
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
                url: "<%=path%>/editAddress",//提交的地址
                data: "userId="+$("#userId").val()+"&address1="+$("#address1").val()+"&address2="+$("#address2").val()+"&address3="+$("#address3").val(),
                datatype: "text",
                success: function(){//成功之后返回的信息 msg就是返回的内容
                    layer.alert("地址信息修改成功，点击关闭按钮返回",{
                        time: 0
                        ,btn:['Sure']
                        ,icon:6
                        ,yes:function () {
                            var index = parent.layer.getFrameIndex(window.name);
                            parent.layer.close(index);
                        }
                    })
                },
                error:function(){//失败后调用的函数
                    layer.alert("地址信息修改失败，请稍后重试",{
                        icon:5
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
