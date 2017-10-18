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
    <title>个人中心——基本设置</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/public.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/navBar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/homePageBar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/homeBaseSetting.css">

    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/navBar.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/homePageBar.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/homeBaseSetting.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/md5.js"></script>

    <%--头像控件所需外部链接文件--%>
    <link href="${pageContext.request.contextPath}/res/css/cropper.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/css/sitelogo.css" rel="stylesheet">
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/cropper.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/sitelogo.js"></script>

</head>
<body>
<div class="leftBar">
    <jsp:include page="NavBar.jsp" flush="true"/>
</div>
<div class="main">
    <div class="firBar">
        <div class="space"></div>
        <div class="secNav">
            <jsp:include page="HomePageBar.jsp" flush="true"/>
        </div>
        <div class="buttom"></div>
    </div>
    <div class="space"></div>
    <div class="secInner">
        <div class="thrInn">
            <p>修改用户名</p>
            <hr/>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">用户名</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${username}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">修改用户名</label>
                    <div class="col-sm-10">
                        <input id="username" name="username" type="test" class="form-control inputting"
                               placeholder="UserName">
                        <span id="helpBlockuser" class="help-block" hidden></span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" onclick="updateUsername()">确认修改</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="thrInn">
            <p>绑定邮箱</p>
            <hr/>
            <div class="form-horizontal">
                <div class="form-group">
                    <label class="col-sm-2 control-label">当前绑定邮箱</label>
                    <div class="col-sm-10">
                        <p class="form-control-static">${email}</p>
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">更新绑定邮箱</label>
                    <div class="col-sm-10">
                        <input id="email" name="email" type="email" class="form-control inputting"
                               placeholder="Email">
                        <span id="helpBlockemail" class="help-block" hidden></span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" onclick="updateEmail()">发送邮件</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="thrInn">
            <p>修改密码</p>
            <hr/>
            <div class="form-horizontal">
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">输入新密码</label>
                    <div class="col-sm-10">
                        <input id="pw" name="pw" type="password" class="form-control inputting"
                               placeholder="PassWord">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-sm-2 control-label">重复密码</label>
                    <div class="col-sm-10">
                        <input id="re_pw" name="re_pw" type="password" class="form-control inputting"
                               placeholder="PassWord">
                        <span id="helpBlockpw" class="help-block" hidden></span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default" onclick="updatePW()">修改密码</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="thrInn">
            <p>更改头像</p>
            <hr/>
            <div class="headpInn">
                <div class="ibox-content">
                    <div class="row">
                        <div id="crop-avatar" class="col-md-6">
                            <div class="avatar-view" title="Change Logo Picture">
                                <img src="${pageContext.request.contextPath}${headp}" alt="head">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="avatar-modal" aria-hidden="true" aria-labelledby="avatar-modal-label"
                     role="dialog" tabindex="-1">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="avatar-form" action="{{url('admin/upload-logo')}}"
                                  enctype="multipart/form-data" method="post">
                                <div class="modal-header">
                                    <button class="close" data-dismiss="modal" type="button">&times;</button>
                                    <h4 class="modal-title" id="avatar-modal-label">更改个人头像</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="avatar-body">
                                        <div class="avatar-upload">
                                            <input class="avatar-src" name="avatar_src" type="hidden">
                                            <input class="avatar-data" name="avatar_data" type="hidden">
                                            <label for="avatarInput">图片上传</label>
                                            <input class="avatar-input" id="avatarInput" name="avatar_file" type="file" onchange="previewImage(this)">
                                        </div>
                                        <div class="row">
                                            <div class="col-md-9">
                                                <div class="avatar-wrapper"></div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="avatar-preview preview-lg"></div>
                                                <div class="avatar-preview preview-md"></div>
                                                <div class="avatar-preview preview-sm"></div>
                                            </div>
                                        </div>
                                        <div class="row avatar-btns">
                                            <div class="col-md-9">
                                                <div class="btn-group">
                                                    <button class="btn" data-method="rotate" data-option="-90"
                                                            type="button" title="Rotate -90 degrees"><i
                                                            class="fa fa-undo"></i> 向左旋转
                                                    </button>
                                                </div>
                                                <div class="btn-group">
                                                    <button class="btn" data-method="rotate" data-option="90"
                                                            type="button" title="Rotate 90 degrees"><i
                                                            class="fa fa-repeat"></i> 向右旋转
                                                    </button>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <button class="btn btn-success btn-block avatar-save" type="submit" onclick="updateHeadp()"><i
                                                        class="fa fa-save" ></i> 保存修改
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="loading" aria-label="Loading" role="img" tabindex="-1"></div>
            </div>
        </div>
        <div class="thrInn bottomInn">
            <p>注册专家资格</p>
            <hr/>
            <div class="headpInn">
                <button type="button" class="btn btn-success">我是一名心理咨询师，想要注册心理专家资格</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>