$(document).ready(function () {
    //发帖
    $("#add").click(function () {
        $("#error_message1").css({"visibility":"hidden"});
        $("#error_message2").css({"visibility":"hidden"});
        var username = $("#user_name").val();
        var user_id =  $("#user_id").val();
        var title = $("#title").val();
        var contentbody = $("#contentbody").val();
        var content = editor.getContent();
        console.log("title:"+title);
        console.log("content:"+content);

        if(title=="" || content==""){
            if(title==""){
                $("#error_message1").css({"visibility":"visible"});
            }
            if(content==""){
                $("#error_message2").css({"visibility":"visible"});
            }
        } else{
            $.ajax({
                type: "post",
                url: "/discussionController/addDiscussion",
                data: {
                    user_name: username,
                    user_id: user_id,
                    title: title,
                    contentbody: content
                },
                dataType: "json",
                success: function (data) {
                    if(data.status == 1){
                        window.location.href='http://localhost:8080/view/home.jsp';
                    }
                },
                error: function (jqXHR) {
                    console.log("出现错误：" + jqXHR.status);
                }
            });
        }


    });
});