
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE>
<html>
<%@ page import="cn.zzy.forum.entity.User"%>
<%
    HttpSession a = request.getSession();
    User user = (User)a.getAttribute("userSignIn");
%>
<head>
    <title>修改密码</title>
    <%@ include file="/view/reUse/head.jsp" %>
</head>
<body style="background-color:#fafafa">
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--通过session获取用户id，并放入隐藏字段--%>
<input id="session-userid" class="hidden" value=<%=session.getAttribute("userid")%> />
<%--网页主体--%>
<div class="container" style="margin-top: 100px;">

    <div class="row master-user-center">
        <%-- 用户信息左侧栏共用部分 --%>
        <%@ include file="/view/reUse/user/useinfoleft.jsp" %>

        <div class="col-md-10">
            <div class="panel panel-default">
                <div class="panel-heading text-center">修改密码</div>
                <div class="panel-body active" id="showinfo">
                    <form class="form-horizontal" style="margin-top: 20px">
                        <fieldset disabled="">
                            <div class="form-group" style="text-align: center">
                                <img id="info-avatar" class="img_avatar img-circle" style="height: 150px;width: 150px;">
                            </div>
                            <!--隐藏域-->
                            <div class="form-group" style="visibility: hidden">
                                    <input type="email" class="form-control"  id="user_email">
                            </div>
                            <div class="form-group">
                                <label for="oldpassword" class="col-sm-3 control-label">原密码</label>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control"  id="oldpassword">
                                    <span style="color: red;visibility: hidden">hidden</span>
                                </div>
                            </div>
                        </fieldset>
                        <div class="form-group">
                            <label for="reg_password" class="col-sm-3 control-label">新密码</label>
                            <div class="col-sm-6">
                                <input type="password" class="form-control"  id="reg_password">
                                <span style="color: red;visibility: hidden" id="reg_message2">密码不符合条件</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="reg_password_again" class="col-sm-3 control-label">重复密码</label>
                            <div class="col-sm-6">
                                <input type="password" class="form-control"  id="reg_password_again">
                                <span style="color: red;visibility: hidden" id="reg_message3">输入的密码不一致</span>
                            </div>
                        </div>
                        <div class="col-sm-offset-3 col-sm-6">
                            <button type="button" class="btn btn-primary form-control" id="modify">修改</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%--通过隐藏字段用户id获取用户信息的js(注意：配合顶部隐藏字段一起使用！！！)--%>
<script type="text/javascript" src="/static/js/usersession.js"></script>
<script type="text/javascript">
    /**
     * 自定义页面的赋值，通过ajax的success方法调用
     * @param data
     */
    function customizeuser(data) {
        console.log(data);
        <%--顶部头像的显示--%>
        document.getElementById("top-avatar").src=data.avatar;
        document.getElementById("info-avatar").src=data.avatar;
        $("#user_email").val(data.email);
        $("#oldpassword").val(data.password);

    }
</script>

<script type="text/javascript" src="/static/js/user/changepassword.js"></script>

<%--可关闭提示框--%>
<div class="master-alert" style="z-index: 999">
    <div id="master-alert-container" class="col-md-4 col-md-offset-4"></div>
</div>

<script type="text/javascript">
    function makeAlertBox(type,value){
        var title;
        switch (type) {
            case 'success' :
                title = '成功！';
                break;
            case 'info' :
                title = '信息！';
                break;
            case 'warning' :
                title = '警告！';
                break;
            case 'danger' :
                title = '错误！';
                break;
            default :
                title = '错误！';
        }
        $('#master-alert-container').append(
            '<div class="alert alert-' + type + ' alert-dismissible" role="alert">' +
            '<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>' +
            '<strong>' + title + '</strong>' + value +
            '</div>');
    }
</script>

</body>
</html>