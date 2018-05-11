/**
 *
 */
$(document).ready(function () {
    //reg_username check
    $("#reg_username").blur(function () {
        var value = $("#reg_username").val();
        //用户名格式
        var reg = new RegExp("^[a-zA-Z0-9_-]{3,16}$");
        if(reg.test(value) == true && value != "") {
            $("#reg_message").css({"visibility":"hidden"});
        }
        else {
            $("#reg_message").css({"visibility":"visible"});
        }
    });
    //reg_password check
    $("#reg_email").blur(function () {
        var value = $("#reg_email").val();
        //邮件格式
        var reg = new RegExp("^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
        if(reg.test(value) == true && value != "") {
            $("#reg_message1").css({"visibility":"hidden"});
        }
        else {
            $("#reg_message1").css({"visibility":"visible"});
        }
    });
    //reg_password check
    $("#reg_password").keyup(function () {
        var value = $("#reg_password").val();
        //长度不超过20，包含数字，字母
        var reg = new RegExp("^[0-9a-zA-Z]{1,20}$");
        if(reg.test(value) == true && value != ""){
            $("#reg_message2").css({"visibility":"hidden"});
        }
        else {
            $("#reg_message2").css({"visibility":"visible"});
        }
    });
    //reg_password_again check
    $("#reg_password_again").blur(function () {
        var value1 = $("#reg_password").val();
        var value2 = $("#reg_password_again").val();
        if(value1 == value2 && value2 != ""){
            $("#reg_message3").css({"visibility":"hidden"});
        }
        else {
            $("#reg_message3").css({"visibility":"visible"});
        }
    });

    //注册按钮
    $("#reg_register").click(function () {
        var username = $("#reg_username").val();
        var email = $("#reg_email").val();
        var password = $("#reg_password").val();
        $.ajax({
            type: "post",
            url: "/userController/register",
            data: {
                username: username,
                email: email,
                password: password
            },
            dataType: "json",
            success: function (data) {
                console.log(data.status);
                if(data.status == 1){
                    alert("注册成功！请先前往邮箱进行激活")
                    window.location.replace("/view/user/login.jsp");
                }
                else if(data.status == -1){
                    $("#reg_message2").css({"visibility":"visible"});
                    $("#reg_username").focus();
                }
            },
            error: function (jqXHR) {
                console.log("出现错误：" + jqXHR.status);
            }
        });
    });
});