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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/public.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/welcome.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/bootstrap.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/logReg.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/md5.js"></script>
</head>
<body>

<div class="modal fade" tabindex="-1" role="dialog" id="myModal">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">重置密码</h4>
            </div>
            <div class="modal-body">
                <div class="form-group ppt">
                    <input type="text" class="form-control" id="fophone" placeholder="手机">
                </div>
                <div class="form-group ppt">
                    <input type="password" class="form-control" id="fopw" placeholder="密码">
                </div>
                <div class="form-group ppt">
                    <input type="password" class="form-control" id="fore_pw" placeholder="重复密码">
                </div>
                <div class="input-group ppt">
                    <input type="text" class="form-control" id="foverif" placeholder="验证码">
                    <span class="input-group-btn">
                            <button class="btn btn-success" type="button">发送短信</button>
                            </span>
                </div>
                <div class="hidde">
                    <p class="help-blocks" id="tip2" hidden></p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-success" onclick="for_pw()">修改密码</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="main">
    <div class="logreg">
        <ul class="nav nav-pills nav-justified" role="tablist">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                                                      data-toggle="tab">登陆</a></li>
            <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">注册</a></li>
        </ul>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane active" id="home">
                <div>
                    <div class="hei"></div>
                    <div>
                        <div class="form-group ppt1">
                            <input type="text" class="form-control" id="logphone" placeholder="手机">
                        </div>
                        <div class="form-group ppt1 ">
                            <input type="password" class="form-control" id="logpw"
                                   placeholder="密码">
                        </div><div class="forge">
                        <a class="help-blocks forg" data-toggle="modal" data-target="#myModal">忘记密码</a></div>
                        <div class="hidde">
                            <p class="help-blocks" id="tip1" hidden></p>
                        </div>
                        <button type="submit" class="btn btn-success btn-block" onclick="sign_login()">欢迎回家</button>
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane" id="profile">
                <div>
                    <div class="hei"></div>
                    <div>
                        <div class="form-group ppt">
                            <input type="text" class="form-control" id="phone" placeholder="手机">
                        </div>
                        <div class="form-group ppt">
                            <input type="password" class="form-control" id="pw" placeholder="密码">
                        </div>
                        <div class="form-group ppt">
                            <input type="password" class="form-control" id="re_pw" placeholder="重复密码">
                        </div>
                        <div class="input-group ppt">
                            <input type="text" class="form-control" id="verif" placeholder="验证码">
                            <span class="input-group-btn">
                            <button class="btn btn-success" type="button">发送短信</button>
                            </span>
                        </div>
                        <div class="hidde">
                            <p class="help-blocks" id="tip" hidden></p>
                        </div>
                        <button type="submit" class="btn btn-success btn-block" onclick="sign_up()">加入倾听者</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>