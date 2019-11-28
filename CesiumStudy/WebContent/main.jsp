<%--
  需要先配置tomcat服务器
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="layui/css/layui.css">
    <script type="text/javascript" src="layui/layui.js"></script>
    <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#book_manage").click(function(){
                $("iframe").attr("src","book_manage.jsp");
            });
            $("#book_add").click(function(){
                $("iframe").attr("src","admin.do?method=getBookCases");
            });
            $("#reader_add").click(function(){
                $("iframe").attr("src","reader_add.jsp");
            });
            $("#reader_manage").click(function(){
                $("iframe").attr("src","reader_manage.jsp");
            });
            $("#borrow_manage").click(function(){
                $("iframe").attr("src","borrow_manage.jsp");
            });
            $("#book_count").click(function(){
                $("iframe").attr("src","book_count.jsp");
            });
            $("#book_count2").click(function(){
                $("iframe").attr("src","book_count2.jsp");
            });
            $("#borrow_back").click(function(){
                $("iframe").attr("src","borrow_back.jsp");
            });
        })
    </script>
</head>

<div class="layui-layout layui-layout-admin">
    <body class="layui-layout-body">
    <!-- 顶部菜单开始 -->
    <div class="layui-header">
        <div class="layui-logo">Library后台管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item layui-this"><a href="javascript:;">控制台</a></li>
            <li class="layui-nav-item"><a href="javascript:;">信息管理</a></li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="images/img.jpeg" class="layui-nav-img">
                    ${bookAdmin.username}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="logout.do">退出</a></li>
        </ul>
    </div>

    <!-- 顶部菜单结束 -->

    <!-- 左侧菜单开始 -->
    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">图书管理</a>
                    <dl class="layui-nav-child">
                        <dd class="layui-this"><a id="book_manage" href="javascript:void(0)">查询图书</a></dd>
                        <dd><a id="book_add" href="javascript:void(0)">添加图书</a></dd>
                        <dd><a id="borrow_manage" href="javascript:void(0)">借阅审核</a></dd>
                        <dd><a id="borrow_back" href="javascript:void(0)">还书审核</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a id="reader_manage" href="javascript:void(0)">查询用户</a></dd>
                        <dd><a id="reader_add" href="javascript:void(0)">添加用户</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">数据管理</a>
                    <dl class="layui-nav-child">
                        <dd><a id="book_count" href="javascript:void(0)">饼图</a></dd>
                        <dd><a id="book_count2" href="javascript:void(0)">柱状图</a></dd>
                        <dd><a id="book_export" href="admin.do?method=exportBook">导出图书数据</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <!-- 左侧菜单结束 -->

    <!-- 主体开始 -->
    <div class="layui-body">

        <iframe src="dataById.html" style="width: 100%;height: 100%;border: 0px"></iframe>

    </div>
    <!-- 主体结束 -->

    <!-- 底部开始 -->
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © 南风
    </div>
    <!-- 底部结束 -->
</div>
<script>
    //二级菜单联动
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
</body>
</html>
