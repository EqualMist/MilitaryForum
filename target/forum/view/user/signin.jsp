
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>每日签到</title>
    <%@ include file="/view/reUse/head.jsp" %>
</head>
<body style="background-color:#fafafa">
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--通过session获取用户id，并放入隐藏字段--%>
<input id="session-userid" class="hidden" value=<%=session.getAttribute("userid")%> />

<div class="container" style="margin-top: 100px;">

    <div class="row master-user-center">
        <%-- 用户信息左侧栏共用部分 --%>
        <%@ include file="/view/reUse/user/useinfoleft.jsp" %>

        <div class="col-md-10">
            <div class="panel panel-default">
                <div class="panel-heading text-center">每日签到</div>
                <div class="panel-body active">
                    <div class="form-group" >
                        <h1><span style="text-align: center;display:block;" id="user_name">欢迎您：</span></h1>
                    </div>
                    <div class="form-group" style="text-align: center">
                        <img id="info-avatar" class="img_avatar img-circle" style="height: 150px;width: 150px;">
                    </div>
                    <%--<div class="form-group">--%>
                        <%--<input style="display: none" type="text" id ="userEmail" name ="userEmail" readonly>--%>
                    <%--</div>--%>
                    <div class="col-sm-offset-3 col-sm-6" style="margin-top: 100px">
                        <button type="button" id="signin" class="btn btn-primary form-control">点击签到</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>




<%--通过隐藏字段用户id获取用户信息的js(注意：配合顶部隐藏字段一起使用！！！)--%>
<%--<script type="text/javascript" src="/static/js/usersession.js"></script>--%>
<script type="text/javascript" src="/static/js/user/signin.js"></script>
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
        document.getElementById("user_name").innerText = "欢迎您：" + data.username;
        // $("#userEmail").val(data.email);
    }
</script>

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
