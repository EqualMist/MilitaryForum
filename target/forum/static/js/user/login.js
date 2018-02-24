$(document).ready(function () {
    //登录按钮
    $("#btn_login").click(function () {
        var username = $("#username").val();
        var password = $("#password").val();
        $.ajax({
            type: "post",
            url: "/userController/login",
            data: {
                username: username,
                password: password
            },
            dataType: "json",
            success: function (data) {
                if(data.status == 0){
                    console.log("用户不存在！");
                }else if(data.status == 1){
                    window.location.replace("/view/home.jsp");
                }else{
                    console.log("用户名和密码不匹配！登陆失败！");
                }
            },
            error: function () {
                console.log("出现错误：" + jqXHR.status);
            }
        });
    });
});