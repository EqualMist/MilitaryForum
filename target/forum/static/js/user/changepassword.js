/**
 *
 */
$(document).ready(function () {

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
    $("#modify").click(function () {
        var password = $("#reg_password").val();
        var email =$("#user_email").val();
        $.ajax({
            type: "post",
            url: "/userController/changePassword",
            data: {
                email: email,
                password: password
            },
            dataType: "json",
            success: function (data) {
                console.log(data.status);

            },
            error: function (jqXHR) {
                console.log("出现错误：" + jqXHR.status);
            }
        });
    });
});