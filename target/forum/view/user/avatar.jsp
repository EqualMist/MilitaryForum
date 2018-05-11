
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title>头像修改</title>
    <%@ include file="/view/reUse/head.jsp" %>
    <link rel="stylesheet" href="/static/css/jquery.Jcrop.min.css">
    <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="https://cdn.bootcss.com/jquery-json/2.6.0/jquery.json.min.js"></script>
    <script src="https://cdn.bootcss.com/jquery-validate/1.17.0/jquery.validate.js"></script>
    <script src="/static/js/user/jquery.Jcrop.js"></script>

    <%--jcrop头像裁剪--%>
    <script type="text/javascript">
        /* jcrop对象，全局变量方便操作 */
        var api = null;
        /* 原图宽度 */
        var boundx;
        /* 原图高度 */
        var boundy;
        /* 选择图片事件 */
        function readURL(URL){
            var reader = new FileReader();
            reader.readAsDataURL(URL.files[0]);
            reader.onload = function(e){
                $("#faceId").removeAttr("src");
                $("#lookId").removeAttr("src");
                $("#faceId").attr("src",e.target.result);
                $("#lookId").attr("src",e.target.result);
                $("#faceId").Jcrop({
                    onChange: showPreview,
                    onSelect: showPreview,
                    aspectRatio: 1,
                    boxWidth:600
                },function(){
                    // Use the API to get the real image size
                    //使用API来获得真实的图像大小
                    var bounds = this.getBounds();
                    boundx = bounds[0];
                    boundy = bounds[1];
                    // Store the API in the jcrop_api variable
                    //jcrop_api变量中存储API
                    api = this;
                    $("#boundx").val(boundx);
                    $("#boundy").val(boundy);
                });
            };
            /* 移除jcrop */
            if (api != undefined) {
                api.destroy();
            }
            //简单的事件处理程序，响应自onChange,onSelect事件，按照上面的Jcrop调用
            function showPreview(coords){
                /* 设置剪切参数 */
                $("#x").val(coords.x);
                $("#y").val(coords.y);
                $("#w").val(coords.w);
                $("#h").val(coords.h);
                allowMove:true;
                if(parseInt(coords.w) > 0){
                    //计算预览区域图片缩放的比例，通过计算显示区域的宽度(与高度)与剪裁的宽度(与高度)之比得到
                    var rx = $("#preview_box").width() / coords.w;
                    var ry = $("#preview_box").height() / coords.h;
                    $("#lookId").css({
                        width:Math.round(rx * $("#faceId").width()) + "px",    //预览图片宽度为计算比例值与原图片宽度的乘积
                        height:Math.round(rx * $("#faceId").height()) + "px",  //预览图片高度为计算比例值与原图片高度的乘积
                        marginLeft:"-" + Math.round(rx * coords.x) + "px",
                        marginTop:"-" + Math.round(ry * coords.y) + "px"
                    });
                }
            }
        }
    </script>

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
                <div class="panel-heading text-center">修改头像</div>
                <div class="panel-body active" id="showavatar">
                    <form name="form" action="/avatarUpload.do" class="form-horizontal" style="margin-top: 20px" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="imgFile" class="col-sm-3 control-label">头像选择：</label>
                            <input class="photo-file" type="file" name="imgFile" id="imgFile" onchange="readURL(this) "/>
                            <div class="col-sm-6">
                                <img id = "faceId"  class="jcrop-preview" width="360px" height="360px" alt="附件">
                                <!-- 图片长宽高隐藏域 -->
                                <%--type="hidden"--%>
                                <input type="hidden" id="x" name="x" />
                                <input type="hidden" id="y" name="y" />
                                <input type="hidden" id="w" name="w" />
                                <input type="hidden" id="h" name="h" />
                                <input type="hidden" id="boundx" name="boundx" >
                                <input type="hidden" id="boundy" name="boundy" >
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="imgFile" class="col-sm-3 control-label">裁剪预览：</label>
                            <div class="col-sm-6">
                                <div style="width: 250px;height: 250px;overflow: hidden;" id = "preview_box">
                                    <img id = "lookId"  class="jcrop-preview  img-circle" alt="预览" >
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input style="display: none" type="text" id ="userEmail" name ="userEmail"  readonly>
                        </div>
                        <div class="col-sm-offset-3 col-sm-6">
                            <button type="submit" class="btn btn-primary form-control">上传</button>
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
        $("#userEmail").val(data.email);
        document.getElementById("faceId").src=data.avatar;
        document.getElementById("lookId").src=data.avatar;
    }
</script>
</body>
</html>
