<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<%
    String userId= String.valueOf(session.getAttribute("userId"));
    String username= String.valueOf(session.getAttribute("username"));
    String phone= String.valueOf(session.getAttribute("phone"));
    String createdate= String.valueOf(session.getAttribute("createdate"));
%>
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
    <link rel="stylesheet" href="<%=path%>/layui/css/layui.css"/>
</head>



<body>
<%--<script>$.AMUI.progress.start();</script>--%>

<div id="main">

    <div id="nav" class="am-animation-slide-left" style="height: 688.64px">
        <div id="nav-logo"><img src="<%=path%>/front/images/ico.png"/></div>
        <div id="navul">
            <ul>
                <a href="<%=path%>/after/pages/welcome.jsp" target="jumpage">
                    <li>
                        <i class="am-icon-home am-icon-btn"></i>
                        <div>个人首页</div>
                    </li>
                </a>
                <a href="/queryAddress?customerId=<%=userId%>" target="jumpage">
                    <li>
                        <i class="am-icon-print am-icon-btn"></i>
                        <div>开始打印</div>
                    </li>
                </a>
                <a href="/customerQueryOrder?customerId=<%=userId%>" target="jumpage">
                    <li>
                        <i class="am-icon-list am-icon-btn"></i>
                        <div>订单管理</div>
                    </li>
                </a>
                <a href="<%=path%>/customerInfoQuery?userId=<%=userId%>&isDel=0" target="jumpage">
                    <li>
                        <i class="am-icon-child am-icon-btn"></i>
                        <div>个人设置</div>
                    </li>
                </a>
            </ul>
        </div>

    </div>

    <div class="am-g" id="topmenu">

        <div id="search" class="am-u-lg-4 am-animation-slide-top" style="text-align: center;padding-top: 20px">
            <%--<input type="text" id="keywords" placeholder="业务查找">--%>
            <font size="5">欢迎光临云印享打印服务平台</font>

        </div>


        <div id="userinfo" class="am-u-lg-6 am-animation-slide-top">
            <ul>
                <li id="face"><img src="<%=path%>/front/images/wos.jpg"/></li>
                <li id="nickname">
                    <div id="nickname_username"><%=username%></div>
                    <div id="nickname_role">用户</div>
                </li>

                <%--<li class="lishow lishow_line">--%>
                    <%--<i class="am-icon-user-secret am-icon-md"></i>--%>
                <%--</li>--%>

                <%--<li class="lishow lishow_line">--%>
                    <%--<i class="am-icon-bell-o am-icon-md"></i>--%>
                <%--</li>--%>
                <a onclick="editCustomer()">
                <li class="lishow">
                    <i class="am-icon-cogs am-icon-md"></i>
                </li>
                </a>
            </ul>
        </div>
        <a href="/customerlogout.do">
            <div id="loginout" class="am-animation-slide-right am-u-lg-2">
                LOGOUT
            </div>
        </a>
    </div>

    <div id="plan" class="am-animation-slide-right">
        <div id="plancontent">
            <iframe name="jumpage" src='<%=path%>/after/pages/welcome.jsp' frameborder="0" scrolling="yes"
                    style="width: 100%;height: 100%;margin-bottom: 50px" class="weIframe"></iframe>
        </div>
    </div>
    <input id="uname" value="<%=username%>" hidden>
    <input id="unid" value="<%=userId%>" hidden>
    <input id="tell" value="<%=phone%>" hidden>
    <input id="credate" value="<%=createdate%>" hidden>
    <script language="javascript">
        var pageheight = $(window).height();
        var pagewidth = $(window).width();
        var pagepadding = pagewidth * 0.02
        $('body').css('padding', pagepadding + 'px');

        $('#nav').css('height', pageheight - pagepadding * 2 -171 + 'px');
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
            $('#plan').css('height', pageheight - 52 - pagepadding * 4-189 + 'px');
            alert(pageheight - 52 - pagepadding * 4 + 'px')
            // 587.28px
        } else {
            $('#plan').css('height', pageheight - 40 - pagepadding * 4-189 + 'px');
        }
        $('#plancontent').css('height', $('#plan').height() + 'px');
        //560px
        $('#plan').css('margin-top', pagepadding + 'px');
        $(window).resize(function () {
            location.reload();
        });
    </script>
</div>
<script src="<%=path%>/layui/layui.all.js"></script>
<script>
    function al() {
        alert("111")
    }
    function editCustomer() {
        layer.open({
            type: 2,
            title: "修改",
            area: ['750px', '558px'],
            fixed: false, //不固定
            maxmin: true,
            content: '<%=path%>/Admin/Customer/child/editCustomer.jsp',
            success: function(layero, index){
                var body = layer.getChildFrame('body',index);//建立父子联系
                var inputList = body.find('input');//获取所有input元素的数组
                $(inputList[0]).val($("#unid").val());//给第一个input标签赋值为当前行的username
                $(inputList[1]).val($("#uname").val());
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