$(document).ready(function () {
    var id = $("#document_id").attr("data-name");
    $.ajax({
        type: "get",
        url: "/discussionController/show",
        data: {"id":id},
        dataType: "json",
        success: function (data) {
            $("#user_avatar").attr("src","/static/image/avatar/ougen.jpg");
            $("#title").text(data.title);
            $("#username").text(data.username);
            $("#body").text(data.body);
        },
        error: function () {
            console.log("出现错误：" + jqXHR.status);
        }
    });
});