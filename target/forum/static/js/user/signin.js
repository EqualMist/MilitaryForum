/**签到相关js
 *
 */
$(document).ready(function() {
    var session_userid = $("#session-userid").val();
    console.log(session_userid);
    var email;
    $.ajax({
        async: false,   //同步和异步的参数
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
            console.log("email::::"+data.email);
            email = data.email;
            customizeuser(data);
        },
        error: function (jqXHR) {
            console.log("出现错误：" + jqXHR.status);
        }
    });


    console.log("email:"+email);
    var status;
    $.ajax({
        type: "post",
        url: "/userController/searchsign",
        data: {
            email: email
        },
        dataType: "json",
        success: function (data) {
            console.log("连续签到"+data.counts+"天");
            status = data.status;
        },
        error: function () {
            console.log("出现错误：" + jqXHR.status);

        }
    });


    $("#signin").click(function () {
        /*var date = new Date();*/
        if(status == 0){
            makeAlertBox("warning","今天已签到！");
        }
        else{
            $.ajax({
                type: "post",
                url: "/userController/usersign",
                data: {
                    email:email,
                    status:status
                },
                dataType: "json",
                success: function (data) {
                    makeAlertBox("success","签到成功！获得1点声望值");
                },
                error: function () {
                    console.log("出现错误：" + jqXHR.status);

                }
            });
        }
    })
})