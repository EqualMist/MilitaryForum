/**
 *
 */
/*对下方验证码进行赋值*/
var validate = "";
function rand(){
    var str="abcdefghijklmnopqrstuvwxyz0123456789";
    var arr=str.split("");
    validate="";
    var ranNum;
    for(var i=0;i<4;i++){
        ranNum=Math.floor(Math.random()*36); //随机数在[0,35]之间
        validate+=arr[ranNum];
    }
    console.log(validate);
    return validate;

}
/*干扰线的随机x坐标值*/
function lineX(){
    var ranLineX=Math.floor(Math.random()*150);
    return ranLineX;
}
/*干扰线的随机y坐标值*/
function lineY(){
    var ranLineY=Math.floor(Math.random()*40);
    return ranLineY;
}
/*点击更改画布*/
function clickChange(){
    var mycanvas=document.getElementById("mycanvas");
    var cxt=mycanvas.getContext('2d');
    cxt.fillStyle='#4947ff';
    cxt.fillRect(0,0,120,40);
    /*生成干扰线10条*/
    for(var j=0;j<10;j++){
        cxt.strokeStyle='#fff';
        cxt.beginPath(); //若省略beginPath，则每点击一次验证码会累积干扰线的条数
        cxt.moveTo(lineX(),lineY());
        cxt.lineTo(lineX(),lineY());
        cxt.lineWidth=0.5;
        cxt.closePath();
        cxt.stroke();
    }
    cxt.fillStyle='black';
    cxt.font='bold 20px Arial';
    cxt.fillText(rand(),25,25); //把rand()生成的随机数文本填充到canvas中
}
clickChange();
/*点击验证码更换*/
mycanvas.onclick=function(e){
//    console.log("鼠标点击触发");
    e.preventDefault(); //阻止鼠标点击发生默认的行为
    clickChange();
};
$(document).ready(function(){
    //log_username check
    $("#log_username").blur(function () {
        var value = $("#log_username").val();
        //邮箱格式
        var reg = new RegExp("^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$");
        if(reg.test(value) == true && value != "") {
            $("#log_message1").css({"visibility":"hidden"});
        }
        else {
            $("#log_message1").css({"visibility":"visible"});
        }
    });

    //log_password check
    $("#log_password").keyup(function () {
        var value = $("#log_password").val();
        //长度不超过20，包含数字，字母
        var reg = new RegExp("^[0-9a-zA-Z]{1,20}$");
        if(reg.test(value) == true && value != ""){
            $("#log_message2").css({"visibility":"hidden"});
        }
        else {
            $("#log_message2").css({"visibility":"visible"});
        }
    });

    //验证码重复性检测
    $("#log_vertification").keyup(function(){
        var value = $("#log_vertification").val();
        if(value == validate)
        {
            $("#log_message3").css({"visibility":"hidden"});
        }
        else{
            $("#log_message3").css({"visibility":"visible"});
        }
    })

    $("#log_login").click(function (){
        var email = $("#log_username").val();
        var password = $("#log_password").val();
        var vertification = $("#log_vertification").val();
        //如果错误信息都没有显示 则进行下一步
        if($("#log_message1").css("visibility") == "hidden" && $("#log_message2").css("visibility") == "hidden"&&$("#log_message3").css("visibility") == "hidden") {

            $.ajax({
                type: "post",
                url: "/userController/login",
                data: {
                    email: email,
                    password: password
                },
                dataType: "json",
                success: function (data) {

                    console.log("status=" + data.status);
                    if (data.status == -1) {
                        console.log("用户不存在！");
                        alert("用户不存在！");
                        $("#log_username").val("");
                        $("#log_password").val("");
                        $("#log_vertification").val("");
                    } else if (data.status == 1) {
                        window.location.href = 'http://localhost:8080/view/home.jsp';
                    } else if (data.status == 0) {
                        console.log("用户名和密码不匹配！登陆失败！");
                        alert("用户名和密码不匹配！登陆失败！");
                        $("#log_username").val("");
                        $("#log_password").val("");
                        $("#log_vertification").val("");
                    }
                    else if (data.status == 2) {
                        console.log("账号未激活，请去邮箱激活");
                        alert("账号未激活，请去邮箱激活");
                        $("#log_username").val("");
                        $("#log_password").val("");
                        $("#log_vertification").val("");
                    }
                },
                error: function () {
                    console.log("出现错误：" + jqXHR.status);
                }
            });
        }
        else{
            alert("登录信息错误！请更改！");
        }
    });
})