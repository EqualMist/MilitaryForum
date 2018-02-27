<%--
  Created by IntelliJ IDEA.
  User: KelipuTe
  Date: 2017/9/7
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Zzy</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="https://github.com/KelipuTe/Test_Forum_JavaEE">GitHub</a></li>
                <li><a href="/view/about.jsp">About</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <c:choose>
                    <c:when test="${sessionScope.userSignIn != null}">
                        <li><img src="/static/image/avatar/ougen.jpg" class="img_avatar"></li>
                        <li class="dropdown">
                            <a id="username" name="username" href="" class="dropdown-toggle"
                               data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    ${userSignIn.username}<span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="/view/user/user.jsp">个人信息</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="/userController/logout">退出登录</a></li>
                            </ul>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="/view/user/login.jsp">登录</a></li>
                        <li><a href="/view/user/register.jsp">注册</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>