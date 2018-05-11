<%--
  Created by IntelliJ IDEA.
  User: KelipuTe
  Date: 2017/9/5
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
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
    <title>注册</title>
    <%@ include file="/view/reUse/head.jsp" %>
    <link rel="stylesheet" href="/static/css/user.css">
</head>
<body background="/static/image/background/Wisconsin1.jpg" style="background-size:100% 100%;height:100%;">
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--网页主体--%>
<div class="col-md-offset-4 col-md-4" style="margin-top: 60px;">
    <form class="form-horizontal" action="" method="post" id="form_register">
        <span class="heading">欢迎注册</span>
        <div class="form-group">
            <input type="text" class="form-control" id="reg_username" title="以字母开头，长度3-16，包含字符，数字，下划线" placeholder="请输入昵称"/>
            <label id="reg_message" style="visibility: hidden;color:red">用户名不符合格式或已存在</label>
        </div>

        <div class="form-group">
            <input type="text" class="form-control" id="reg_email" title="以字母开头，长度不超过20，包含字符，数字，下划线" placeholder="请输入邮箱"/>
            <label id="reg_message1" style="visibility: hidden;color:red">邮箱不符合格式或已存在</label>
        </div>

        <div class="form-group help">
            <input type="password" class="form-control" id="reg_password" title="长度不超过16，包含数字，字母" placeholder="请输入密码"/>
            <label id="reg_message2" style="visibility: hidden;color:red">密码不符合条件</label>
        </div>

        <div class="form-group help">
            <input type="password" class="form-control" id="reg_password_again" placeholder="请再次输入密码"/>
            <label id="reg_message3" style="visibility: hidden;color:red">输入的密码不一致</label>
        </div>

        <div class="form-group">
            <span class="text">已有账号？<a href="/view/user/login.jsp">登录</a></span>
            <button type="button" class="btn btn-default" id="reg_register">用  户  注  册</button>
        </div>
    </form>
</div>
<%--网页底部--%>
</body>
<script type="text/javascript" src="/static/js/user/register.js"></script>
</html>
