<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%String path = request.getContextPath();%>
<html>
<head>
<title>用户登陆</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
	<style>
		ul.top-links li a i.fa {
			margin-top: 13px;
		}
	</style>
	<link href="<%=path%>/front/css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="<%=path%>/front/css/font-awesome.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="<%=path%>/front/css/demo.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/front/css/component.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/front/css/content.css" />
    <link rel="stylesheet" type="text/css" href="<%=path%>/layui/css/layui.css" />
    <script src="<%=path%>/front/js/modernizr.custom.js"></script>
    <script src="<%=path%>/front/js/jquery-3.3.1.min.js"></script>

    <script type="text/javascript">
        $(function(){
            //动态绑定失去焦点事件
            $("#telephone").blur(function(){
                //进行ajax提交
                $.ajax({
                    type: "GET",//提交方式
                    url: "/customeRegister.lous",//提交的地址
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
    <script src="<%=path%>/layui/layui.all.js"></script>
</head>
<body>
<div class="">
    <header class="codrops-header" style="margin-top: 70px;">
        <h1>云印享打印服务平台</h1>
    </header>

    <section style="margin-top: 40px">
        <p>如果您是第一次访问我们的网站，请先<strong>注册</strong></p>
        <div class="mockup-content">
            <p>hah hahahahahah hahah haha hahahah hahahah hahahahah haha.</p>
            <div class="morph-button morph-button-modal morph-button-modal-2 morph-button-fixed">
                <button type="button"><font size="5">登 陆</font></button>
                <div class="morph-content">
                    <div>
                        <div class="content-style-form content-style-form-1">
                            <span class="icon icon-close">关闭</span>
                            <h2>登 陆</h2>
                            <form method="post" id="formsignin" action="/customerlogin.lous">
                                <input type="text" name="isDel" value="0" hidden/>
                                <p><label>手机号</label><input type="text" name="telephone" maxlength="11"/></p>
                                <p><label>密码</label><input type="password" name="password" maxlength="20"/></p>
                                <p><button onclick="mysingin()">登 陆</button></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div><!-- morph-button -->
            <strong class="joiner"><font size="5">or</font></strong>
            <div class="morph-button morph-button-modal morph-button-modal-3 morph-button-fixed">
                <button type="button"><font size="5">注 册</font></button>
                <div class="morph-content" style="height: 590px;">
                    <div>
                        <div class="content-style-form content-style-form-2">
                            <span class="icon icon-close">关闭</span>
                            <h2>注 册</h2>
                            <form id="formsignup" method="post" action="/customeRegister.lous">
                                <p><label>您的昵称</label><input type="text" name="username" maxlength="8" /></p>
                                <p><label>您的手机号码</label><input id="telephone" name="telephone" type="text" maxlength="11"  /></p>
                                <p><label>输入您的密码</label><input type="password" name="password" /></p>
                                <p><label>请再输入一次密码</label><input type="password" /></p>
                                <p><button onclick="mysingup()">注 册</button></p>
                            </form>
                        </div>
                    </div>
                </div>
            </div><!-- morph-button -->
            <p>hahahaha hahaha haha hahah haha haha haha haha hahahah hahahaha hahahah hahah haha hahahah hahahah hahaha hahahah hahahaha.</p>
        </div><!-- /form-mockup -->
    </section>
</div><!-- /container -->
<script src="<%=path%>/front/js/classie.js"></script>
<script src="<%=path%>/front/js/uiMorphingButton_fixed.js"></script>
<script>
    function mysingin() {
        var formsignin = document.getElementById('formsignin');
        formsignin.submit();
    }
    function mysingup() {
        var formsignup = document.getElementById('formsignup');
        formsignup.submit();
        alert("注册成功，请使用手机号和密码登陆")
    }
    (function() {
        var docElem = window.document.documentElement, didScroll, scrollPosition;

        // trick to prevent scrolling when opening/closing button
        function noScrollFn() {
            window.scrollTo( scrollPosition ? scrollPosition.x : 0, scrollPosition ? scrollPosition.y : 0 );
        }

        function noScroll() {
            window.removeEventListener( 'scroll', scrollHandler );
            window.addEventListener( 'scroll', noScrollFn );
        }

        function scrollFn() {
            window.addEventListener( 'scroll', scrollHandler );
        }

        function canScroll() {
            window.removeEventListener( 'scroll', noScrollFn );
            scrollFn();
        }

        function scrollHandler() {
            if( !didScroll ) {
                didScroll = true;
                setTimeout( function() { scrollPage(); }, 60 );
            }
        };

        function scrollPage() {
            scrollPosition = { x : window.pageXOffset || docElem.scrollLeft, y : window.pageYOffset || docElem.scrollTop };
            didScroll = false;
        };

        scrollFn();

        [].slice.call( document.querySelectorAll( '.morph-button' ) ).forEach( function( bttn ) {
            new UIMorphingButton( bttn, {
                closeEl : '.icon-close',
                onBeforeOpen : function() {
                    // don't allow to scroll
                    noScroll();
                },
                onAfterOpen : function() {
                    // can scroll again
                    canScroll();
                },
                onBeforeClose : function() {
                    // don't allow to scroll
                    noScroll();
                },
                onAfterClose : function() {
                    // can scroll again
                    canScroll();
                }
            } );
        } );

        // for demo purposes only
        [].slice.call( document.querySelectorAll( 'form button' ) ).forEach( function( bttn ) {
            bttn.addEventListener( 'click', function( ev ) { ev.preventDefault(); } );
        } );
    })();
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