<%-- 用户信息左侧栏共用部分 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-2">
    <div class="panel panel-default">
        <div class="panel-heading text-center">个人中心</div>
        <div class="panel-body">
            <ul class="nav nav-pills nav-stacked text-center">
                <li role="presentation" class="list-li">
                    <a href="/view/user/user.jsp"><span class="fa fa-edit fa-lg"></span> 我的信息 </a>
                </li>
                <li role="presentation" class="list-li">
                    <a href="/view/user/avatar.jsp"><span class="fa fa-user-circle-o fa-lg"></span> 我的头像 </a>
                </li>
                <li role="presentation" class="list-li">
                    <a href="/view/user/password.jsp"><span class="fa fa-key fa-lg"></span> 账号安全 </a>
                </li>
                <li role="presentation" class="list-li">
                    <a href="/view/user/signin.jsp"><span class="fa fa-dollar fa-lg"></span> 每日签到 </a>
                </li>
            </ul>
        </div>
    </div>
</div>