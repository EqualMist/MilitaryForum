
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/view/home.jsp">军事论坛</a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/view/militaryinfo/maininfo.jsp">军事信息</a></li>
                <li><a href="/view/info/shippic.jsp">军事图库</a></li>
                <li><a href="/view/home.jsp">军事帖子</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <c:choose>
                    <c:when test="${sessionScope.userSignIn != null}">
                        <li><img id="top-avatar" class="img_avatar img-circle"></li>
                        <li class="dropdown">
                            <a id="username" name="username" href="" class="dropdown-toggle"
                               data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                    ${userSignIn.username}<span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="/view/user/user.jsp">个人信息</a></li>
                                <li role="separator" class="divider"></li>
                                <li><a href="/view/myforum/mydiscussion.jsp">我的贴吧</a></li>
                                <c:choose>
                                    <c:when test="${sessionScope.userSignIn.username =='zzy'}">
                                        <li role="separator" class="divider"></li>
                                        <li><a href="/view/admin/report.jsp">论坛管理</a></li>
                                    </c:when>
                                </c:choose>
                                <li role="separator" class="divider"></li>
                                <li><a href="/userController/logout">退出登录</a></li>
                            </ul>
                        </li>
                        <li><a href="/view/myforum/notification.jsp"><i class="fa fa-bell-o"  style="font-size:24px;"></i></a></li>
                    </c:when>
                    <c:otherwise>
                        <li><a href="/view/user/login.jsp">登录</a></li>
                        <li><a href="/view/user/register.jsp">注册</a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
            <!-- 搜索栏 -->
            <form class="navbar-form navbar-right" role="search">
                <div class="form-group">
                    <select class="form-control" id="option-select">
                        <option id="option-info" value="0">军事信息</option>
                        <option id="option-discussion" value="1">军事帖子</option>
                    </select>
                    <input type="text" id="search-content" class="form-control" placeholder="搜索你感兴趣的内容..." style="width: 300px">
                </div>
                <button type="button" class="btn btn-default" id="search-btn"><span class="glyphicon glyphicon-search"></span> 搜 索</button>
            </form>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!--搜索框js-->
<script type="text/javascript">
    $(document).ready(function () {
        //搜索帖子
        $("#search-btn").click(function () {
            var info = $("#option-info").val();
            var discussion = $("#option-discussion").val();
            var select =  $("#option-select").val();
            var content = $("#search-content").val();
            //输入内容转换，防止出现乱码
            var keyword = encodeURI(content);
            // console.log("选择内容的info:"+info);
            // console.log("选择内容的discussion:"+discussion);
            console.log("选择内容的select:"+select);
            console.log("输入的搜索内容为:"+content);
            if(content!="") {
                if(select == 0) {
                    console.log("执行select==0");
                    //搜索信息
                    window.location.href="http://localhost:8080/view/militaryinfo/searchmilitaryinfo.jsp?keyword="+keyword;
                } else if(select == 1) {
                    console.log("执行select==1");
                    //搜索帖子
                    window.location.href="http://localhost:8080/view/searchdiscussion.jsp?keyword="+keyword;
                }
            } else {
                if(select == 0){
                    window.location.href="http://localhost:8080/view/militaryinfo/maininfo.jsp"
                }else{
                    window.location.href="http://localhost:8080/view/home.jsp";
                }
            }

        });
    });
</script>
