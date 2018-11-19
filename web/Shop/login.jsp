<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<html lang="zh" class="no-js">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>

    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/reset.css"> <!-- CSS reset -->
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/style.css"> <!-- Gem style -->
    <script src="<%=path%>/Shop/assets/js/modernizr.js"></script> <!-- Modernizr -->
    <link rel="stylesheet" type="text/css" href="<%=path%>/front/css/demo.css"/>
    <link rel="stylesheet" type="text/css" href="<%=path%>/layui/css/layui.css" />
    <style>
        .cd-user-modal-container {
            margin-top: 170px;
        }

        body {
            background-image: url("<%=path%>/Shop/assets/img/background.jpg");
            background-repeat: repeat;
            background-position: center;
            background-attachment: fixed;
            background-clip: border-box;
        }

        h1 {

            margin: 90px;
            font-weight: 800;
            color: #ffffff;
            font-size: 3em;
            font-family: "Merriweather Sans", sans-serif;
        }
        h2 {
            margin: 20px;
            font-weight: 800;
            color: #fff9ff;
            font-size: 21pt;
            font-family: "Merriweather Sans", sans-serif;
        }
    </style>
</head>
<body>
<header role="banner">
    <div id="cd-logo"><a href="#0"><img src="<%=path%>/Shop/assets/img/cd-logo.svg" alt="Logo"></a></div>

    <nav class="main-nav">
        <ul>
            <!-- inser more links here -->
            <li><a class="cd-signin" href="#0">登陆</a></li>
            <li><a class="cd-signup" href="#0">注册</a></li>
        </ul>
    </nav>
</header>
<h1 align="center">云印享打印服务平台(商户端)</h1>
<h2 align="center">欢迎来到云印享打印服务平台商户端</h2>
<h2 align="center" style="margin-bottom: 90px;">如果您是第一次来到这里，请先注册或登陆</h2>
<p style="    font-family: 'Blokk', sans-serif;
    font-size: 0.85em;
    text-align: center;
    opacity: 0.5;
    margin: 0;
    overflow: hidden;">aaaaaaaaaaaa</p><br>
<p style="    font-family: 'Blokk', sans-serif;
    font-size: 0.85em;
    text-align: center;
    opacity: 0.5;
    margin: 0;
    overflow: hidden;">aaaaaaaaaaaaaaaaaaaa</p><br>
<p style="    font-family: 'Blokk', sans-serif;
    font-size: 0.85em;
    text-align: center;
    opacity: 0.5;
    margin: 0;
    overflow: hidden;">aaaaaaaaaaaaaaaa</p><br>
<p style="    font-family: 'Blokk', sans-serif;
    font-size: 0.85em;
    text-align: center;
    opacity: 0.5;
    margin: 0;
    overflow: hidden;">aaaaaaaaaaaaaaaaaaa</p>

<div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->

    <div class="cd-user-modal-container"> <!-- this is the container wrapper -->
        <ul class="cd-switcher">
            <li><a href="#0">登陆</a></li>
            <li><a href="#0">成为新商家</a></li>
        </ul>

        <div id="cd-login"> <!-- log in form -->
            <form class="cd-form" method="post" id="formsignin" action="/ShopLogin.lobu">
                <input type="text" name="isDel" value="0" hidden/>
                <p class="fieldset">
                    <label class="image-replace cd-email" for="signin-email">Telephone</label>
                    <input class="full-width has-padding has-border" id="signin-email" type="tel"
                           placeholder="Telephone" name="telephone">
                    <span class="cd-error-message">Error message here!</span>
                </p>

                <p class="fieldset">
                    <label class="image-replace cd-password" for="signin-password">Password</label>
                    <input class="full-width has-padding has-border" id="signin-password" type="text"
                           placeholder="Password" name="password">
                    <a href="#0" class="hide-password">Hide</a>
                    <span class="cd-error-message">Error message here!</span>
                </p>
                <p class="fieldset">
                    <input class="full-width" type="submit" onclick="mysingin()"  value="Login">
                </p>
            </form>

            <!-- <a href="#0" class="cd-close-form">Close</a> -->
        </div> <!-- cd-login -->

        <div id="cd-signup"> <!-- sign up form -->
            <form class="cd-form" method="post" id="regShop"  action="/shopRegister.lobu">
                <p class="fieldset">
                    <label class="image-replace cd-username" for="signup-username">Username</label>
                    <input class="full-width has-padding has-border" id="signup-username" type="text"
                           placeholder="Shopname" name="shopName">
                    <span class="cd-error-message">Error message here!</span>
                </p>

                <p class="fieldset">
                    <label class="image-replace cd-email" for="telephone">Telephone</label>
                    <input class="full-width has-padding has-border" id="telephone" type="tel"
                           placeholder="Telephone" name="telephone">
                    <span class="cd-error-message">Error message here!</span>
                </p>

                <p class="fieldset">
                    <label class="image-replace cd-password" for="signup-password">Password</label>
                    <input class="full-width has-padding has-border" id="signup-password" type="text"
                           placeholder="Password" name="password">
                    <a href="#0" class="hide-password">Hide</a>
                    <span class="cd-error-message">Error message here!</span>
                </p>

                <p class="fieldset">
                    <input class="full-width has-padding" type="submit" onclick="mysingup()" value="Create account">
                </p>
            </form>

            <!-- <a href="#0" class="cd-close-form">Close</a> -->
        </div> <!-- cd-signup -->

        <a href="#0" class="cd-close-form">Close</a>
    </div> <!-- cd-user-modal-container -->
</div> <!-- cd-user-modal -->
<script src="<%=path%>/Shop/assets/js/jquery-1.11.0.min.js"></script>
<script src="<%=path%>/Shop/assets/js/main.js"></script> <!-- Gem jQuery -->
<script>
    function mysingup() {
        var formsignup = document.getElementById('regShop');
        formsignup.submit();
        alert("注册成功，请使用手机号和密码登陆")
    }
    function mysingin() {
        var formsignin = document.getElementById('formsignin');
        formsignin.submit();
    }
</script>

<script src="<%=path%>/layui/layui.all.js"></script>
<script type="text/javascript">
    $(function(){
        //动态绑定失去焦点事件
        $("#telephone").blur(function(){
            //进行ajax提交
            $.ajax({
                type: "GET",//提交方式
                url: "/shopRegister.lobu",//提交的地址
                data: "telephone="+$(this).val(),//携带的数据参数
                datatype:"text",//数据类型
                success: function(msg){//成功之后返回的信息 msg就是返回的内容
                    // $("#usernameMsg").html(msg);
                    if (msg=="nope"){
                        layer.msg("这个手机号已被注册")
                    }else if(msg=="empty"){
                        layer.msg("手机号不能为空")
                    }
                },
                error:function(){//失败后调用的函数

                }
            });
        });
    });
</script>
<script>
    var errori ='<%=request.getParameter("error")%>';
    if(errori=='yes'){
        layer.msg("登录失败,请检查你的用户名和密码!");
        // alert();
    }
</script>
</body>
</html>