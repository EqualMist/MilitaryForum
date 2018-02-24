<%--
  Created by IntelliJ IDEA.
  User: KelipuTe
  Date: 2017/9/7
  Time: 15:07
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
    <title>user</title>
    <%@ include file="/view/reUse/head.jsp" %>
</head>
<body>
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--网页主体--%>
</body>
</html>
