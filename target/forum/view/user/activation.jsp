
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>激活成功</title>
    <%@ include file="/view/reUse/form.jsp" %>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="row clearfix">
                <div class="col-md-2 column">
                </div>
                <div class="col-md-8 column" style=" padding-top: 10%">
                    <div class="alert alert-success alert-dismissable text-center" style="padding: 10%">
                        <h3 >
                            <img src="http://localhost:8080/static/image/icon/success.jpg" />
                            激活成功！
                        </h3><h4> <strong>恭喜！</strong> 您已成功激活邮箱</h4>
                        <br>
                        <button class="btn btn-success btn-lg" onclick="window.location='http://localhost:8080/view/user/login.jsp'" >点击登录</button>
                    </div>
                </div>
                <div class="col-md-2 column">
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
