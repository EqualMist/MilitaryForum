
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE>
<html>

<head>
    <title>修改用户信息</title>
</head>
<body>
<div class="tab-content">
    <div class="page-header">
        <h1>
            个人信息
        </h1>
    </div>
    <div class="tab-pane active" id="showinfo">
        <form class="form-horizontal" style="margin-top: 20px">
            <fieldset disabled="">
                <div class="form-group">
                    <label for="user_name" class="col-sm-3 control-label">用户名</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control"  id="user_name"  value=<%=user.getUsername() %>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="user_email" class="col-sm-3 control-label">邮箱</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control"  id="user_email"value=<%=user.getEmail() %>>
                    </div>
                </div>
                <div class="form-group">
                    <label for="user_renown" class="col-sm-3 control-label">声望</label>
                    <div class="col-sm-6">
                        <input type="text" class="form-control"  id="user_renown" value=<%=user.getRenown() %>>
                    </div>
                </div>
            </fieldset>
            <div class="form-group">
                <label for="user_tel" class="col-sm-3 control-label">电话</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control"  id="user_tel" value=<%=user.getTel() %>>
                </div>
            </div>
            <div class="col-sm-offset-3 col-sm-6">
                <button type="button" class="btn btn-default" id="modify">修改</button>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="/static/js/user/user.js"></script>
</body>
</html>
