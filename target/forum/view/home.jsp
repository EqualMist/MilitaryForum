<%--
  Created by IntelliJ IDEA.
  User: KelipuTe
  Date: 2017/9/5
  Time: 13:47
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
    <title>home</title>
    <%@ include file="/view/reUse/head.jsp" %>
</head>
<body>
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--网页主体--%>
<div class="jumbotron">
    <div class="container">
        <h1>Welcome</h1>
        <p>What do you want to find?</p>
        <p><a class="btn btn-primary btn-lg pull-right" href="" role="button">Find Something</a></p>
    </div>
</div>
<div>
    <div class="container">
        <div>
            <ul id="myTab" class="nav nav-tabs">
                <li class="active"><a href="#discussion" data-toggle="tab" class="btn btn-success">帖子</a></li>
                <li><a href="#about" tabindex="-1" data-toggle="tab" class="btn btn-success">关于</a></li>
            </ul>
        </div>
        <div id="myTabContent" class="tab-content discussion_border">
            <div class="tab-pane fade in active" id="discussion">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-1" role="main">
                            <div id="showAll"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="about">
                <div>
                    <p>关于页面</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="/static/js/home.js"></script>
</html>
