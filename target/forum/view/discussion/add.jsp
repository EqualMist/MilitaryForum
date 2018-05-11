
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>发帖</title>
    <%@ include file="/view/reUse/head.jsp" %>
    <!--ueditor引入文件-->
    <script type="text/javascript" charset="utf-8" src="/static/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="/static/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="/static/ueditor/lang/zh-cn/zh-cn.js"></script>

</head>
<body style="background-color:#fafafa">
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--通过session获取用户id，并放入隐藏字段(注意：配合usersession.js一起使用！！！)--%>
<input id="session-userid" class="hidden" value=<%=session.getAttribute("userid")%> />
<%--网页主体--%>
<div class="container" style="margin-top: 100px">
<div class="page-header">
    <h1>发帖</h1>
</div>
<div class="bs-example" data-example-id="simple-horizontal-form">
    <form class="form-horizontal">
        <fieldset disabled="">
        <div class="form-group">
            <label for="user_name" class="col-sm-3 control-label">发帖人</label>
            <div class="col-sm-2">
                <input type="text" class="form-control"  id="user_name" placeholder="发帖人" >
                <input type="text" class="form-control"  id="user_id" style="display:none" placeholder="发帖人ID">
            </div>
        </div>
        </fieldset>
        <div class="form-group">
            <label for="title" class="col-sm-3 control-label">主题</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="title" placeholder="请输入主题名">
                <span style="color: red;visibility: hidden" id="error_message1">帖子主题不能为空！</span>
            </div>
        </div>
        <div class="form-group">
            <label for="contentbody" class="col-sm-3 control-label">内容</label>
            <div class="col-sm-8">
                <%--<textarea id="contentbody" class="form-control" cols="30" rows="10" placeholder="贴子内容..."></textarea>--%>
                <script id="contentbody" style="height: 300px" name="content" type="text/plain">
                </script>
                <span style="color: red;visibility: hidden" id="error_message2">贴子内容不能为空！</span>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-3 col-sm-6">
                <button type="button" class="btn btn-primary form-control" id="add">发 布</button>
            </div>
        </div>
    </form>
    <script type="text/javascript">
            var editor = UE.getEditor('contentbody');
    </script>

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
        $("#user_name").val(data.username);
        $("#user_id").val(data.id);
        <%--顶部头像的显示--%>
        document.getElementById("top-avatar").src=data.avatar;
    }
</script>

<script type="text/javascript" src="/static/js/discussion/add.js"></script>

</body>
</html>
