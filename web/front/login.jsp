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
</head>
<body>
<!-- main -->
<div class="main">
	<h1>登陆你的账户</h1>
	<div class="main-w3lsrow">
		<!-- login form -->
		<div class="login-form login-form-left">
			<div class="agile-row">
				<div class="head">
					<h2>Login to your account</h2>
					<span class="fa fa-lock"></span>
				</div>
				<div class="clear"></div>
				<div class="login-agileits-top">
					<form action="#" method="post">
						<input type="text" class="name" name="user name" Placeholder="Telephone" required="" maxlength="10"/>
						<input type="password" class="password" name="Password" Placeholder="Password" required=""/>
						<input type="submit" value="Login Now">
					</form>
				</div>
				<div class="login-agileits-bottom">
					<h6><a href="#">Forgot your password?</a></h6>
				</div>

			</div>
		</div>
	</div>
	<!-- //login form -->

	<div class="login-agileits-bottom1">
		<h3>其他登陆方式</h3>
	</div>

	<!-- social icons -->
	<div class="social_icons agileinfo">
		<ul class="top-links">
			<li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a></li>
			<li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
			<li><a href="#" class="vimeo"><i class="fa fa-vimeo"></i></a></li>
		</ul>
	</div>
	<!-- //social icons -->

	<!-- copyright -->
	<div class="copyright">

	</div>
	<!-- //copyright -->
</div>
<!-- //main -->

</body>
</html>