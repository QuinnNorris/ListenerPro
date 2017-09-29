<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Listener倾听者</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../res/css/welcome.css">
</head>
<body>
<div class="main">
    <div class="info" id="register-info">
        <div class="info-line">
            手机<input type="text" name="phone" class="info-input" id="phone">
        </div>
        <div class="info-line">
            密码<input type="password" name="password" class="info-input" id="pw">
        </div>
        <div class="info-line">
            确认密码<input type="password" name="passwordConfirmation" class="info-input" id="pw_confirm">
        </div>
        <div class="info-line">
            手机验证<input type="text" name="verification" class="info-input" id="verification">
            <button class="info-verification">发送验证码</button>
        </div>
        <div class="message-line">用户名已被注册！</div>
        <div class="info-line">
            <div class="info-line-left"></div>
            <button class="info-commit">加入倾听者</button>
        </div>
    </div>
</div>
</div>
</div>
</body>
<script type="text/javascript" src="../res/js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="../res/js/welcome.js"></script>
</html>