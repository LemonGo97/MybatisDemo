<%--
  Created by IntelliJ IDEA.
  User: Ambition
  Date: 2018/11/9
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin form Examples</title>
    <meta name="description" content="订单创建">
    <meta name="keywords" content="form">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="icon" type="image/png" href="<%=path%>/front/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=path%>/front/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="订单创建" />
    <link rel="stylesheet" href="<%=path%>/front/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="<%=path%>/front/assets/css/admin.css"/>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css"/>

</head>
<body>
<!-- content start -->
<div class="admin-content" style="overflow: auto">
    <div class="admin-content-body">
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf">
                <strong class="am-text-primary am-text-lg">表单</strong> /
                <small>form</small>
            </div>
        </div>

        <hr>

        <div class="am-tabs am-margin" data-am-tabs>
            <ul class="am-tabs-nav am-nav am-nav-tabs">
                <li class="am-active"><a href="#tab1">订单基本信息</a></li>
            </ul>

            <div class="am-tabs-bd">
                <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-4 am-u-md-2 am-text-right">所属类别</div>
                        <div class="am-u-sm-8 am-u-md-10">
                            <select data-am-selected="{btnSize: 'sm'}">
                                <option value="option1">选项一...</option>
                                <option value="option2">选项二.....</option>
                                <option value="option3">选项三........</option>
                            </select>
                        </div>
                    </div>

                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-4 am-u-md-2 am-text-right">显示状态</div>
                        <div class="am-u-sm-8 am-u-md-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options" id="option1"> 正常
                                </label>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options" id="option2"> 待审核
                                </label>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="options" id="option3"> 不显示
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-4 am-u-md-2 am-text-right">推荐类型</div>
                        <div class="am-u-sm-8 am-u-md-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="checkbox"> 允许评论
                                </label>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="checkbox"> 置顶
                                </label>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="checkbox"> 推荐
                                </label>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="checkbox"> 热门
                                </label>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="checkbox"> 轮播图
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-4 am-u-md-2 am-text-right">
                            文件选择
                        </div>
                        <div class="am-u-sm-8 am-u-md-10">
                            <div name="file" class="layui-upload-drag" id="fileupload">
                                <i class="layui-icon"></i>
                                <p >点击上传，或将文件拖拽到此处</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="am-margin">
            <button type="button" id="okOrder" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
            <button type="button" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
        </div>
    </div>

</div>
<!-- content end -->
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=path%>/front/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="<%=path%>/front/assets/js/amazeui.min.js"></script>
<script src="<%=path%>/front/assets/js/app.js"></script>
<script src="<%=path%>/layui/layui.all.js"></script>

<script>
    layui.use('upload',function(){
        var $ = layui.jquery
            ,upload = layui.upload;

        upload.render({
            elem: '#fileupload'
            ,url: '<%=path%>/FileUpload'
            ,accept: 'file'
            ,auto: false
            ,exts: 'doc|docx|pdf|png|jpg|xls|txt'
            ,bindAction: '#okOrder'
            ,field: 'filename'
            ,size: '51200'
            ,data:{
                // id: function(){
                //     return $('#id').val();
                // }
            }
            ,done: function(res){
                if(res.code != 0){
                    return layer.msg("上传失败,稍后重试" +
                        "");
                }else {
                    return layer.msg("订单提交成功")
                }

            }
            ,error: function () {
                layer.msg("上传失败,稍后重试");
            }
        });
    })
</script>
</body>
</html>
