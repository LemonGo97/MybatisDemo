<%--
  Created by IntelliJ IDEA.
  User: Ambition
  Date: 2018/11/9
  Time: 16:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath();%>
<%
    String userId = String.valueOf(session.getAttribute("userId"));

    String headimages= String.valueOf(session.getAttribute("headimages"));
    System.out.println(headimages);
    if (headimages!=null&&!headimages.equals("null")){
        headimages=String.valueOf(session.getAttribute("headimages"));
    }else{
        headimages="/front/images/wos.jpg";
    }
    System.out.println(headimages);
%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin user Examples</title>
    <meta name="description" content="个人信息">
    <meta name="keywords" content="user">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="<%=path%>/front/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=path%>/front/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="个人信息"/>
    <link rel="stylesheet" href="<%=path%>/front/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="<%=path%>/front/assets/css/admin.css">
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css"/>
    <script src="<%=path%>/layui/layui.all.js"></script>
</head>
<body>
<div class="admin-content" style="overflow: auto">
    <div class="admin-content-body">
        <div class="am-cf am-padding am-padding-bottom-0">
            <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">个人资料</strong> /
                <small>Personal information</small>
            </div>
        </div>

        <hr/>
        <c:forEach items="${customerInfo}" var="cuInfo" varStatus="status">
            <div class="am-g">
                <div class="am-u-sm-12 am-u-md-4 am-u-md-push-8">

                    <div class="am-panel am-panel-default">
                        <div class="am-panel-bd">
                            <div class="am-g">
                                <div class="am-u-md-4">
                                    <img  id="demo1" class="am-img-circle am-img-thumbnail"
                                          src="<%=path%><%=headimages%>"alt=""/>
                                </div>
                                <div class="am-u-md-8">
                                    <p>你可以使用本地上传头像来更换您的头像</p>
                                    <form class="am-form">
                                        <div class="am-form-group" style="margin-top: 20px">
                                            <div class="layui-upload">
                                                <button type="button" class="layui-btn" id="test1">更换头像</button>
                                                <div class="layui-upload-list">
                                                    <p id="demoText"></p>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="am-panel am-panel-default">
                        <div class="am-panel-bd">
                            <div class="user-info">
                                <p>等级信息</p>
                                <div class="am-progress am-progress-sm">
                                    <div class="am-progress-bar" style="width: 60%"></div>
                                </div>
                                <p class="user-info-order">当前等级：<strong>LV8</strong> 活跃天数：<strong>587</strong>
                                    距离下一级别：<strong>160</strong></p>
                            </div>
                            <div class="user-info">
                                <p>信用信息</p>
                                <div class="am-progress am-progress-sm">
                                    <div class="am-progress-bar am-progress-bar-success" style="width: 80%"></div>
                                </div>
                                <p class="user-info-order">信用等级：正常当前 信用积分：<strong>80</strong></p>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="am-u-sm-12 am-u-md-8 am-u-md-pull-4">
                    <form class="am-form am-form-horizontal">
                        <input id="user-Id" name="userId" value="${cuInfo.userId}" hidden/>
                        <div class="am-form-group">
                            <label for="user-name" class="am-u-sm-3 am-form-label">姓名 / Name</label>
                            <div class="am-u-sm-9">
                                <input type="text" id="user-name" name="username" value="${cuInfo.username}"
                                       placeholder="姓名 / Name">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-email" class="am-u-sm-3 am-form-label">电子邮件 / Email</label>
                            <div class="am-u-sm-9">
                                <input type="email" id="user-email" name="email" value="${cuInfo.email}"
                                       placeholder="输入你的电子邮件 / Email">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-weibo" class="am-u-sm-3 am-form-label">微博 / Twitter</label>
                            <div class="am-u-sm-9">
                                <input type="text" id="user-weibo" name="weibo" value="${cuInfo.weibo}"
                                       placeholder="输入你的微博 / Twitter">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-phone" class="am-u-sm-3 am-form-label">电话 / Telephone</label>
                            <div class="am-u-sm-9">
                                <input type="tel" id="user-phone" name="telephone" disabled value="${cuInfo.telephone}"
                                       placeholder="输入你的电话号码 / Telephone">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-QQ" class="am-u-sm-3 am-form-label">QQ</label>
                            <div class="am-u-sm-9">
                                <input type="number" pattern="[0-9]*" name="qq" value="${cuInfo.qq}" id="user-QQ"
                                       placeholder="输入你的QQ号码">
                            </div>
                        </div>

                        <div class="am-form-group">
                            <label for="user-intro" class="am-u-sm-3 am-form-label">简介 / Intro</label>
                            <div class="am-u-sm-9">
                                <textarea class="" rows="5" id="user-intro" name="intro"
                                          placeholder="输入个人简介">${cuInfo.intro}</textarea>
                                <small>250字以内写出你的一生...</small>
                            </div>
                        </div>

                        <div class="am-form-group">
                            <div class="am-u-sm-9 am-u-sm-push-3">
                                <button type="button" id="okMsg"  onclick="" class="am-btn am-btn-primary" >保存修改</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </c:forEach>
    </div>

</div>
<!-- content end -->
<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=path%>/front/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="<%=path%>/front/assets/js/amazeui.min.js"></script>

<script src="<%=path%>/front/assets/js/app.js"></script>
<script>
    function testdoune() {

    }
</script>
<script>
    layui.use(['jquery', 'upload'], function () {
        var $ = layui.jquery
            , upload = layui.upload;

        upload.render({
            elem: '#test1'
            ,field: 'filename'
            ,accept: 'images'
            ,acceptMime: 'image/*'
            ,auto: false
            ,size: '3072'
            ,bindAction: '#okMsg'
            ,url: '<%=path%>/customerInfoEdit.us'
            ,data: {
                username: function () {
                    return $("#user-name").val();
                },
                email: function () {
                    return $("#user-email").val();
                },
                weibo: function () {
                    return $("#user-weibo").val();
                },
                telephone: function () {
                    return $("#user-phone").val();
                },
                qq: function () {
                    return $("#user-QQ").val();
                },
                intro: function () {
                    return $("#user-intro").val();
                },
                userId: function () {
                    return $("#user-Id").val();
                }
            }
            ,choose:function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            ,before: function(obj){
                layer.load();
            }
            ,done: function(res){
                //如果上传失败
                if(res.code > 0){
                    layer.closeAll('loading')
                    return layer.msg('上传失败');
                }
                //上传成功
                layer.closeAll('loading');
                parent.location.reload();
            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                layer.closeAll('loading');
                demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
        });


    })
</script>
</body>
</html>
