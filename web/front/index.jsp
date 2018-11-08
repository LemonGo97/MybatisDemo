<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<html>
<head>
    <title></title>
    <link href="<%=path%>/front/assets/css/amazeui.min.css" rel="stylesheet">
    <link href="<%=path%>/front/css/main.css" rel="stylesheet">
    <script language="javascript" src="<%=path%>/front/assets/js/jquery.min.js"></script>
    <script language="javascript" src="<%=path%>/front/assets/js/amazeui.min.js"></script>
    <style>
        .am-icon-btn{
            padding-top: 12px;
        }
    </style>
</head>



<body>
<%--<script>$.AMUI.progress.start();</script>--%>

<div id="main">

    <div id="nav" class="am-animation-slide-left">
        <div id="nav-logo"><img src="<%=path%>/front/images/ico.png"/></div>
        <div id="navul">
            <ul>
                <a href="/customeRec" target="jumpage">
                    <li>
                        <i class="am-icon-files-o am-icon-btn"></i>
                        <div>文件柜</div>
                    </li>
                </a>
                <a href="/customerlist" target="jumpage">
                    <li>
                        <i class="am-icon-user-plus am-icon-btn"></i>
                        <div>用户管理</div>
                    </li>
                </a>
                <a href="/shoplist" target="jumpage">
                    <li>
                        <i class="am-icon-gear am-icon-btn"></i>
                        <div>系统设置</div>
                    </li>
                </a>
            </ul>
        </div>

    </div>

    <div class="am-g" id="topmenu">

        <div id="search" class="am-u-lg-4 am-animation-slide-top">
            <input type="text" id="keywords" placeholder="业务查找">
            <i class="wos-icon-search-plus"></i>
        </div>


        <div id="userinfo" class="am-u-lg-6 am-animation-slide-top">
            <ul>
                <li id="face"><img src="<%=path%>/front/images/wos.jpg"/></li>
                <li id="nickname">
                    <div id="nickname_username">姜威</div>
                    <div id="nickname_role">高级管理员</div>
                </li>
                <li class="lishow lishow_line">
                    <i class="am-icon-user-secret am-icon-md"></i>
                </li>
                <li class="lishow lishow_line">
                    <i class="am-icon-bell-o am-icon-md"></i>
                </li>
                <li class="lishow">
                    <i class="am-icon-cogs am-icon-md"></i>
                </li>
            </ul>
        </div>
        <a href="<%=path%>/front/login.jsp">
            <div id="loginout" class="am-animation-slide-right am-u-lg-2">
                LOGOUT
            </div>
        </a>
    </div>

    <div id="plan" class="am-animation-slide-right">
        <div id="plancontent">
            <iframe name="jumpage" src='<%=path%>/after/pages/welcome.jsp' frameborder="0" scrolling="yes"
                    style="width: 100%;height: 100%" class="weIframe"></iframe>
        </div>
    </div>

    <script language="javascript">
        var pageheight = $(window).height();
        var pagewidth = $(window).width();
        var pagepadding = pagewidth * 0.02
        $('body').css('padding', pagepadding + 'px');

        $('#nav').css('height', pageheight - pagepadding * 2 + 'px');
        $('#nav').css('width', pagewidth * 0.08 + 'px');
        $('#nav').css('margin-right', pagepadding + 'px');
        $('#navul').css('width', pagewidth * 0.08 + 20 + 'px');

        $('#search').css('margin-right', pagepadding / 2 + 'px');
        $('#search').css('width', pagewidth * 0.3 + 'px');

        $('#userinfo').css('width', pagewidth * 0.42 + 'px');
        $('#userinfo').css('margin-right', pagepadding / 2 + 'px');
        $('#loginout').css('width', pagewidth * 0.12 + 'px');

        $('#plan').css('width', pagewidth * 0.86 + 'px');
        if (window.screen.height == 768) {
            $('#plan').css('height', pageheight - 52 - pagepadding * 4 + 'px');
        } else {
            $('#plan').css('height', pageheight - 40 - pagepadding * 4 + 'px');
        }
        $('#plancontent').css('height', $('#plan').height() + 'px');
        $('#plan').css('margin-top', pagepadding + 'px');
        $(window).resize(function () {
            location.reload();
        });
    </script>
</div>

</body>
</html>