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
    <title>index</title>
</head>
<body>
<div>
    <ul>
        <li>path:<%=path%></li>
        <li>pageContext.request.contextPath:${pageContext.request.contextPath}</li>
        <li>basePath:<%=basePath%></li>
        <li><a href="view/home.jsp">home.jsp</a></li>
        <li><a href="view/about.jsp">about.jsp</a></li>
        <li><a href="view/user/register.jsp">register.jsp</a></li>
        <li><a href="view/user/login.jsp">login.jsp</a></li>
        <li><a href="view/user/user.jsp">user.jsp</a></li>
    </ul>
</div>
</body>
</html>