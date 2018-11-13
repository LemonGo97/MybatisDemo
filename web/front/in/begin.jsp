<%@ page import="com.ambition.entity.Customer.CustomerAddress" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Ambition
  Date: 2018/11/9
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%String path = request.getContextPath();%>
<%
    String userId = String.valueOf(session.getAttribute("userId"));
    String username = String.valueOf(session.getAttribute("username"));
%>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Amaze UI Admin form Examples</title>
    <meta name="description" content="订单创建">
    <meta name="keywords" content="form">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="icon" type="image/png" href="<%=path%>/front/assets/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="<%=path%>/front/assets/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="订单创建"/>
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
                <strong class="am-text-primary am-text-lg">订单提交</strong> /
                <small>Order</small>
            </div>
        </div>

        <hr>
        <input id="usid" value="<%=userId%>" hidden/><input id="usname" value="<%=username%>" hidden/>
        <div class="am-tabs am-margin" data-am-tabs="{noSwipe: 1}">
            <ul class="am-tabs-nav am-nav am-nav-tabs">
                <li class="am-active"><a href="#tab1">订单基本信息</a></li>
            </ul>

            <div class="am-tabs-bd">
                <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-4 am-u-md-2 am-text-right">配送地址</div>
                        <div class="am-u-sm-8 am-u-md-10">
                            <select id="userAddress" data-am-selected="{btnSize: 'sm'}">
                                <%--<option>--%>
                                <c:forEach items="${addresses}" var="address" varStatus="status">
                                    <option value="${address.address1}">${address.address1}</option>
                                    <option value="${address.address2}">${address.address2}</option>
                                    <option value="${address.address3}">${address.address3}</option>
                                    <input id="addr1" value="${address.address1}" hidden/><input id="addr2" value="${address.address2}" hidden/><input value="${address.address3}" id="addr3" hidden/>
                                </c:forEach>
                            </select>
                            <a onclick="addressManager()" style="margin-left: 10px"><font color="red" size="2">地址管理</font></a>
                        </div>
                    </div>

                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-4 am-u-md-2 am-text-right">选择商家</div>
                        <div class="am-u-sm-8 am-u-md-10">
                            <select id="Shops" data-am-selected="{btnSize: 'sm'}">
                                <%--<option>--%>
                                <c:forEach items="${shopList}" var="shops" varStatus="status">
                                    <option value="${shops.shopId}">${shops.shopName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="am-g am-margin-top">
                        <div class="am-u-sm-4 am-u-md-2 am-text-right">配送方式</div>
                        <div class="am-u-sm-8 am-u-md-10">
                            <div class="am-btn-group" data-am-button>
                                <label class="am-btn am-btn-default am-btn-xs">
                                    <input type="radio" name="ways" value="到店自取" data-am-ucheck> 到店自取
                                </label>
                                <label class="am-btn am-btn-default am-btn-xs am-active">
                                    <input type="radio" name="ways" value="物流配送" data-am-ucheck checked> 物流配送
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
                                <p>点击上传，或将文件拖拽到此处</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="am-margin">
            <button type="button" id="okOrder" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
            <button type="reset" class="am-btn am-btn-primary am-btn-xs">放弃保存</button>
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
    layui.use(['jquery', 'upload'], function () {
        var $ = layui.jquery
            , upload = layui.upload;

        upload.render({
            elem: '#fileupload'
            , url: '<%=path%>/FileUpload'
            , accept: 'file'
            , auto: false
            , exts: 'doc|docx|pdf|png|jpg|xls|txt'
            , bindAction: '#okOrder'
            , field: 'filename'
            , method: 'POST'
            , size: '51200'
            , data: {
                // priceTag: function(){
                //     return $('#priceTag').val();
                // },
                customerId: function () {
                    return <%=userId%>;
                },
                userAddress: function () {
                    return $("#userAddress option:selected").val();
                },
                Shops: function () {
                    return $("#Shops option:selected").val();
                },
                Ways: function () {
                    return $('input:radio[name="ways"]:checked').val();
                }
            }
            // , choose: function (obj) {
            //     obj.preview(
            //         function () {
            //             var price = ($(".layui-upload-file")[0].files[0].size) / 1024 / 1024 * 1.5;
            //             $('#priceTag').val(price.toFixed(2));
            //         }
            //     );
            //     // $('#priceTag').val((($(".layui-upload-file")[0].files[0].size) / 1024 / 1024 * 1.5).toFixed(2));
            // }
            , before: function (obj) { //obj参数包含的信息，跟 choose回调完全一致，可参见上文。
                layer.load(); //上传loading
            }
            , done: function (res) {
                if (res.code != 0) {
                    alert("上传失败,稍后重试");
                }
                layer.closeAll('loading');
                window.location = res.data.url
            }
            , error: function () {
                alert("上传失败,稍后重试");
                layer.closeAll('loading'); //关闭loading
            }
        });


    })
</script>
<script>
    function addressManager() {
        layui.use(['jquery',  'layer'], function () {
            var $ = layui.jquery
                , layer = layui.layer;
            layer.open({
                type: 2,
                title: "修改",
                area: ['750px', '558px'],
                fixed: false, //不固定
                maxmin: true,
                content: '<%=path%>/Customer/child/editAddress.jsp',
                success: function (layero, index) {
                    var body = layer.getChildFrame('body', index);//建立父子联系
                    var inputList = body.find('input');//获取所有input元素的数组
                    var addr1=$("#addr1").val();
                    var addr2=$("#addr2").val();
                    var addr3=$("#addr3").val();
                    var usid=$("#usid").val();
                    var usname=$("#usname").val();
                    $(inputList[0]).val(usid);//给第一个input标签赋值为当前行的username
                    $(inputList[1]).val(usname);
                    $(inputList[2]).val(addr1);
                    $(inputList[3]).val(addr2);
                    $(inputList[4]).val(addr3);
                },
                end: function () {
                    location.reload();
                }
            });
        })
    }
</script>
</body>
</html>
