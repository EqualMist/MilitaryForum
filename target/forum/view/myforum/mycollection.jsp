
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
    <title>我的收藏</title>
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

            <div id="collection">
                <collection></collection>
            </div>
            <template id="template-collection">
                <div class="col-md-10">
                    <div class="panel panel-default">
                        <div class="panel-heading text-center">收藏管理</div>
                        <div class="panel-body active" id="showcollection">
                            <table class="table table-striped">
                                <caption>我收藏的帖子</caption>
                                <thead>
                                <tr>
                                    <th>帖子标题</th>
                                    <th>点赞数</th>
                                    <th>回复数</th>
                                    <th>发帖人</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="collection in collections">
                                    <td>
                                        <a :href="['/view/discussion/show.jsp?discussionid='+collection.discussion_id]">{{collection.title}}</a>
                                    </td>
                                    <td>{{collection.thumb_num}}</td>
                                    <td>{{collection.reply_num}}</td>
                                    <td>{{collection.username}}</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </template>
            <script>
                Vue.component('collection',{
                    template:"#template-collection",
                    data:function () {
                        return {
                            collections:''
                        };
                    },

                    created:function () {
                        this.init();
                    },
                    methods:{
                        init:function(){
                            var vm = this;
                            var user_id = $("#session-userid").val();
                            $.ajax({
                                type: "post",
                                url: "/mycollectionController/findAll",
                                data:{"user_id":user_id
                                },
                                dataType: "json",
                                success: function (data) {
                                    vm.collections = data;
                                },
                                error: function (jqXHR) {
                                    console.log("出现错误：" + jqXHR.status);
                                }
                            });
                        }
                    }
                });
                new Vue({
                    el:"#collection"
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
