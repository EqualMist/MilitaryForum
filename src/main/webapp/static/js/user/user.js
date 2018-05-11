$(document).ready(function () {
    //修改个人信息
    $("#modify").click(function () {

        var username = $("#user_name").val();
        var email =  $("#user_email").val();
        var tel = $("#user_tel").val();
        var qq = $("#user_qq").val();
        var info = $("#user_info").val();
        console.log("qq:"+qq);
        console.log("info:"+info);
        $.ajax({
            type: "post",
            url: "/userController/modifyUser",
            data: {
                username: username,
                email: email,
                tel: tel,
                qq: qq,
                info: info
            },
            dataType: "json",
            success: function (data) {
                if(data.status == 1){
                    makeAlertBox("success","修改成功！刷新查看信息。");
                }
            },
            error: function (jqXHR) {
                console.log("出现错误：" + jqXHR.status);
            }
        });
    });
});