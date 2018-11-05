<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加用户</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="<%=path%>/after/static/css/font.css">
    <link rel="stylesheet" href="<%=path%>/after/static/css/weadmin.css">
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <script src="<%=path%>/after/static/js/html5.min.js"></script>
    <script src="<%=path%>/after/static/js/respond.min.js"></script>
</head>

<body>
<script src="<%=path%>/after/static/js/html5.min.js"></script>
<script src="<%=path%>/after/static/js/respond.min.js"></script>
<div class="weadmin-body" align="center">
    <form class="layui-form" method="post" action="/addOnecustomer" >
        <div class="layui-form-item" align="center">
            <label for="L_account" class="layui-form-label">
                <span class="we-red">*</span>登录名
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_account" name="account" lay-verify="required|nikeaccount" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                请设置至少5个字符，将会成为您唯一的登录名
            </div>
        </div>
        <div class="layui-form-item" align="center">
            <label for="L_username" class="layui-form-label">
                <span class="we-red">*</span>昵称
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_username" name="username" lay-verify="required|nikename" autocomplete="off" class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                请设置至少5个字符，这里是您的昵称
            </div>
        </div>
        <%--<div class="layui-form-item">--%>
        <%--<label for="L_sex" class="layui-form-label">性别</label>--%>
        <%--<div class="layui-input-block" id="L_sex">--%>
        <%--<input type="radio" name="sex" value="男" title="男" checked>--%>
        <%--<input type="radio" name="sex" value="女" title="女">--%>
        <%--<input type="radio" name="sex" value="未知" title="未知">--%>
        <%--</div>--%>
        <%--</div>--%>

        <div class="layui-form-item">
            <label for="L_phone" class="layui-form-label">
                <span class="we-red">*</span>手机
            </label>
            <div class="layui-input-inline">
                <input type="text" id="L_phone" name="telephone" lay-verify="required|phone" autocomplete="" class="layui-input">
            </div>
        </div>
        <%--<div class="layui-form-item">--%>
            <%--<label for="L_email" class="layui-form-label">--%>
                <%--<span class="we-red">*</span>邮箱--%>
            <%--</label>--%>
            <%--<div class="layui-input-inline">--%>
                <%--<input type="text" id="L_email" name="email" autocomplete="off" class="layui-input">--%>
            <%--</div>--%>

        <%--</div>--%>
        <div class="layui-form-item">
            <label for="L_pass" class="layui-form-label">
                <span class="we-red">*</span>密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_pass" name="password" lay-verify="required|pass" autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-form-mid layui-word-aux">
                6到16个字符
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
                <span class="we-red">*</span>确认密码
            </label>
            <div class="layui-input-inline">
                <input type="password" id="L_repass" name="repass" lay-verify="required|repass"
                       autocomplete="off" class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label for="L_repass" class="layui-form-label">
            </label>
            <button class="layui-btn" lay-filter="add" lay-submit="">确定</button>
        </div>
    </form>
</div>
<script src="<%=path%>/after/lib/layui/layui.js" charset="utf-8"></script>
<script >
    layer.alert("增加成功", {
        icon: 6
    })
</script>
<script>
    layui.extend({
        admin: '/after/static/js/admin'
    });
    layui.use(['form', 'jquery','util','admin', 'layer'], function() {
        var form = layui.form,
            $ = layui.jquery,
            util = layui.util,
            admin = layui.admin,
            layer = layui.layer;

        //自定义验证规则
        var reg=/^[0-9]+.?[0-9]*$/;
        form.verify({

            nikeaccount: function(value) {22
            },
            nikename: function(value) {
                if(value.length < 5) {
                    return '昵称至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
            repass: function(value) {
                if($('#L_pass').val() != $('#L_repass').val()) {
                    return '两次密码不一致';
                }
            }
        });
        //失去焦点时判断值为空不验证，一旦填写必须验证
        $('input[name="email"]').blur(function(){
            //这里是失去焦点时的事件
            if($('input[name="email"]').val()){
                $('input[name="email"]').attr('lay-verify','email');
            }else{
                $('input[name="email"]').removeAttr('lay-verify');
            }
        });

        //监听提交
        form.on('submit(add)', function(data){
            //发异步，把数据提交给servlet
            // alert(data.field)
            console.log(data.form)
            console.log(data.field)
            console.log(data.elem)
            layer.alert("增加成功", {
                icon: 6
            })
            // return false;
        });


        //监听提交
        // form.on('submit(add)', function(data) {
            //console.log(data.field);
            // var f = data.field;
            //console.log(f.username);
            //console.log(f.sex);
            //var sex = $('input:radio[name="sex"]:checked').val();

            //发异步，把数据提交给php
            // layer.alert("增加成功", {
            //         icon: 6
            //     }
                // ,function() {
                // //获取提交成功的时间
                // var time = new Date();
                // var timeNow = util.toDateString(time);
                // // 获得frame索引
                // var index = parent.layer.getFrameIndex(window.name);
                //
                // var _len = parent.$('#memberList.tr').length;
                // alert(_len);
                // parent.$('#memberList').append(
                // 	'<tr data-id="' + _len + '">' +
                // 		'<td>'+
                // 			'<div class="layui-unselect layui-form-checkbox" lay-skin="primary" data-id="' + _len + '"><i class="layui-icon">&#xe605;</i></div>'+
                // 		'</td>'+
                // 		'<td>' + _len + '</td>'+
                // 		'<td>'+f.username+'</td>'+
                // 		'<td>'+f.sex+'</td>'+
                // 		'<td>'+f.phone+'</td>'+
                // 		'<td>'+f.email+'</td>'+
                // 		'<td>北京市西城区</td>'+
                // 		'<td>'+timeNow+'</td>'+
                // 		'<td class="td-status"><span class="layui-btn layui-btn-normal layui-btn-xs">已启用</span></td>'+
                // 		'<td class="td-manage">'+
                // 			'<a onclick="member_stop(this,\'10001\')" href="javascript:;" title="启用"><i class="layui-icon">&#xe601;</i></a>'+
                // 			'<a title="编辑" onclick="WeAdminShow(\'编辑\',\'./edit.jsp\',600,400)" href="javascript:;"><i class="layui-icon">&#xe642;</i></a>'+
                // 			'<a onclick="WeAdminShow(\'修改密码\',\'./password.jsp\',600,400)" title="修改密码" href="javascript:;"><i class="layui-icon">&#xe631;</i></a>'+
                // 			'<a title="删除" onclick="member_del(this,\'要删除的id\')" href="javascript:;"><i class="layui-icon">&#xe640;</i></a>'+
                // 		'</td>'+
                // 	'</tr>'
    //         );
    //         //关闭当前frame
    //         parent.layer.close(index);
    //     });
    //     return false;
    //     // });
    //
    });
</script>
</body>

</html>