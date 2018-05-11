/**
 *
 */
$(document).ready(function () {

    //输入信息非空判断
    $("#notification").blur(function () {
        var value = $("#notification").val();

        if(value==""){
            $("#error_message").css({"visibility":"visible"});
        }
        else {
            $("#error_message").css({"visibility":"hidden"});
        }
    });


    //注册按钮
    $("#send").click(function () {
        var content = $("#notification").val();
        var from_user = 1;
        var level = 0;
        var isread = 0;
        if(content!=""){
            $.ajax({
                type: "post",
                url: "/notificationController/sendToAll",
                data: {
                    content: content,
                    from_user: from_user,
                    level: level,
                    isread: isread
                },
                dataType: "json",
                success: function (data) {
                    console.log(data.status);
                    makeAlertBox("success","消息发送成功！");

                },
                error: function (jqXHR) {
                    console.log("出现错误：" + jqXHR.status);
                }
            });
        }

    });
});