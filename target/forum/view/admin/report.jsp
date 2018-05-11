
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <title>举报管理</title>
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
        <%@ include file="/view/reUse/admin/admininfoleft.jsp" %>

            <div id="report">
                <report></report>
            </div>
            <template id="template-report">
                <div class="col-md-10">
                    <div class="panel panel-default">
                        <div class="panel-heading text-center">举报管理</div>
                        <div class="panel-body active" id="showreport">
                            <table class="table table-striped">
                                <caption>被举报的信息</caption>
                                <thead>
                                <tr>
                                    <th>举报类型</th>
                                    <th>举报内容</th>
                                    <th>举报原因</th>
                                    <th>举报人</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr v-for="report in reports">
                                    <td v-if="report.type == 'discussion'">帖子</td>
                                    <td v-else>回复</td>
                                    <td v-if="report.title">
                                        <a :href="['/view/discussion/show.jsp?discussionid='+report.target_id]">{{report.title}}</a>
                                    </td>
                                    <td v-else>
                                        <a :href="['/view/discussion/show.jsp?discussionid='+report.discussion_id]">{{report.replybody}}</a>
                                    </td>
                                    <td>{{report.reason}}</td>
                                    <td>{{report.username}}</td>
                                    <td v-if="report.status == 0">
                                        <button class="btn btn-primary" @click="solve(report.id)">处 理</button>
                                    </td>
                                    <td v-else>
                                        <button class="btn btn-success">已处理</button>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </template>
            <script>
                Vue.component('report',{
                    template:"#template-report",
                    data:function () {
                        return {
                            reports:''
                        };
                    },

                    created:function () {
                        this.init();
                    },
                    methods:{
                        init:function(){
                            var vm = this;
                            $.ajax({
                                type: "post",
                                url: "/reportController/findAll",
                                dataType: "json",
                                success: function (data) {
                                    vm.reports = data;
                                },
                                error: function (jqXHR) {
                                    console.log("出现错误：" + jqXHR.status);
                                }
                            });
                        },
                        solve:function(id){
                            var vm = this;
                            $.ajax({
                                type: "post",
                                url: "/reportController/changeReport",
                                data:{"id": id},
                                dataType: "json",
                                success: function (data) {
                                    vm.reports = data;
                                    makeAlertBox("success","举报处理成功！");
                                },
                                error: function (jqXHR) {
                                    console.log("出现错误：" + jqXHR.status);
                                }
                            });
                        }
                    }
                });
                new Vue({
                    el:"#report"
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
