
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>登录</title>
    <%@ include file="/view/reUse/head.jsp" %>
    <link rel="stylesheet" href="/static/css/user.css">
</head>
<body background="/static/image/background/Wisconsin1.jpg" style="background-size:100% 100%;height:100%;">
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--网页主体--%>
<div class="row clearfix" style="margin-top: 60px;">
<div class="col-md-offset-4 col-md-4">
    <form class="form-horizontal" action="" method="post" id="form_login">
        <span class="heading">欢迎登录</span>
        <div class="form-group">
            <input type="text" class="form-control" id="log_username" title="以字母开头，长度不超过20，包含字符，数字，下划线" placeholder="邮 箱"/>
            <label id="log_message1" style="visibility: hidden;color:red">邮箱不符合条件</label>
        </div>

        <div class="form-group help">
            <input type="password" class="form-control" id="log_password" title="长度不超过20，包含数字，字母" placeholder="密 码"/>
            <label id="log_message2" style="visibility: hidden;color:red">密码不符合条件</label>
        </div>

        <div class="form-group help">
            <input type="text" class = "form-control" id="log_vertification" placeholder="验证码" />
            <br>
            <canvas id="mycanvas" width='150' height='40' style = "cursor: pointer;float: left">
                您的浏览器不支持canvas，请换个浏览器试试~
            </canvas>
            <label id="log_message3" style="visibility: hidden;float: left;color:red">验证码错误,请重新输入</label>
        </div>
        <div class="form-group">
            <span class="text">没有账号？<a href="/view/user/register.jsp">注册</a></span>
            <button type="button" class="btn btn-default" id="log_login" >用  户  登  录</button>
        </div>
    </form>
</div>
</div>
</body>
<script type="text/javascript" src="/static/js/user/login.js"></script>
</html>
