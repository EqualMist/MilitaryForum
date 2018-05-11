
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
    <title>帖子详情</title>
    <%@ include file="/view/reUse/head.jsp" %>
    <link href="/static/css/show.css" rel="stylesheet" type="text/css">
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
<%--通过session获取用户id，并放入隐藏字段--%>
<input id="session-userid" class="hidden" value=<%=session.getAttribute("userid")%> />
<div class="container" style="margin-top: 100px">
<div class="jumbotron">

</div>

    <%--{{--主体内容--}}--%>
    <div class="row">
        <%--{{--左侧部分--}}--%>
        <div class="col-md-8">
            <div id="discussion">
                <discussion></discussion>
            </div>
            <template id="template-discussion">
                <div class="clearfix discussion-background">
                    <div class="pull-left discussion-left">
                        <div class="media">
                            <img class="media-object img-circle discussion-avatar"  :src=discussion.avatar>
                            <div class="media-body">
                                <span>用户名：{{ discussion.username }}</span>
                                <span>声望：{{ discussion.renown}}</span>
                            </div>
                        </div>
                    </div>
                    <div class="pull-left discussion-right">
                        <div class="discussion-right-top">
                            <div class="discussion-right-top-title pull-left">
                                {{ discussion.title }}
                            </div>
                            <div class="discussion-right-top-btn-collect pull-right">
                                <button type="button" class="btn btn-success" v-if="ismycollection" @click="toggleMycollection">
                                    <span class="fa fa-lg fa-star"></span> 已收藏</button>
                                <button type="button" class="btn btn-primary" v-else="ismycollection" @click="toggleMycollection">
                                    <span class="fa fa-lg fa-star-o"></span> 收 藏</button>
                            </div>
                            <div class="discussion-right-top-btn-follow pull-right">
                                <button type="button" class="btn btn-success" v-if="isthumb" @click="toggleThumb">
                                    <span class="fa fa-lg fa-thumbs-o-up"></span> 已点赞</button>
                                <button type="button" class="btn btn-primary" v-else="isthumb" @click="toggleThumb">
                                    <span class="fa fa-lg fa-thumbs-o-up"></span> 点 赞</button>
                            </div>
                            <div class="discussion-right-top-btn-follow pull-right">

                                <!-- Button trigger modal -->
                                <button type="button" class="btn btn-danger"  data-toggle="modal" data-target="#buildModal">
                                    <span class="fa fa-lg fa-exclamation-circle"></span> 举 报
                                </button>
                                <!-- Modal -->
                                <div class="modal fade" id="buildModal" tabindex="-1" role="dialog" aria-labelledby="buildModalLabel">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                <h4 class="modal-title" id="buildModalLabel"> 进行举报 </h4>
                                            </div>
                                            <div class="modal-body">
                                                <label for="build-title">请问该帖子内容存在那些问题？</label>
                                                <textarea name="build-title" v-model="reason" class="form-control" id="build-title" rows="2" style="resize: none"></textarea>
                                            </div>
                                            <div class="modal-footer">
                                                <div class="form-group">
                                                    <button id="build-submit" type="button" class="btn btn-danger" @click="addReport">
                                                        <span class="fa fa-cog fa-lg"></span> 举 报
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="discussion-right-mid" style="text-indent:2em">
                            <div class="discussion-right-mid-body">
                            <p style="width: 585px" v-html="discussion.body"></p>
                            </div>
                        </div>
                        <div class="discussion-right-buttom">
                            <div class="pull-right clearfix discussion-right-buttom-time">
                                <span>{{ discussion.created_at }}</span>
                            </div>
                            <div class="pull-right clearfix discussion-right-buttom-reply">
                                <a href="#reply-form">回复</a>
                                <span>&nbsp|&nbsp</span>
                            </div>
                            <div class="pull-right clearfix discussion-right-buttom-num">
                                <span>浏览量:{{ discussion.view_num }}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </template>
            <script>
                Vue.component('discussion',{
                    template:"#template-discussion",
                    data:function () {
                        return {
                            discussion: '',
                            ismycollection:false,
                            isthumb:false,
                            reason:''
                        };
                    },

                    created:function () {
                        this.getDiscussion();
                    },
                    methods:{
                        getDiscussionId:function(){
                            var url = document.location.href.toString();
                            var arrUrl = url.split("=");
                            return arrUrl[1];
                        },
                        getDiscussion:function(){
                            var user_id = $("#session-userid").val();
                            var vm = this;
                            id = vm.getDiscussionId();
                            if(user_id=="" || user_id==null){
                                user_id=1;
                            }
                            $.ajax({
                                type:'GET',
                                url:'/discussionController/show',
                                data: {"id":id},
                                dataType:'json',
                                success:function (data) {
                                    console.log(data);

                                    vm.discussion = data;
                                    // $('#discussion-title').text(vm.discussion.title);
                                    // $('#discussion-body').text(vm.discussion.body);
                                    // $('#discussion-view-num').text(vm.discussion.view_num);
                                    //查找收藏
                                    $.ajax({
                                        type:'GET',
                                        url:'/mycollectionController/findCollection',
                                        data: {
                                            "user_id":user_id,
                                            "discussion_id":id
                                        },
                                        dataType:'json',
                                        success:function (data) {
                                            vm.ismycollection = data;
                                            console.log(vm.ismycollection);
                                        },
                                        error:function(jqXHR){
                                            console.log("出现错误：" +jqXHR.status);
                                        }
                                    });

                                    //查找点赞
                                    $.ajax({
                                        type:'GET',
                                        url:'/thumbController/findThumb',
                                        data: {
                                            "type":discussion,
                                            "user_id":user_id,
                                            "target_id":id
                                        },
                                        dataType:'json',
                                        success:function (data) {
                                            vm.isthumb = data;
                                            console.log(vm.isthumb);
                                        },
                                        error:function(jqXHR){
                                            console.log("出现错误：" +jqXHR.status);
                                        }
                                    });
                                },
                                error:function(jqXHR){
                                    console.log("出现错误：" +jqXHR.status);
                                }
                            });
                        },

                        //收藏点击事件
                        toggleMycollection:function(){
                            var user_id = $("#session-userid").val();
                            var vm = this;
                            id = vm.getDiscussionId();
                            var url = '/mycollectionController/addCollection';
                            if(vm.ismycollection){
                                url = '/mycollectionController/cancelCollection'
                            }
                            $.ajax({
                                type:'GET',
                                url:url,
                                data: {
                                    "user_id":user_id,
                                    "discussion_id":id
                                },
                                dataType:'json',
                                success:function (data) {
                                    vm.ismycollection = data.ismycollection;
                                    makeAlertBox('success','操作成功！');
                                },
                                error:function(jqXHR){
                                    console.log("出现错误：" +jqXHR.status);
                                }
                            });
                        },

                        //点赞点击事件
                        toggleThumb:function(){
                            var user_id = $("#session-userid").val();
                            var vm = this;
                            id = vm.getDiscussionId();
                            var url = '/thumbController/addThumb';
                            if(vm.isthumb){
                                url = '/thumbController/cancelThumb'
                            }
                            $.ajax({
                                type:'GET',
                                url:url,
                                data: {
                                    "type":"discussion",
                                    "user_id":user_id,
                                    "target_id":id
                                },
                                dataType:'json',
                                success:function (data) {
                                    vm.isthumb = data.isthumb;
                                    makeAlertBox('success','操作成功！');
                                },
                                error:function(jqXHR){
                                    console.log("出现错误：" +jqXHR.status);
                                }
                            });
                        },

                        <!--添加举报，帖子主体-->
                        addReport:function(){
                            var user_id = $("#session-userid").val();
                            var vm = this;
                            id = vm.getDiscussionId();
                            var url = '/reportController/addReport';

                            $.ajax({
                                type:'GET',
                                url:url,
                                data: {
                                    "type":"discussion",
                                    "target_id":id,
                                    "user_id":user_id,
                                    "reason":vm.reason
                                },
                                dataType:'json',
                                success:function (data) {
                                    $('#buildModal').modal('toggle');
                                    makeAlertBox('success','举报成功！');
                                },
                                error:function(jqXHR){
                                    console.log("出现错误：" +jqXHR.status);
                                }
                            });
                        }
                    }
                });
                new Vue({
                    el:"#discussion"
                });
            </script>

            <%--{{--回复部分--}}--%>
            <div id="reply-list">
                <reply-list></reply-list>
            </div>
            <template id="template-reply-list">
                <div>
                    <div v-for="reply in replies">>

                        <div class="clearfix reply-background">
                            <div class="pull-left reply-left">
                                <div class="media">
                                    <img class="media-object img-circle reply-avatar" :src=reply.avatar>
                                    <div class="media-body">
                                        <span>用户名：{{ reply.reply_username }}</span>
                                        <span>声望：{{ reply.renown}}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="pull-left reply-right">
                                <div class="reply-right-top">
                                    <div class="reply-right-top-title pull-left">
                                        {{ reply.floor_num}}楼
                                    </div>

                                    <div class="reply-right-top-btn-follow pull-right">
                                        <button type="button" class="btn" :class="vbtnclass(reply.thumb)" @click="toggleThumb(reply.id,reply.thumb)">
                                            <span class="fa fa-lg fa-thumbs-o-up"></span>
                                            <span v-text="vbtntext(reply.thumb)"></span>
                                        </button>
                                    </div>

                                    <div class="reply-right-top-btn-follow pull-right">
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-danger"  data-toggle="modal" data-target="#buildModal2" @click="floorSelect(reply.id)">
                                            <span class="fa fa-lg fa-exclamation-circle"></span> 举 报
                                        </button>
                                        <!-- Modal -->
                                        <div class="modal fade" id="buildModal2" tabindex="-1" role="dialog" aria-labelledby="buildModalLabel2">
                                            <div class="modal-dialog" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        <h4 class="modal-title" id="buildModalLabel2"> 进行举报 </h4>
                                                    </div>
                                                    <div class="modal-body">
                                                        <label for="build-title">请问回复内容存在那些问题？</label>
                                                        <textarea name="build-title" v-model="reason2" class="form-control" id="build-title2" rows="2" style="resize: none"></textarea>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <div class="form-group">
                                                            <button id="build-submit2" type="button" class="btn btn-danger" @click="addReplyReport">
                                                                <span class="fa fa-cog fa-lg"></span> 举 报
                                                            </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="reply-right-mid" style="text-indent:2em">
                                    <div class="reply-right-mid-body">
                                        <p style="width: 585px" v-html="reply.replybody"></p>
                                    </div>
                                </div>
                                <div class="reply-right-buttom">
                                    <div class="pull-right clearfix reply-right-buttom-time">
                                        <span>{{ reply.replytime }}</span>
                                    </div>
                                    <div class="pull-right clearfix reply-right-buttom-reply">
                                        <a href="#reply-form">回复</a>
                                        <span>&nbsp|&nbsp</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </template>
            <script>
                Vue.component('reply-list',{
                    template:"#template-reply-list",
                    data:function () {
                        return {
                            replies: '',
                            aaa:'',
                            reason2:'',
                            floor:'',
                            isthumb:false
                        };
                    },
                    created:function () {
                        this.getReplies();
                    },
                    methods:{
                        getReplies:function(){
                            var vm = this;
                            var user_id = $("#session-userid").val();
                            var url = document.location.href.toString();
                            var arrUrl = url.split("=");

                            var discussion_id = arrUrl[1];
                            if(user_id=="" || user_id==null){
                                user_id=1;
                            }
                            $.ajax({
                                type:'GET',
                                url:'/replyController/showAllReplies',
                                data: {"discussion_id":discussion_id,
                                       "user_id":user_id},
                                dataType:'json',
                                success:function (data) {
                                    vm.replies = data;
                                    var arr = new Array();
                                    $.each(data,function(i, n) {
                                        arr.push(n);
                                        console.log(i);
                                        console.log(n);
                                    })
                                    console.log('arr');
                                    $.each(arr,function(i, n) {
                                        console.log(i);
                                        console.log(n);
                                    })
                                    vm.replies = arr;


                                },
                                error:function(jqXHR){
                                    console.log("出现错误：" +jqXHR.status);
                                }
                            });
                         },

                        //获取楼层
                        floorSelect:function (floor) {
                            this.floor = floor;
                        },

                        //点赞点击事件
                        toggleThumb:function(reply_id,thumbstatus){
                            var user_id = $("#session-userid").val();
                            var vm = this;
                            this.floorSelect(reply_id);
                            var url = '/thumbController/addThumb';
                            if(thumbstatus==1){
                                url = '/thumbController/cancelThumb'
                            }
                            $.ajax({
                                type:'GET',
                                url:url,
                                data: {
                                    "type":"reply",
                                    "user_id":user_id,
                                    "target_id":vm.floor
                                },
                                dataType:'json',
                                success:function (data) {
                                    vm.isthumb = data.isthumb;
                                    makeAlertBox('success','操作成功！');
                                },
                                error:function(jqXHR){
                                    console.log("出现错误：" +jqXHR.status);
                                }
                            });
                        },

                        vbtnclass:function(thumb){
                            return (thumb==1)?"btn-success":"btn-primary";
                        },
                        vbtntext:function(thumb){
                            return (thumb==1)?"已点赞":"点 赞";
                        },

                        <!--添加举报，回帖部分-->
                        addReplyReport:function(){
                            var user_id = $("#session-userid").val();
                            var vm = this;
                            var url = '/reportController/addReport';

                            $.ajax({
                                type:'GET',
                                url:url,
                                data: {
                                    "type":"reply",
                                    "target_id":vm.floor,
                                    "user_id":id,
                                    "reason":vm.reason2
                                },
                                dataType:'json',
                                success:function (data) {
                                    $('#buildModal2').modal('toggle');
                                    makeAlertBox('success','举报成功！');
                                },
                                error:function(jqXHR){
                                    console.log("出现错误：" +jqXHR.status);
                                }
                            });
                        }
                    }
                });
                new Vue({
                    el:"#reply-list"
                });


            </script>

            <%--{{--创建评论部分--}}--%>
            <c:choose>
                <c:when test="${sessionScope.userSignIn != null}">
                    <div class="reply-form" id="reply-form">
                        <div class="form-horizontal">
                            <fieldset disabled="">
                                <div class="form-group">
                                    <label for="user_name" class="col-sm-3 control-label">回帖人</label>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control"  id="user_name" placeholder="发帖人" value=<%=user.getUsername() %>>
                                        <input type="text" class="form-control"  id="user_id" style="display:none" placeholder="发帖人ID" value=<%=user.getId() %>>
                                    </div>
                                </div>
                            </fieldset>
                            <div class="form-group">
                                <div>
                                    <%--<textarea id="reply-textarea" class="form-control" cols="30" rows="10" placeholder="有什么想说的？参与回复吧..."></textarea>--%>
                                    <script id="contentbody" style="height: 200px" name="content" type="text/plain">
                                    </script>
                                        <span style="color: red;visibility: hidden" id="error_message">贴子内容不能为空！</span>

                                        </div>
                            </div>
                            <div class="form-group">
                                <button id="reply-btn" class="btn btn-success form-control">回 复</button>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        var editor = UE.getEditor('contentbody');
                    </script>
                </c:when>
            </c:choose>
        </div>
                                <!--右侧发帖按钮-->
                                <div class="col-md-4">
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
                            console.log("data:"+data);
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
<script type="text/javascript" src="/static/js/discussion/show.js"></script>
</html>
