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
    <title>register</title>
    <%@ include file="/view/reUse/head.jsp" %>
</head>
<body>
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--网页主体--%>
<div class="col-md-6 col-md-offset-3">
    <form action="" method="post" id="form_register" >
        <div class="form-group">
            <label for="username">用户名：</label>
            <input type="text" id="username" name="username" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="password">密码：</label>
            <input type="password" id="password" name="password" class="form-control"/>
        </div>
    </form>
    <div><button id="btn_register" class="btn btn-primary form-control">注册</button></div>
</div>
<%--网页底部--%>
</body>
<script type="text/javascript" src="/static/js/user/register.js"></script>
</html>
