<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/10/9
  Time: 下午8:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="../res/css/public.css">
    <link rel="stylesheet" type="text/css" href="../res/css/navBar.css">
    <link rel="stylesheet" type="text/css" href="../res/css/homePageBar.css">
    <link rel="stylesheet" type="text/css" href="../res/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../res/css/secNav.css">
    <script type="text/javascript" src="../res/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../res/js/navBar.js"></script>
    <script type="text/javascript" src="../res/js/homePageBar.js"></script>
    <script type="text/javascript" src="../res/js/bootstrap.js"></script>
</head>
<body>
<jsp:include page="NavBar.jsp" flush="true"/>
<div class="secNav">
    <jsp:include page="HomePageBar.jsp" flush="true"/>
</div>
<div class="thrInn1">
    <p>修改用户名</p>
    <hr/>
    <form class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">用户名</label>
            <div class="col-sm-10">
                <p class="form-control-static">QuinnNorris</p>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">修改用户名</label>
            <div class="col-sm-10">
                <input id="username" name="username" type="test" class="form-control" id="inputPassword"
                       placeholder="UserName">
                <span id="helpBlock2" class="help-block">该用户名中存在不可使用字符</span>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">确认修改</button>
            </div>
        </div>
    </form>
</div>
<div class="thrInn2">
    <p>绑定邮箱</p>
    <hr/>
    <form class="form-horizontal">
        <div class="form-group">
            <label class="col-sm-2 control-label">当前绑定邮箱</label>
            <div class="col-sm-10">
                <p class="form-control-static">无</p>
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword" class="col-sm-2 control-label">更新绑定邮箱</label>
            <div class="col-sm-10">
                <input id="username" name="username" type="email" class="form-control" id="inputPassword"
                       placeholder="Email">
                <span id="helpBlock2" class="help-block">该用户名中存在不可使用字符</span>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">发送邮件</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>