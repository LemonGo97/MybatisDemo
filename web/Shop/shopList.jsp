<%--
  Created by IntelliJ IDEA.
  User: Ambition
  Date: 2018/11/4
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <title>商家列表</title>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css" media="all">
    <style>
        body {
            margin: 10px;
        }

        .layui-table-cell .layui-form-checkbox[lay-skin=primary] {
            top: 5px;
        }
        .layui-input-block {
            margin-left: 0px;
            margin-top: 2px;
            min-height: 36px;
        }
    </style>
</head>
<body>
<div class="weadmin-nav">
			<span class="layui-breadcrumb">
		        <a>首页</a>
		        <a>商家管理</a>
		        <a><cite>店铺列表</cite></a>
		    </span>
    <a class="layui-btn layui-btn-sm" style="line-height:1.6em;margin-top:3px;float:right" href="javascript:location.replace(location.href);" title="刷新">
        <i class="layui-icon" style="line-height:30px">ဂ</i></a>
</div>
<div id="testText">
    <marquee onMouseOut="this.start()" onMouseOver="this.stop()"><font color="#ff2370" size="2">重要消息：系统将在今晚24:00分进行大规模升级，届时所有用户和商家都无法访问平台，请注意</font>
    </marquee>
</div>
<div class="layui-row" style="text-align:center; margin-top: 10px">
    <form id="shopform" class="layui-form layui-col-md12 we-search" method="get">
        商家搜索：
        <div class="layui-inline">
            <input type="text" name="shopname" placeholder="店铺名称" autocomplete="off" class="layui-input">
        </div>
        <div class="layui-inline">
            <input type="text" name="telephone" placeholder="联系电话" autocomplete="off" class="layui-input">
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
        <button class="layui-btn layui-btn-sm " lay-event="addShop"><i class="layui-icon layui-icon-add-1"></i>添加商铺</button>
        <button class="layui-btn layui-btn-sm " lay-event="delBatch"><i class="layui-icon layui-icon-delete"></i> 批量拉黑</button>
    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">拉黑</a>
