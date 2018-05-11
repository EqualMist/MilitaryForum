$(document).ready(function () {


    //发帖
    $("#reply-btn").click(function () {
        $("#error_message").css({"visibility":"hidden"});
        //页面跳转url:http://localhost:8080/view/discussion/show.jsp?discussionid=1
        var url = document.location.toString();
        console.log("url:"+url);
        //只传一个参数:url.split("=")
        var arrUrl = url.split("=");

        var discussion_id = arrUrl[1];

        var reply_user_id =  $("#user_id").val();
        var reply_username = $("#user_name").val();
        var replybody = $("#reply-textarea").val();
        //console.log(discussion_id+"; "+reply_username+"; "+reply_user_id+"; "+replybody);
        var content = editor.getContent();

        if(content==""){
            $("#error_message").css({"visibility":"visible"});
        }else{
            $.ajax({
                type: "post",
                url: "/replyController/addReply",
                data: {
                    discussion_id: discussion_id,
                    reply_user_id: reply_user_id,
                    reply_username: reply_username,
                    replybody: content
                },
                dataType: "json",
                success: function (data) {
                    if(data.status == 1){
                        location.reload();
                    }
                },
                error: function (jqXHR) {
                    console.log("出现错误：" + jqXHR.status);
                }
            });
        }

    });

});