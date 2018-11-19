<%--
  Created by IntelliJ IDEA.
  User: Ambition
  Date: 2018/10/31
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>小黑屋</title>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css" media="all">
    <style>
        body {
            margin: 10px;
        }

        .layui-table-cell .layui-form-checkbox[lay-skin=primary] {
            top: 5px;
        }
        .layui-btn {
            line-height: 30px;
        }
    </style>
</head>
<body>
<div id="testText">
    <marquee onMouseOut="this.start()" onMouseOver="this.stop()"><font color="#ff2370" size="2">重要消息：系统将在今晚24:00分进行大规模升级，届时所有用户和商家都无法访问平台，请注意</font>
    </marquee>
</div>
<div class="layui-row" style="text-align:center; margin-top: 10px">
    <form id="customerform" class="layui-form layui-col-md12 we-search" method="get">
        用户搜索：
        <div class="layui-inline">
            <input type="text" name="username" placeholder="用户名" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-inline">
            <input type="text" name="telephone" placeholder="电话号码" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-inline">
            <input class="layui-input" placeholder="最早注册时间" name="startdate" id="start" lay-key="1">
        </div>
        <div class="layui-inline">
            <input class="layui-input" placeholder="最晚注册时间" name="enddate" id="end" lay-key="2">
        </div>

        <button class="layui-btn" lay-submit lay-filter="submit"><i class="layui-icon">&#xe615;</i></button>
    </form>
</div>
<table class="layui-hide" id="demo" lay-filter="test"></table>
<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm layui-btn-warm layui-btn-radius" lay-event="recBatch"><i class="layui-icon layui-icon-release"></i> 批量恢复</button>
    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-danger layui-btn-xl" lay-event="recc" >解禁</a>
</script>


<script src="<%=path%>/layui/layui.all.js"></script>
<script>
    layui.use(['jquery', 'form', 'laydate', 'laypage', 'layer', 'table', 'carousel', 'upload', 'element', 'slider'], function () {
        var laydate = layui.laydate //日期
            , layer = layui.layer //弹层
            , table = layui.table //表格
            , form = layui.form//'from',
            , $ = layui.$;
        // 向世界问个好
        laydate.render({
            elem: '#start' //指定元素
        });
        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
        //执行一个 table 实例
        table.render({
            elem: '#demo'
            , url: '<%=path%>/jsonCustomer.ro?del=1' //数据接口
            , title: '用户表'
            , height: 472
            , page: true //开启分页
            , toolbar: '#toolbarDemo' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            , totalRow: true //开启合计行
            , limit: 8
            , limits: [8, 10, 15, 20, 25]
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'username', title: '昵称', sort: true, align: "center", fixed: 'left'}
                , {field: 'password', title: '密码', sort: true, align: "center"}
                , {field: 'createdate', title: '注册日期', sort: true, align: "center"}
                , {field: 'telephone', title: '电话号码', align: "center"}
                , {fixed: 'right', width: 165, align: 'center', toolbar: '#barDemo', title: '操作', align: "center"}
            ]]
        });

        form.on('submit(submit)', function (data) {
            table.render({
                elem: '#demo'
                , url: '<%=path%>/jsonCustomer.ro?del=1' //数据接口
                , where: data.field
                , title: '用户表'
                , height: 472
                , page: true //开启分页
                , toolbar: 'default' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
                , totalRow: true //开启合计行
                , limit: 8
                , limits: [8, 10, 15, 20, 25]
                , cols: [[ //表头
                    {type: 'checkbox', fixed: 'left'}
                    , {field: 'username', title: '昵称', sort: true, fixed: 'left', align: "center"}
                    , {field: 'password', title: '密码', sort: true, align: "center"}
                    , {field: 'createdate', title: '注册日期', sort: true, align: "center"}
                    , {field: 'telephone', title: '电话号码', align: "center"}
                    , {fixed: 'right', width: 165, align: 'center', toolbar: '#barDemo', title: '操作', align: "center"}
                ]]
            });
            return false;
        });




        //监听头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'recBatch':
                    if (data.length === 0) {
                        layer.msg('请至少选择一行');
                    } else {
                        var delIds = "userIds=";
                        for (var i = 0; i < data.length; i++) {
                            // console.log(data[i].userId);
                            delIds += (data[i].userId + ',');
                        }

                        // obj.del();
                        $.ajax({
                            type: "get",//提交方式
                            url: "<%=path%>/recbatch.ro",//提交的地址
                            data: delIds,
                            datatype: "text",
                            success: function () {//成功之后返回的信息 msg就是返回的内容
                                layer.alert("批量解禁成功",{
                                    time: 0
                                    ,btn:['Sure']
                                    ,icon:6
                                    ,yes: function () {
                                        location.reload();//重新加载页面
                                    }
                                })
                            },
                            error: function () {//失败后调用的函数
                                layer.alert("批量解禁失败，稍后重试", {
                                    icon: 6
                                })
                            }
                        });

                    }
                    break;
            }
            ;
        });

        //监听行工具事件
        table.on('tool(test)', function (obj) {
            //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值
            if (layEvent === 'recc') {
                layer.confirm('确定给他解禁？？', function (index) {
                    obj.del(); //删除对应行（tr）的DOM结构
                    console.log(obj.data.userId);//获取选中行的userid
                    layer.close(index);
                    //向服务端发送删除指令
                    $.ajax({
                        type: "get",//提交方式
                        url: "<%=path%>/recone.ro",//提交的地址
                        // data: data.field,//携带的数据参数
                        data: "userId=" + obj.data.userId,
                        datatype: "text",
                        success: function () {//成功之后返回的信息 msg就是返回的内容
                            layer.alert("解禁成功", {
                                icon: 6
                            })
                        },
                        error: function () {//失败后调用的函数
                            layer.alert("解禁失败，稍后重试", {
                                icon: 6
                            })
                        }
                    });
                });
            }
        });

    });

</script>
</body>
</html>

