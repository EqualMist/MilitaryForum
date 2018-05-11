$(document).ready(function () {
    $.ajax({
        type: "get",
        url: "/discussionController/showAll",
        data: null,
        dataType: "json",
        success: function (data) {
            $.each(data, function (i, obj) {
                $("#showAll").append(
                    "<div class='media'><div class='media-left'><span><img class='img_avatar' src='/static/image/avatar/ougen.jpg'></span>"+obj.username+"</div></div>"+
                    "<div class='media-body'><h4 class='media-heading'><a href='/view/discussion/show.jsp?id="+obj.id+"'>"+obj.title+"</a></h4></div>"+
                    "<div class='pull-right'>发帖人："+obj.username+"</div>");
            });
        },
        error: function () {
            console.log("出现错误：" + jqXHR.status);
        }
    });
});