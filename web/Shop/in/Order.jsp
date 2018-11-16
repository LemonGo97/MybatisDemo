<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>后台模板</title>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/amazeui.css"/>
    <%--<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">--%>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/core.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/menu.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/index.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/admin.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/typography.css"/>
    <link rel="stylesheet" href="<%=path%>/Shop/assets/css/page/form.css"/>
</head>
<body style="overflow: auto;">
<div class="content">
    <div class="card-box" style="padding: 20px 0px 0px 0px;">
        <!-- Row start -->
        <div class="am-g">

            <div class="am-u-sm-12 am-u-md-3" style=" width: 100%;">
                <div class="am-input-group am-input-group-sm">
                    <input type="text" class="am-form-field">
                    <span class="am-input-group-btn">
				            <button class="am-btn am-btn-default" type="button">搜索</button>
				          </span>
                </div>
            </div>
        </div>
        <!-- Row end -->

        <!-- Row start -->
        <div class="am-g">
            <div class="am-u-sm-12">
                <form class="am-form">
                    <table class="am-table am-table-striped am-table-hover table-main">
                        <thead>
                        <tr>
                            <th class="table-check"><input type="checkbox"/></th>
                            <th class="table-id">ID</th>
                            <th class="table-title">标题</th>
                            <th class="table-type">类别</th>
                            <th class="table-author am-hide-sm-only">作者</th>
                            <th class="table-date am-hide-sm-only">修改日期</th>
                            <th class="table-set">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td><input type="checkbox"/></td>
                            <td>1</td>
                            <td><a href="#">Business management</a></td>
                            <td>default</td>
                            <td class="am-hide-sm-only">测试1号</td>
                            <td class="am-hide-sm-only">2014年9月4日 7:28:47</td>
                            <td>
                                <div class="am-btn-toolbar">
                                    <div class="am-btn-group am-btn-group-xs">
                                        <button class="am-btn am-btn-default am-btn-xs am-text-secondary"><span
                                                class="am-icon-pencil-square-o"></span> 接单
                                        </button>
                                        <button class="am-btn am-btn-default am-btn-xs am-hide-sm-only"><span
                                                class="am-icon-copy"></span> 发货
                                        </button>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="am-cf">
                        共 15 条记录
                        <%--<div class="am-fr">--%>
                            <%--<ul class="am-pagination">--%>
                                <%--<li class="am-disabled"><a href="#">«</a></li>--%>
                                <%--<li class="am-active"><a href="#">1</a></li>--%>
                                <%--<li><a href="#">2</a></li>--%>
                                <%--<li><a href="#">3</a></li>--%>
                                <%--<li><a href="#">4</a></li>--%>
                                <%--<li><a href="#">5</a></li>--%>
                                <%--<li><a href="#">»</a></li>--%>
                            <%--</ul>--%>
                        <%--</div>--%>
                    </div>
                    <hr/>
                </form>
            </div>

        </div>
        <!-- Row end -->

    </div>


</div>

<!-- navbar -->

<script type="text/javascript" src="<%=path%>/Shop/assets/js/jquery-2.1.0.js"></script>
<script type="text/javascript" src="<%=path%>/Shop/assets/js/amazeui.min.js"></script>
</body>

</html>
