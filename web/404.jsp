<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title> 404</title>
  <meta name="description" content="这是一个404页面">
  <meta name="keywords" content="404">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <meta name="apple-mobile-web-app-title" content="404" />
  <link rel="stylesheet" href="<%=path%>/front/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="<%=path%>/front/assets/css/admin.css">
</head>
<body>
  <!-- content start -->
  <div class="admin-content">
    <div class="admin-content-body">
      <div class="am-cf am-padding am-padding-bottom-0">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">404</strong> / <small>That’s an error</small></div>
      </div>

      <hr>

      <div class="am-g">
        <div class="am-u-sm-12">
          <h2 class="am-text-center am-text-xxxl am-margin-top-lg">404. Not Found</h2>
          <p class="am-text-center">没有找到你要的页面</p>
        <pre class="page-404">
          .----.
       _.'__    `.
   .--($)($$)---/#\
 .' @          /###\
 :         ,   #####
  `-..__.-' _.-\###/
        `;_:    `"'
      .'"""""`.
     /,  ya ,\\
    //  404!  \\
    `-._______.-'
    ___`. | .'___
   (______|______)
        </pre>
        </div>
      </div>
    </div>
  </div>
  <!-- content end -->
<script src="<%=path%>/front/assets/js/amazeui.min.js"></script>
<script src="<%=path%>/front/assets/js/app.js"></script>
</body>
</html>
