<%@ page import="com.ambition.entity.Shop.Shop" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    List<Shop> shopList= (List<Shop>) request.getAttribute("shopList");
    Integer shopId=shopList.get(0).getShopId();
    String ShopName=shopList.get(0).getShopName();
    String CreateDate= String.valueOf(shopList.get(0).getCreateDate());
    String Telephone=shopList.get(0).getTelephone();
%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>云印享平台商家端</title>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/amazeui.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/core.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/menu.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/index.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/admin.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/typography.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/form.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/component.css"/>
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css"/>
</head>
<body>
<!-- Begin page -->

 <header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="index.jsp" class="logo"><span>云印享平台商家端</span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">商家平台</h4></li>
        </ul>

        <ul class="am-nav am-navbar-nav am-navbar-right">
            <li class="inform"><button style="margin-top: 10px;" type="button" class="am-btn am-btn-default am-radius" onclick="editShop()"><i class="am-icon-bell-o" aria-hidden="true" >   密码修改</i></button></li>
        </ul>
    </div>
</header>
<!-- end page -->


<div class="admin">
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas" style="background: #FFFFFF;border-right: 0px;overflow-y: hidden">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <!-- User -->
            <div class="user-box am-hide-sm-only">
                <div class="user-img">
                    <img src="<%=path%>/Shop/assets/img/avatar-1.jpg" alt="user-img" title="Mat Helme"
                         class="img-circle img-thumbnail img-responsive">
                    <div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>
                </div>
                <h5><a href="#"><%=shopList.get(0).getShopName()%></a></h5>
                <ul class="list-inline">
                    <li>
                        <a href="#">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>

                    <li>
                        <a href="#" class="text-custom">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End User -->

            <ul class="am-list admin-sidebar-list">
                <li><a href="/shopMainServlet.bu?shopId=<%=shopId%>&limit=8" target="jumpage"><span class="am-icon-home"  style="margin-right: 10px"></span> 首页</a></li>
                <li class="admin-parent">
                    <a href="/ShopOrderServlet.bu?shopId=<%=shopId%>" target="jumpage"><span class="am-icon-calendar-check-o"  style="margin-right: 10px"></span>
                        订单管理 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                </li>
                <li class="admin-parent">
                    <a href="/shopInfo.bu?edit=nope&shopTel=<%=shopList.get(0).getTelephone()%>" target="jumpage"><i class="am-icon-cogs" aria-hidden="true" style="margin-right: 10px"></i> 店铺维护 <span
                            class="am-icon-angle-right am-fr am-margin-right"></span></a>

                </li>
                <li class="admin-parent">
                    <a href="/404.jsp" target="jumpage"><i class="am-icon-bug" aria-hidden="true" style="margin-right: 10px"></i> 提交反馈 <span
                            class="am-icon-angle-right am-fr am-margin-right"></span></a>

                </li>
                <li class="admin-parent" style="border-bottom-width: 0px;">
                    <a href="javascript:void(0)" onclick="location.href='/shopLogout.bu'"><span class="am-icon-hand-spock-o"  style="margin-right: 10px"></span> 退出系统
                        </a>
                </li>
                <li class="admin-parent" style=" border-top-width: 0px; border-bottom-width: 0px; padding: 50px 45px 0px 45px;scroll: no">
                    <p>负责人：<%=shopList.get(0).getBusinessMan()%></p>
                    <p>联系方式：<%=shopList.get(0).getTelephone()%></p>
                    <p>地址：<%=shopList.get(0).getShopAddress()%></p>
                </li>
            </ul>

        </div>
    </div>

    <div class="content-page">
        <!-- Start content -->
        <iframe name="jumpage" src='/shopMainServlet.bu?shopId=<%=shopId%>&limit=8' frameborder="0" scrolling="yes"
                style="width: 100%;height: 100%" class="weIframe"></iframe>
    </div>
</div>
</div>
<input id="shId" value="<%=shopList.get(0).getShopId()%>" hidden>
<input id="shName" value="<%=shopList.get(0).getShopName()%>" hidden>
<input id="tell" value="<%=shopList.get(0).getTelephone()%>" hidden>
<input id="credate" value="<%=shopList.get(0).getCreateDate()%>" hidden>
<!-- navbar -->
<script type="text/javascript" src="<%=path%>/Shop/assets/js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/amazeui.min.js"></script>
<script src="<%=path%>/layui/layui.all.js"></script>
<script>

    function editShop() {
        layer.open({
            type: 2,
            title: "修改",
            area: ['750px', '558px'],
            fixed: false, //不固定
            maxmin: true,
            content: '<%=path%>/Admin/Shop/child/editShopPW.jsp',
            success: function(layero, index){
                var body = layer.getChildFrame('body',index);//建立父子联系
                var inputList = body.find('input');//获取所有input元素的数组
                $(inputList[0]).val($("#shId").val());//给第一个input标签赋值为当前行的shopname
                $(inputList[1]).val($("#shName").val());
                // $(inputList[2]).val(obj.data.password);
                $(inputList[3]).val($("#credate").val());
                $(inputList[4]).val($("#tell").val());
            },
            end: function () {
                location.reload();
            }
        });
    }
</script>
</body>

</html>
