/*
    根据session中的用户id获取用户的信息
 */
$(document).ready(function () {
    var session_userid = $("#session-userid").val();
    console.log(session_userid);

    $.ajax({
        type: "post",
        url: "/userController/getUserByuserid",
        data: {
            id: session_userid
        },
        dataType: "json",
        success: function (data) {
            /**
             * 自定义页面的赋值，通过ajax的success方法调用
             * @param data
             */
            customizeuser(data);
        },
        error: function (jqXHR) {
            console.log("出现错误：" + jqXHR.status);
        }
    });

});