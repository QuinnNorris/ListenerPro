<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/11/12
  Time: 下午1:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../res/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../res/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Listener——万事屋</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>

    <link rel="stylesheet" type="text/css" href="../res/css/bootstrap.min.css">
    <link href="../res/css/animate.min.css" rel="stylesheet"/>
    <link href="../res/css/paper-dashboard.css" rel="stylesheet"/>
    <link href="../res/css/demo.css" rel="stylesheet"/>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="../res/css/themify-icons.css" rel="stylesheet">
    <link href="../res/css/licss.css" rel="stylesheet">

</head>
<body>

<div class="wrapper">

    <jsp:include page="wrapper.jsp"/>

    <div class="main-panel">
        <jsp:include page="topbar.jsp"/>


        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 col-md-5">
                        <div class="card card-user">
                            <div class="image">
                                <img src="../res/img/background.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                    <a href="javascript:void(0);"><img class="avatar border-white"
                                                                       src="../res/head/infos.jpg"/></a>
                                    <h4 class="title">Quinn Norris<br/>
                                        <small>上海市 普陀区</small>
                                    </h4>
                                </div>
                                <p class="description text-center" style="width: 270px;margin-left: 26px;">
                                    世上只有一种英雄主义，就是在认清生活真相后依然热爱生活。
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <h5>12<br/>
                                            <small>文章</small>
                                        </h5>
                                    </div>
                                    <div class="col-md-4">
                                        <h5>40<br/>
                                            <small>相册</small>
                                        </h5>
                                    </div>
                                    <div class="col-md-3">
                                        <h5>5<br/>
                                            <small>等级</small>
                                        </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="header">
                                <h4 class="title">花园往事
                                    <a href="#">
                                        <small style="margin-left: 155px;font-size: 14px;">查看全部<i
                                                class="ti-angle-double-right" style="font-size: 12px;"></i></small>
                                    </a>
                                </h4>
                            </div>
                            <div class="content">
                                <ul class="list-unstyled team-members">
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="../res/head/infos.jpg" class="img-no-padding img-responsive"
                                                     style="width: 109px; height: 74px;">
                                            </div>
                                            <div class="col-xs-8">
                                                <span>我的10月23日的日记</span>
                                                <br/>
                                                <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                <br/>
                                                <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="../res/head/infos.jpg" class="img-no-padding img-responsive"
                                                     style="width: 109px; height: 74px;">
                                            </div>
                                            <div class="col-xs-8">
                                                <span>我的10月23日的日记</span>
                                                <br/>
                                                <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                <br/>
                                                <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="../res/head/infos.jpg" class="img-no-padding img-responsive"
                                                     style="width: 109px; height: 74px;">
                                            </div>
                                            <div class="col-xs-8">
                                                <span>我的10月23日的日记</span>
                                                <br/>
                                                <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                <br/>
                                                <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="../res/head/infos.jpg" class="img-no-padding img-responsive"
                                                     style="width: 109px; height: 74px;">
                                            </div>
                                            <div class="col-xs-8">
                                                <span>我的10月23日的日记</span>
                                                <br/>
                                                <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                <br/>
                                                <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <img src="../res/head/infos.jpg" class="img-no-padding img-responsive"
                                                     style="width: 109px; height: 74px;">
                                            </div>
                                            <div class="col-xs-8">
                                                <span>我的10月23日的日记</span>
                                                <br/>
                                                <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                <br/>
                                                <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card">
                            <div class="header">
                                <h4 class="title">心理预约
                                    <a href="#">
                                        <small style="margin-left: 155px;font-size: 14px;">查看全部<i
                                                class="ti-angle-double-right" style="font-size: 12px;"></i></small>
                                    </a>
                                </h4>
                            </div>
                            <div class="content">
                                <ul class="list-unstyled team-members">
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-8">
                                                <span>2017-07-17 14：30</span>
                                                <br/>
                                                <span class="text-muted"><small>已结束</small></span>
                                                <br/>
                                                <span>上海市真北路桃浦路329号中环合作大厦1306工作室</span>
                                            </div>

                                            <div class="col-xs-4 text-right" style="margin-top: 12px;">
                                                <btn class="btn btn-sm btn-success btn-icon"><i
                                                        class="ti-angle-right"></i>&nbsp;详细信息
                                                </btn>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-8">
                                                <span>2017-07-17 14：30</span>
                                                <br/>
                                                <span class="text-muted"><small>已结束</small></span>
                                                <br/>
                                                <span>上海市真北路桃浦路329号中环合作大厦1306工作室</span>
                                            </div>

                                            <div class="col-xs-4 text-right" style="margin-top: 12px;">
                                                <btn class="btn btn-sm btn-success btn-icon"><i
                                                        class="ti-angle-right"></i>&nbsp;详细信息
                                                </btn>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-8">
                                                <span>2017-07-17 14：30</span>
                                                <br/>
                                                <span class="text-muted"><small>已结束</small></span>
                                                <br/>
                                                <span>中环合作大厦1306工作室</span>
                                            </div>

                                            <div class="col-xs-4 text-right" style="margin-top: 12px;">
                                                <btn class="btn btn-sm btn-success btn-icon"><i
                                                        class="ti-angle-right"></i>&nbsp;详细信息
                                                </btn>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="row">
                                            <div class="col-xs-8">
                                                <span>2017-07-17 14：30</span>
                                                <br/>
                                                <span class="text-muted"><small>已结束</small></span>
                                                <br/>
                                                <span>上海市真北路桃浦路329号中环合作大厦1306工作室</span>
                                            </div>

                                            <div class="col-xs-4 text-right" style="margin-top: 12px;">
                                                <btn class="btn btn-sm btn-success btn-icon"><i
                                                        class="ti-angle-right"></i>&nbsp;详细信息
                                                </btn>
                                            </div>
                                        </div>
                                    </li>

                                </ul>
                            </div>
                        </div>
                        <div class="card">
                            <div class="header">
                                <h4 class="title">匹配信息
                                    <small>以此信息匹配其他倾听者。</small>
                                </h4>
                            </div>
                            <div class="content">
                                <form class="form-horizontal lifinds">
                                    <div class="form-group">
                                        <label class="col-md-2">年龄</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control  border-input"
                                                   value="23">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2">职业</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control border-input"
                                                   value="学生（研究生）">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2">性别</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control border-input"
                                                   value="男">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2">城市</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control border-input"
                                                   value="北京市">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">基本信息
                                    <small>以下信息只有您本人可见。</small>
                                </h4>
                            </div>
                            <div class="content">
                                <div>
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>用户名</label>
                                                <input type="text" class="form-control border-input"
                                                       value="Quinn Norris">
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div class="form-group">
                                                <label>邮箱地址</label>
                                                <input type="email" class="form-control border-input"
                                                       value="sei_qnz2015@126.com">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>性别</label>
                                                <input type="text" class="form-control border-input" value="男">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>年龄</label>
                                                <input type="text" class="form-control border-input" value="19">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>城市</label>
                                                <input type="text" class="form-control border-input" value="上海市 普陀区">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>现住地址</label>
                                                <input type="text" class="form-control border-input"
                                                       value="华东师范大学中山北路3663号">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>工作</label>
                                                <input type="text" class="form-control border-input" value="学生（本科）">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>修改密码</label>
                                                <input type="password" class="form-control border-input"
                                                       placeholder="输入新密码以更新">
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>个性标签1</label>
                                                <input type="text" class="form-control border-input" value="篮球">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>个性标签2</label>
                                                <input type="text" class="form-control border-input" value="简约">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>个性标签3</label>
                                                <input type="text" class="form-control border-input" value="喜欢甜食">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>个性标签4</label>
                                                <input type="text" class="form-control border-input" value="...">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>自我介绍</label>
                                                <textarea rows="2" class="form-control border-input"
                                                          placeholder="这里写个人简介">世上只有一种英雄主义，就是在认清生活真相后依然热爱生活。</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="header">
                                <h4 class="title">我的组件
                                    <small>启用的组件将在秘密花园中显示。</small>
                                </h4>
                            </div>
                            <div class="content">
                                <div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option1"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option2"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option3"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option1"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option2"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option3"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option1"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option2"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option3"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option1"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option2"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option3"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option1"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option2"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option3"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option1"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option2"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option3"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option1"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option2"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option3"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option1"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option2"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option3"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-center" style="margin-top: 10px">
                                        <button type="submit" class="btn btn-info btn-fill btn-wd"
                                                style="margin-top: 15px;margin-bottom: 24px;">自己动手，创建一个全新的组件
                                        </button>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>


        <jsp:include page="footerbar.jsp"/>

    </div>
</div>


</body>

<script src="../res/js/jquery-1.11.0.min.js"></script>
<script src="../res/js/bootstrap.min.js"></script>
<%--<script src="../res/js/bootstrap-checkbox-radio.js"></script>--%>
<script src="../res/js/chartist.min.js"></script>
<script src="../res/js/bootstrap-notify.js"></script>
<script src="../res/js/paper-dashboard.js"></script>
<script src="../res/js/demo.js"></script>

</html>
