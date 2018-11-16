<%@ page import="com.ambition.entity.Shop.Shop" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    List<Shop> shopList= (List<Shop>) request.getAttribute("shopList");
    Integer shopId=shopList.get(0).getShopId();
%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台模板</title>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/amazeui.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/core.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/menu.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/index.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/admin.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/typography.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/form.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/component.css"/>
</head>
<body>
<!-- Begin page -->

 <header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="index.jsp" class="logo"><span>云印享平台商家端</span><i class="zmdi zmdi-layers"></i></a>
    </div>

    <div class="contain">
        <ul class="am-nav am-navbar-nav am-navbar-left">

            <li><h4 class="page-title">基本表格</h4></li>
        </ul>

        <ul class="am-nav am-navbar-nav am-navbar-right">
            <li class="inform"><i class="am-icon-bell-o" aria-hidden="true"></i></li>
            <li class="hidden-xs am-hide-sm-only">
                <form role="search" class="app-search">
                    <input type="text" placeholder="Search..." class="form-control">
                    <a href=""><img src="<%=path%>/Shop/assets/img/search.png"></a>
                </form>
            </li>
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
                <li><a href="/shopMainServlet?shopId=<%=shopId%>&limit=5" target="jumpage"><span class="am-icon-home"  style="margin-right: 10px"></span> 首页</a></li>
                <li class="admin-parent">
                    <a href="<%=path%>/Shop/in/Order.jsp" target="jumpage"><span class="am-icon-calendar-check-o"  style="margin-right: 10px"></span>
                        订单管理 <span
                                class="am-icon-angle-right am-fr am-margin-right"></span></a>
                </li>
                <li class="admin-parent">
                    <a href="<%=path%>/Shop/in/main.jsp" target="jumpage"><i class="am-icon-cogs"
                                                                                      aria-hidden="true" style="margin-right: 10px"></i> 店铺维护 <span
                            class="am-icon-angle-right am-fr am-margin-right"></span></a>

                </li>
                <li class="admin-parent">
                    <a href="<%=path%>/Shop/in/main.jsp" target="jumpage"><span class="am-icon-hand-spock-o"  style="margin-right: 10px"></span> 退出系统
                        <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                </li>
                <li class="admin-parent" style="border-bottom-width: 0px; padding: 50px 45px 0px 45px;scroll: no">
                    <p>联系方式：<%=shopList.get(0).getTelephone()%></p>
                    <p>地址：<%=shopList.get(0).getShopAddress()%></p>
                </li>
            </ul>

        </div>
    </div>

    <div class="content-page">
        <!-- Start content -->
        <iframe name="jumpage" src='/shopMainServlet?shopId=<%=shopList.get(0).getShopId()%>' frameborder="0" scrolling="yes"
                style="width: 100%;height: 100%" class="weIframe"></iframe>
    </div>

</div>
</div>

<!-- navbar -->
<script type="text/javascript" src="<%=path%>/Shop/assets/js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/amazeui.min.js"></script>

</body>

</html>
