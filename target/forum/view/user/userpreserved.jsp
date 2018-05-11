<%--
  Created by IntelliJ IDEA.
  User: akiha
  Date: 2018/3/23 0023
  Time: 17:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="row clearfix">
    <div class="col-md-12 column">
        <div class="tabbable" id="tabs-909231">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#showinfo" data-toggle="tab">查看个人信息</a>
                </li>
                <li>
                    <a href="#changeinfo" data-toggle="tab">修改个人信息</a>
                </li>
                <li>
                    <a href="#changeavatar" data-toggle="tab">修改头像</a>
                </li>
                <li>
                    <a href="#changeavatar" data-toggle="tab">签到</a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane active" id="showinfo">
                    <form class="form-horizontal" style="margin-top: 20px">
                        <fieldset disabled="">
                            <div class="form-group">
                                <label for="user_name" class="col-sm-3 control-label">用户名</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control"  id="user_name"  value=<%=user.getUsername() %>>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="user_email" class="col-sm-3 control-label">邮箱</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control"  id="user_email"value=<%=user.getEmail() %>>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="user_tel" class="col-sm-3 control-label">电话</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control"  id="user_tel" value=<%=user.getTel() %>>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="user_renown" class="col-sm-3 control-label">声望</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control"  id="user_renown" value=<%=user.getRenown() %>>
                                </div>
                            </div>
                        </fieldset>
                    </form>
                </div>
                <div class="tab-pane" id="changeinfo">
                    <form class="form-horizontal" style="margin-top: 20px">
                        <div class="form-group">
                            <label for="user_name1" class="col-sm-3 control-label">用户名</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control"  id="user_name1"  value=<%=user.getUsername() %>>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_email1" class="col-sm-3 control-label">邮箱</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control"  id="user_email1"value=<%=user.getEmail() %>>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="user_tel1" class="col-sm-3 control-label">电话</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control"  id="user_tel1" value=<%=user.getTel() %>>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-6">
                                <button type="button" class="btn btn-default" id="modify">修改</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
