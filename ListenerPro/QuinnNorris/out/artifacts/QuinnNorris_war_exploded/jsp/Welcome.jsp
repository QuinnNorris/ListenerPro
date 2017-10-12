<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/10/9
  Time: 下午5:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Listener 倾听者</title>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="../res/css/public.css">
    <link rel="stylesheet" type="text/css" href="../res/css/welcome.css">
    <link rel="stylesheet" type="text/css" href="../res/css/bootstrap.css">
    <script type="text/javascript" src="../res/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../res/js/welcome.js"></script>
    <script type="text/javascript" src="../res/js/bootstrap.js"></script>
</head>
<body>
<div class="main">

    <div class="logreg">
        <!-- Nav tabs -->
        <ul class="nav nav-pills nav-justified" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                                                      data-toggle="tab">登陆</a></li>
            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">注册</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="home">
                <div>
                    <form>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1"
                                   placeholder="Password">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputFile">File input</label>
                            <input type="file" id="exampleInputFile">
                            <p class="help-block">Example block-level help text here.</p>
                        </div>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> Check me out
                            </label>
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button>
                    </form>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="profile">
                <div>
                    <div class="hei"></div>
                    <form>
                        <div class="form-group ppt">
                            <input type="Phone" class="form-control" id="exampleInputEmail1" placeholder="手机号码">
                        </div>
                        <div class="form-group ppt ">
                            <input type="password" class="form-control" id="exampleInputPassword1"
                                   placeholder="密码">
                        </div>
                        <div class="form-group ppt ">
                            <input type="password" class="form-control" id="exampleInputPassword1"
                                   placeholder="重复密码">
                        </div>
                        <div class="input-group ppt ">
                            <input type="text" class="form-control" id="exampleInputyanzheng" placeholder="验证码">
                            <span class="input-group-btn">
                            <button class="btn btn-success" type="button">发送短信</button>
                            </span>
                        </div>
                        <p class="help-block">该手机号码已经被注册.</p>
                        <button type="submit" class="btn btn-success btn-block">加入倾听者</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<%--<div class="info" id="register-info">
    <div class="info-line">
        手机<input type="text" name="phone" class="info-input" id="phone">
    </div>
    <div class="info-line">
        密码<input type="password" name="pw" class="info-input" id="pw">
    </div>
    <div class="info-line">
        确认密码<input type="password" name="pw_confirm" class="info-input" id="pw_confirm">
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
</div>--%>
</div>
</body>
</html>