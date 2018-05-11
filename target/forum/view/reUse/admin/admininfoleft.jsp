<%-- 管理员信息左侧栏共用部分 --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-2">
    <div class="panel panel-default">
        <div class="panel-heading text-center">管理员中心</div>
        <div class="panel-body">
            <ul class="nav nav-pills nav-stacked text-center">
                <li role="presentation" class="list-li">
                    <a href="/view/admin/report.jsp"><span class="fa fa-home fa-lg"></span> 举报管理 </a>
                </li>
                <li role="presentation" class="list-li">
                    <a href="/view/admin/notification.jsp"><span class="fa fa-bell fa-lg"></span> 全站通知 </a>
                </li>
                <li role="presentation" class="list-li">
                    <a href="/view/user/avatar.jsp"><span class="fa fa-user-circle-o fa-lg"></span> 用户管理 </a>
                </li>
                <li role="presentation" class="list-li">
                    <a href="/view/user/user.jsp"><span class="fa fa-edit fa-lg"></span> 论坛管理 </a>
                </li>
            </ul>
        </div>
    </div>
</div>