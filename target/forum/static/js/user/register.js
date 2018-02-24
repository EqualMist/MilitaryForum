$(document).ready(function () {
    //注册按钮
    $("#btn_register").click(function () {
        var username = $("#username").val();
        var password = $("#password").val();
        $.ajax({
            type: "post",
            url: "/userController/register",
            data: {
                username: username,
                password: password
            },
            dataType: "json",
            success: function (data) {
                if(data.status == 1){
                    window.location.replace("/view/user/login.jsp");
                }
            },
            error: function () {
                console.log("出现错误：" + jqXHR.status);
            }
        });
    });
});