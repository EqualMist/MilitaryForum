
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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
<title>我的帖子</title>
<%@ include file="/view/reUse/head.jsp" %>
</head>
<<body style="background-color:#fafafa">
<%--网页顶部--%>
<%@ include file="/view/reUse/header.jsp" %>
<%--通过session获取用户id，并放入隐藏字段--%>
<input id="session-userid" class="hidden" value=<%=session.getAttribute("userid")%> />
<%--网页主体--%>
<div class="container" style="margin-top: 100px;">

    <div class="row master-user-center">
        <%-- 用户信息左侧栏共用部分 --%>
        <%@ include file="/view/reUse/myforum/myforumleft.jsp" %>

        <div id="discussion">
            <discussion></discussion>
        </div>
        <template id="template-discussion">
            <div class="col-md-10">
                <div class="panel panel-default">
                    <div class="panel-heading text-center">我的帖子管理</div>
                    <div class="panel-body active" id="showdiscussion">
                        <table class="table table-striped">
                            <caption>我所发布的帖子</caption>
                            <thead>
                            <tr>
                                <th>帖子标题</th>
                                <th>回复数</th>
                                <th>点赞数</th>
                                <th>是否被举报</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr v-for="discussion in discussions">
                                <td>{{discussion.title}}</td>
                                <td>{{discussion.reply_num}}</td>
                                <td>{{discussion.thumb_num}}</td>
                                <td v-if="discussion.blacklist == 0">否</td>
                                <td v-else>是</td>
                                <td>
                                    <button class="btn btn-danger" @click="solve(discussion.id)">删 除</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </template>
        <script>
            Vue.component('discussion',{
                template:"#template-discussion",
                data:function () {
                    return {
                        discussions:''
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
                            url: "/discussionController/showAllByuserid",
                            data:{"user_id":user_id
                            },
                            dataType: "json",
                            success: function (data) {
                                vm.discussions = data;
                            },
                            error: function (jqXHR) {
                                console.log("出现错误：" + jqXHR.status);
                            }
                        });
                    },
                    solve:function(id){
                        var vm = this;
                        console.log("id:"+id);
                        $.ajax({
                            type: "post",
                            url: "/discussionController/deleteDiscussion",
                            data:{"discussion_id": id},
                            dataType: "json",
                            success: function (data) {
                                window.reload();
                            },
                            error: function (jqXHR) {
                                console.log("出现错误：" + jqXHR.status);
                            }
                        });
                    }
                }
            });
            new Vue({
                el:"#discussion"
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

<script type="text/javascript" src="/static/js/user/user.js"></script>

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
