
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
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>管理员发送消息</title>
    <%@ include file="/view/reUse/head.jsp" %>
    <%--<link type="text/css" rel="stylesheet" href="http://localhost:8080/static/css/leftSlippingBox.css">--%>
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
                <div class="panel-heading text-center">全站消息</div>
                <div class="panel-body active" id="showinfo">
                    <form class="form-horizontal" style="margin-top: 20px">
                        <div class="form-group" style="text-align: center">
                            <img id="info-avatar" class="img_avatar img-circle" style="height: 150px;width: 150px;">
                        </div>
                        <div class="form-group">
                            <label for="notification" class="col-sm-3 control-label">全站消息：</label>
                            <div class="col-sm-6">
                                <textarea  class="form-control" id="notification" rows="5"></textarea>
                                <span style="color: red;visibility: hidden" id="error_message">消息内容不能为空！</span>

                            </div>
                        </div>
                        <div class="col-sm-offset-3 col-sm-6">
                            <button type="button" class="btn btn-primary form-control" id="send">发布</button>
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
    }
</script>

<script type="text/javascript" src="/static/js/admin/notification.js"></script>

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
