<%--
  Created by IntelliJ IDEA.
  User: KelipuTe
  Date: 2017/9/8
  Time: 20:19
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
    <title>show</title>
    <%@ include file="/view/reUse/head.jsp" %>
</head>
<body>
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<div class="jumbotron">
    <div class="container">
        <div class="media">
            <div class="media-left">
                <img id="user_avatar" class="media-object img-circle img_avatar" alt="64x64" src="">
            </div>
            <div class="media-body">
                <h4 class="media-heading" id="document_id" data-name="${param.id}"><span id="title">title</span>
                    <a class="btn btn-primary btn-lg pull-right" href="" role="button">修改帖子 </a>
                </h4>
                <span id="username">username</span>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-9" role="main">
            <div id="body">
                body
            </div>
            <hr>
            <div id="comment">
                comment
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="/static/js/discussion/show.js"></script>
</html>