</script>
<script type="text/html" id="btnDemo">
    <div class="layui-input-block">

    <input value="{{d.shopId}}" type="checkbox" {{#  if(d.shopState == 1){ }}checked{{#  } }} name="status" lay-skin="switch" lay-text="是|否" lay-filter="switchTest">


    </div>
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
            , url: '<%=path%>/jsonShop?del=0' //数据接口
            , title: '商户表'
            , height: 472
            , page: true //开启分页
            , toolbar: '#toolbarDemo' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
            , totalRow: true //开启合计行
            , limit: 8
            , limits: [8, 10, 15, 20, 25]
            , cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                , {field: 'shopId', title: '店铺ID', sort: true, align: "center", fixed: 'left'}
                , {field: 'shopName', title: '店铺名称',  align: "center"}
                , {field: 'passWord', title: '管理密码', align: "center"}
                , {field: 'shopAddress', title: '店铺所在地', sort: true, align: "center"}
                , {field: 'createDate', title: '注册日期', sort: true, align: "center"}
                , {field: 'shopState', title: '审核状态',toolbar: '#btnDemo',  align: "center" }
                , {field: 'businessMan', title: '负责人', align: "center"}
                , {field: 'telephone', title: '电话号码', align: "center"}
                , {fixed: 'right', width: 165, align: 'center', toolbar: '#barDemo', title: '操作'}
            ]]
        });

        form.on('submit(submit)', function (data) {

            table.render({
                elem: '#demo'
                , url: '<%=path%>/jsonShop?del=0' //数据接口
                , where: data.field
                , title: '商户表'
                , height: 472
                , page: true //开启分页
                , toolbar: 'default' //开启工具栏，此处显示默认图标，可以自定义模板，详见文档
                , totalRow: true //开启合计行
                , limit: 8
                , limits: [8, 10, 15, 20, 25]
                , cols: [[ //表头
                    {type: 'checkbox', fixed: 'left'}
                    , {field: 'shopId', title: '店铺ID', sort: true, align: "center", fixed: 'left'}
                    , {field: 'shopName', title: '店铺名称',  align: "center"}
                    , {field: 'passWord', title: '管理密码', align: "center"}
                    , {field: 'shopAddress', title: '店铺所在地', sort: true, align: "center"}
                    , {field: 'createDate', title: '注册日期', sort: true, align: "center"}
                    , {field: 'shopState', title: '审核状态', sort: true, align: "center"}
                    , {field: 'businessMan', title: '负责人', align: "center"}
                    , {field: 'telephone', title: '电话号码', align: "center"}
                    , {fixed: 'right', width: 165, align: 'center', toolbar: '#barDemo', title: '操作', align: "center"}
                ]]
            });
            return false;
        });


        form.on("switch(switchTest)",function () {
            $.post({url:'<%=path%>/shopState',data:{shopId:this.value,shopState:this.checked}});
        });



        //监听头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var checkStatus = table.checkStatus(obj.config.id)
                , data = checkStatus.data; //获取选中的数据
            switch (obj.event) {
                case 'addShop':
                    layer.open({
                        type: 2,
                        area: ['830px', '470px'],
                        title: "添加",
                        fixed: false, //不固定
                        maxmin: true,
                        content: '<%=path%>/Shop/child/addShop.jsp',
                        end: function () {
                            location.reload();
                        }
                    });
                    break;
                case 'delBatch':
                    if (data.length === 0) {
                        layer.msg('请至少选择一行');
                    } else {
                        var delIds = "shopIds=";
                        for (var i = 0; i < data.length; i++) {
                            // console.log(data[i].userId);
                            delIds += (data[i].shopId + ',');
                        }

                        // obj.del();
                        $.ajax({
                            type: "get",//提交方式
                            url: "<%=path%>/shopdeletebatch",//提交的地址
                            data: delIds,
                            datatype: "text",
                            success: function () {//成功之后返回的信息 msg就是返回的内容
                                layer.alert("批量拉黑成功",{
                                    time: 0
                                    ,btn:['Sure']
                                    ,icon:6
                                    ,yes: function () {
                                        location.reload();//重新加载页面
                                    }
                                })
                            },
                            error: function () {//失败后调用的函数
                                layer.alert("拉黑失败，稍后重试", {
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
            if (layEvent === 'detail') {
                layer.msg('查看操作');
            } else if (layEvent === 'del') {
                layer.confirm('真的拉黑这个店铺么', function (index) {
                    obj.del(); //删除对应行（tr）的DOM结构
                    console.log(obj.data.shopId);//获取选中行的userid
                    layer.close(index);
                    //向服务端发送删除指令
                    $.ajax({
                        type: "get",//提交方式
                        url: "<%=path%>/shopdelOne",//提交的地址
                        // data: data.field,//携带的数据参数
                        data: "shopId=" + obj.data.shopId,
                        datatype: "text",
                        success: function () {//成功之后返回的信息 msg就是返回的内容
                            layer.alert("拉黑成功", {
                                icon: 6
                            })
                        },
                        error: function () {//失败后调用的函数
                            layer.alert("拉黑失败，稍后重试", {
                                icon: 6
                            })
                        }
                    });
                });
            } else if (layEvent === 'edit') {

                // var arr = [];
                // console.log( data.length);
                // for(var i = 1; i< data.length; i++){
                //     console.log(123);
                //     console.log($(data[i]).text());
                //     arr.push($(data[i]).text());//拿到点击按钮的当前那条信息的内容 放到一个数组里
                // }

                layer.open({
                    type: 2,
                    title: "修改",
                    area: ['750px', '575px'],
                    fixed: false, //不固定
                    maxmin: true,
                    content: '<%=path%>/Shop/child/editShop.jsp',
                    success: function(layero, index){
                        var body = layer.getChildFrame('body',index);//建立父子联系
                        var inputList = body.find('input');//获取所有input元素的数组
                        $(inputList[0]).val(obj.data.shopId);//给第一个input标签赋值为当前行的username
                        $(inputList[1]).val(obj.data.shopName);
                        $(inputList[2]).val(obj.data.password);
                        $(inputList[3]).val(obj.data.shopAddress);
                        $(inputList[4]).val(obj.data.businessMan);
                        $(inputList[5]).val(obj.data.telephone);
                    },
                    end: function () {
                        location.reload();
                    }
                });
            }
        });

    });

</script>
</body>
</html>
