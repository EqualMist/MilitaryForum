
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="cn.zzy.forum.entity.User"%>
<%
    HttpSession a = request.getSession();
    User user = (User)a.getAttribute("userSignIn");
%>
<head>
    <title>我的消息</title>
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
        <%@ include file="/view/reUse/myforum/myforumleft.jsp" %>

        <div id="notification">
            <notification></notification>
        </div>
        <template id="template-notification">
            <div class="col-md-10">
                <div class="panel panel-default">
                    <div class="panel-heading text-center">我的消息</div>
                    <div class="panel-body active" id="shownotification">
                        <div class="panel panel-primary" v-for="notification in notifications">
                            <div v-if="notification.level == '0'" class="panel-heading"> 全站消息 </div>
                            <div v-else="notification.level == '1'" class="panel-heading"> 收藏更新 </div>
                            <div v-if="notification.level == '1'" class="panel-body">
                                <a :href="['/view/discussion/show.jsp?discussionid='+notification.discussion_id]">{{notification.content}}</a>
                            </div>
                            <div v-else="notification.level == '0'" class="panel-body">
                               {{notification.content}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </template>
        <script>
            Vue.component('notification',{
                template:"#template-notification",
                data:function () {
                    return {
                        notifications:''
                    };
                },

                created:function () {
                    this.init();
                },
                methods:{
                    init:function(){
                        var vm = this;
                        var userid = $("#session-userid").val();
                        $.ajax({
                            type: "post",
                            url: "/notificationController/findNotification",
                            data: {"userid": userid},
                            dataType: "json",
                            success: function (data) {
                                vm.notifications = data;
                            },
                            error: function (jqXHR) {
                                console.log("出现错误：" + jqXHR.status);
                            }
                        });
                    }

                }
            });
            new Vue({
                el:"#notification"
            });
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
        <%--顶部头像的显示--%>
        document.getElementById("top-avatar").src=data.avatar;
    }
</script>
</body>
</html>
