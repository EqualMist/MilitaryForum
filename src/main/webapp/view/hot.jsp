
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>军事论坛 热门帖</title>
    <%@ include file="/view/reUse/head.jsp" %>
    <link href="/static/css/discussion.css" rel="stylesheet" type="text/css">

</head>
<body style="background-color:#fafafa">

<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--通过session获取用户id，并放入隐藏字段--%>
<input id="session-userid" class="hidden" value=<%=session.getAttribute("userid")%> />
<%--网页主体--%>
<div class="container" style="margin-top: 100px">
    <div class="row">
        <div class="jumbotron">
            <div class="container">
                <h1>欢迎来到军事论坛</h1>
                <h3>论坛为网友和军迷朋友提供一个查阅信息、交流心得的平台。</h3>
                <p>请用户文明参与讨论，遵守论坛相关规则，谢谢配合。——管理员</p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8">
            <div>
                <div class="btn-toolbar" role="toolbar">
                    <div class="btn-group" style="width: 100%">
                        <button type="button" id="btn-all" class="discussion-btn btn btn-primary">全部帖子</button>
                        <button type="button" id="btn-hot" class="discussion-btn btn btn-danger">热帖推荐</button>
                        <button type="button" id="btn-good" class="discussion-btn btn btn-success">精华推荐</button>
                    </div>
                </div>
            </div>

            <%--{{--显示帖子列表--}}--%>
            <div id="discussion-list">
                <discussion-list></discussion-list>
            </div>
            <div class="text-center">
                <ul id="page-list" class="pagination"></ul>
            </div>
            <template id="template-discussion-list">
                <div>
                    <div v-for="discussion in discussions">
                        <div class="clearfix discussion-background">
                            <div class="pull-left discussion-common text-center">
                                <h3 class="discussion-replynum">回复数:{{ discussion.reply_num }}</h3>
                            </div>
                            <div class="pull-left discussion-common">
                                <img id="discussion-list-avatar" :src=discussion.avatar class="media-object img-circle discussion-avatar">
                            </div>
                            <div class="pull-left  discussion-common">
                                <h1 class="discussion-title">
                                    <a href="#" :href="['/view/discussion/show.jsp?discussionid='+discussion.id]"> {{ discussion.title }} </a>
                                </h1>
                            </div>
                            <div class=" discussion-common pull-right">
                                <h4 class=" discussion-thumbnum">
                                    获赞数：{{ discussion.thumb_num }}
                                </h4>
                                <h4 class=" discussion-username">
                                    发帖人：{{ discussion.username }}
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </template>
            <script>
                Vue.component('discussion-list',{
                    template:"#template-discussion-list",
                    data:function () {
                        return {
                            discussions:''
                        };
                    },
                    created:function () {
                        this.getDiscussions();
                    },
                    methods:{
                        getDiscussions:function(){
                            var vm = this;
                            var url = '/discussionController/showHot';

                            $.ajax({
                                type:'GET',
                                url:url,
                                dataType:'json',
                                success:function (data) {
                                    vm.discussions = data;
                                    console.log(vm.discussions);
                                },
                                error:function(jqXHR){
                                    console.log("出现错误：" +jqXHR.status);
                                }
                            });
                        }
                    }
                });
                new Vue({
                    el:"#discussion-list"
                });
            </script>
        </div>
        <!--右侧发帖按钮-->
        <div class="col-md-4">
            <c:choose>
                <c:when test="${sessionScope.userSignIn != null}">
                    <div class="panel panel-info">
                        <div class="panel-heading text-center">
                            <a class="btn btn-primary btn-lg" href="/view/discussion/add.jsp" role="button">参与发帖</a>
                        </div>
                    </div>
                </c:when>
            </c:choose>

            <!--右侧个人信息-->
            <c:choose>
                <c:when test="${sessionScope.userSignIn != null}">
                    <div class="panel panel-info">
                        <div class="panel-heading text-center">
                            <img id="info-avatar" class="img_avatar img-circle" style="height: 100px;width: 100px;">
                        </div>
                        <div class="panel-body" id="inforight">
                            <span id="inforight-username" style="font-size: 16px;font-family: 'Microsoft YaHei'"></span>
                            <span id="inforight-discussionCount" style="margin-left: 30px;font-size: 16px;font-family: 'Microsoft YaHei'"></span>
                            <span id="inforight-replyCount" style="margin-left: 30px;font-size: 16px;font-family: 'Microsoft YaHei'"></span>
                        </div>
                    </div>
                </c:when>
            </c:choose>


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

<!--帖子类型按钮切换界面-->
<script type="text/javascript">
    $(document).ready(function () {
        //所有帖子
        $("#btn-all").click(function () {
            window.location.href="http://localhost:8080/view/home.jsp";
        });

        //热帖
        $("#btn-hot").click(function () {
            window.location.href="http://localhost:8080/view/hot.jsp";
        });

        //精华帖
        $("#btn-good").click(function () {
            window.location.href="http://localhost:8080/view/good.jsp";
        });
    });
</script>

<!--右侧个人信息显示的js-->
<script type="text/javascript">
    $(document).ready(function () {
        var user_id = $("#session-userid").val();
        $.ajax({
            type: "post",
            url: "/userController/getUserDiscussionReply",
            data: {
                "user_id": user_id
            },
            dataType: "json",
            success: function (data) {
                document.getElementById("inforight-username").innerText = "用户名：" + data.username;
                document.getElementById("inforight-discussionCount").innerText = "发帖数：" + data.discussionCount;
                document.getElementById("inforight-replyCount").innerText = "回帖数：" + data.replyCount;
            },
            error: function (jqXHR) {
                console.log("出现错误：" + jqXHR.status);
            }
        });
    });
</script>
</body>

</html>
