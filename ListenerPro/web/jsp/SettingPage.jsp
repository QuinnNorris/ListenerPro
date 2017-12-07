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

    <script src="${pageContext.request.contextPath}/res/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/bootstrap.min.js"></script>
    <%--<script src="../res/js/bootstrap-checkbox-radio.js"></script>--%>
    <script src="${pageContext.request.contextPath}/res/js/chartist.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/bootstrap-notify.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/paper-dashboard.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/demo.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/md5.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/jquery.select.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/res/css/animate.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/res/css/paper-dashboard.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/res/css/demo.css" rel="stylesheet"/>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/res/css/themify-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/css/licss.css" rel="stylesheet">
    <%--

        <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/colpick.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/plugin.js"></script>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/colpick.css" type="text/css"/>
    --%>

    <style type="text/css">
        div, ul, li {
            margin: 0;
            padding: 0;
        }

        ul {
            line-style: none;
        }

        .select {
            position: relative;
            min-width: 134px;
            cursor: pointer;
            border-radius: 4px;
            height: 40px;
            border: 1px solid #CCC5B9;
            background-color: #fffcf5;
            width: 100%;
        }

        .select:after {
            content: "";
            position: absolute;
            top: 50%;
            right: 10px;
            margin-top: -2px;
            border-top: 5px solid #666;
            border-right: 5px solid transparent;
            border-left: 5px solid transparent;
        }

        .select .select_text {
            padding: 0 20px 0 10px;
            height: 36px;
            line-height: 36px;
        }

        .select_ul {
            display: none;
            position: absolute;
            top: 34px;
            left: -1px;
            width: 100%;
            min-width: 134px;
            border: 1px solid #D4D4D4;
            border-bottom-right-radius: 3px;
            border-bottom-left-radius: 3px;
            background: #fff;
        }

        .select_ul li {
            line-height: 36px;
            text-indent: 10px;
        }

        .select_ul li:hover {
            background: #efddb4;
        }

        .select_ul li.cur {
            color: #fff;
            background: #efddb4;
        }

        .leftBody {
            position: relative;
            margin: 13px;
        }

        .modal-body {
            position: relative;
            padding: 15px;
            height: 550px;
        }

        .showBroder {
            position: relative;
            width: 49%;
            float: left;
        }

        .showRightBorder {
            position: relative;
            width: 49%;
            float: right;
        }

        .compAdd {
            padding-top: 20px;
        }

        .compAdd1 {
            padding-top: 0px;
        }

        .compAdd2 {
            padding-top: 60px;
        }

        .compAdd .inputting {
            border: 1px solid #CCC5B9;
        }

        .compAdd2 .inputting {
            border: 1px solid #CCC5B9;
        }

        .compInnINMod {
            position: relative;
            border: 1px solid #c0c0c0;
            width: 313px;
            margin-left: 22%;
            margin-top: 40px;
            height: 200px;
        }
    </style>

</head>
<body>

<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" style="width: 1100px;" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">创建属于自己的新组件</h4>
            </div>
            <div class="modal-body">
                <div class="showBroder">
                    <div class="leftBody">
                        <div class="compAdd selectComp">
                            <p>类型 &nbsp;&nbsp;&nbsp;<small>选择想要创建的组件类型</small>
                            </p>
                            <hr/>
                            <div class="btn-group btn-block" data-toggle="buttons">
                                <label class="btn btn-success active">
                                    <input type="radio" name="optons" id="t1" value="1" autocomplete="off"
                                           onchange="addingtype()" checked> 空白
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optons" id="t2" value="2" autocomplete="off"
                                           onchange="addingtype()"> 标题
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optons" id="t3" value="3" autocomplete="off"
                                           onchange="addingtype()"> 长度条
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optons" id="t4" value="4" autocomplete="off"
                                           onchange="addingtype()"> 地点
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optons" id="t5" value="5" autocomplete="off"
                                           onchange="addingtype()"> 人物
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optons" id="t6" value="6" autocomplete="off"
                                           onchange="addingtype()"> 天气
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optons" id="t7" value="7" autocomplete="off"
                                           onchange="addingtype()"> 心情
                                </label>
                            </div>
                        </div>
                        <div class="compAdd innertext">
                            <p>标题&nbsp;&nbsp;&nbsp;<small>填写你组件的标题(空白组件无效)</small>
                            </p>
                            <hr/>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <input id="compnames" name="text" type="text" class="form-control inputting"
                                               value="在此输入标题" onchange="addingtype()">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="compAdd1 color">
                            <p>颜色&nbsp;&nbsp;&nbsp;<small>选择组件背景颜色</small>
                            </p>
                            <hr/>
                            <div class="btn-group btn-block" data-toggle="buttons">
                                <label class="btn btn-default active" style="background-color: #dddddd;">
                                    <input type="radio" name="option" id="C1" value="#ffffff"
                                           autocomplete="off" onchange="addingtype()" checked> 纯白
                                </label>
                                <label class="btn btn-default" style="background-color: #5bba27;">
                                    <input type="radio" name="option" id="C2" value="#5bba27"
                                           autocomplete="off" onchange="addingtype()"> 浅草
                                </label>
                                <label class="btn btn-default" style="background-color: #dca7a7;">
                                    <input type="radio" name="option" id="C3" value="#dca7a7"
                                           autocomplete="off" onchange="addingtype()"> 桃粉
                                </label>
                                <label class="btn btn-default" style="background-color: #d9534f;">
                                    <input type="radio" name="option" id="C4" value="#d9534f"
                                           autocomplete="off" onchange="addingtype()"> 玫瑰
                                </label>
                                <label class="btn btn-default " style="background-color: #0FB9EF;">
                                    <input type="radio" name="option" id="C5" value="#0FB9EF"
                                           autocomplete="off" onchange="addingtype()"> 天空
                                </label>

                            </div>
                        </div>
                        <div class="compAdd length">
                            <p>长度条段数&nbsp;&nbsp;&nbsp;<small>选择长度块个数(仅对长度条组件有效)</small>
                            </p>
                            <hr/>
                            <div class="btn-group btn-block" data-toggle="buttons">
                                <label class="btn btn-success active">
                                    <input type="radio" name="optio" id="L1" value="1" autocomplete="off"
                                           onchange="addingtype()" checked> 1
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optio" id="L2" value="2" autocomplete="off"
                                           onchange="addingtype()"> 2
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optio" id="L3" value="3" autocomplete="off"
                                           onchange="addingtype()"> 3
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optio" id="L4" value="4" autocomplete="off"
                                           onchange="addingtype()"> 4
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optio" id="L5" value="5" autocomplete="off"
                                           onchange="addingtype()"> 5
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="optio" id="L6" value="6" autocomplete="off"
                                           onchange="addingtype()"> 6
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="showRightBorder">
                    <div class="rightBody">
                        <div class="compAdd selectComp" style="margin-top: 13px;">
                            <p>预览效果</p>
                            <hr/>
                            <div class="licomps" id="showcomps" style="height: 200px;margin-left: 20%;">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-success" onclick="createComp()">保存</button>
            </div>
        </div>
    </div>
</div>

<div class="wrapper">

    <jsp:include page="wrapper.jsp"/>

    <div class="main-panel">
        <jsp:include page="topbar.jsp"/>

        <input type="hidden" id="work" value="${work}"/>
        <input type="hidden" id="fwork" value="${fwork}"/>
        <input type="hidden" id="city" value="${city}"/>
        <input type="hidden" id="fcity" value="${fcity}"/>
        <input type="hidden" id="works" value="${workCustoms}"/>
        <input type="hidden" id="citys" value="${cityCustoms}"/>
        <input type="hidden" id="com_type" value="${com_type}"/>
        <input type="hidden" id="com_name" value="${com_name}"/>
        <input type="hidden" id="length" value="${length}"/>
        <input type="hidden" id="color" value="${color}"/>
        <input type="hidden" id="compsize" value="${compsize}"/>
        <input type="hidden" id="compinuse" value="${compinuse}"/>
        <input type="hidden" id="comid" value="${comid}"/>

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
                                    <h4 class="title">${username}<br/>
                                        <small>${addr}</small>
                                    </h4>
                                </div>
                                <p class="description text-center" style="width: 270px;margin-left: 26px;">
                                    ${info}
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
                                        <h5>${stars}<br/>
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
                                            <input type="text" class="form-control  border-input" id="fage"
                                                   onchange="baseChange(this)"
                                                   value="${fage}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2">职业</label>
                                        <div class="col-md-10" id="findwork">
                                            <select class="select" name="state" data-value="0">
                                                <option>学生(本科生)</option>
                                                <option selected="selected">学生(研究生)</option>
                                                <option>职场工作者</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2">性别</label>
                                        <div class="col-md-10">
                                            <input type="text" class="form-control border-input" id="fsex"
                                                   onchange="baseChange(this)"
                                                   value="${fsex}">
                                        </div>
                                    </div>
                                    <div class="form-group licity">
                                        <label class="col-md-2">城市</label>
                                        <div class="col-md-10" id="findcity">
                                            <select class="select" name="state" data-value="0">
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                                <option>北京市</option>
                                                <option>上海市</option>
                                                <option>湖北省</option>
                                            </select>
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
                                                <input type="text" class="form-control border-input" id="username"
                                                       onchange="baseChange(this)"
                                                       value="${username}">
                                            </div>
                                        </div>
                                        <div class="col-md-7">
                                            <div class="form-group">
                                                <label>邮箱地址</label>
                                                <input type="email" class="form-control border-input" id="email"
                                                       onchange="baseChange(this)"
                                                       value="${email}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>性别</label>
                                                <input type="text" class="form-control border-input" id="sex"
                                                       onchange="baseChange(this)"
                                                       value="${sex}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>年龄</label>
                                                <input type="text" class="form-control border-input" id="age"
                                                       onchange="baseChange(this)"
                                                       value="${age}">
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group" id="thiscity">
                                                <label>城市</label>
                                                <select class="select" name="state" data-value="0">
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                    <option>北京市</option>
                                                    <option>上海市</option>
                                                    <option>湖北省</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>现住地址</label>
                                                <input type="text" class="form-control border-input" id="addr"
                                                       onchange="baseChange(this)"
                                                       value="${addr}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group" id="thiswork">
                                                <label>职业</label>
                                                <select class="select" name="state" data-value="0">
                                                    <option>学生(本科生)</option>
                                                    <option selected="selected">学生(研究生)</option>
                                                    <option>职场工作者</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label>修改密码</label>
                                                <input type="password" class="form-control border-input" id="password"
                                                       onchange="baseChange(this)"
                                                       placeholder="输入新密码以更新">
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>个性标签1</label>
                                                <input type="text" class="form-control border-input" id="label1"
                                                       onchange="baseChange(this)" value="${label1}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>个性标签2</label>
                                                <input type="text" class="form-control border-input" id="label2"
                                                       onchange="baseChange(this)" value="${label2}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>个性标签3</label>
                                                <input type="text" class="form-control border-input" id="label3"
                                                       onchange="baseChange(this)" value="${label3}">
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label>个性标签4</label>
                                                <input type="text" class="form-control border-input" id="label4"
                                                       onchange="baseChange(this)" value="${label4}">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <label>自我介绍</label>
                                                <textarea rows="2" class="form-control border-input" id="info"
                                                          onchange="baseChange(this)"
                                                          placeholder="这里写个人简介">${info}</textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <div class="card" style="z-index: 0;">
                            <div class="header">
                                <h4 class="title">我的组件
                                    <small>启用的组件将在秘密花园中显示。</small>
                                </h4>
                            </div>
                            <div class="content">
                                <div>
                                    <%--<div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                                <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: #FFFFFF;">
                                                    <textarea
                                                            style="font-size: 19px; margin: 0px; height: 196px; width: 307px; border: 0px;
                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color:#FFFFFF;"></textarea>
                                                </div>

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option11"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option12"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option13"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                                <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                    <div style="height: 40px;">
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">每日感悟</span>
                                                    </div>
                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 153px;width: 307px;border: 0px;
                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                                </div>

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option21"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option22"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option23"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">
                                                <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                    <div>
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">今日运动</span>
                                                        <div>
                                                            <span class="title ti-flag"
                                                                  style="font-size: 25px;top: 12px;left: 3px;margin-left: 10px;position: relative;"></span>
                                                            <div class="btn-group" data-toggle="buttons"
                                                                 style="margin-top: 15px;margin-left: 15px;">
                                                                <label class="btn btn-default"
                                                                       style="width: 10px;height: 23px;">
                                                                    <input type="checkbox" id="imlirun1"
                                                                           autocomplete="off"
                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;
                                                                </label>
                                                                <label class="btn btn-default"
                                                                       style="width: 10px;height: 23px;">
                                                                    <input type="checkbox" id="imlirun2"
                                                                           autocomplete="off"
                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;
                                                                </label>
                                                                <label class="btn btn-default"
                                                                       style="width: 10px;height: 23px;">
                                                                    <input type="checkbox" id="imlirun3"
                                                                           autocomplete="off"
                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;
                                                                </label>
                                                                <label class="btn btn-default"
                                                                       style="width: 10px;height: 23px;">
                                                                    <input type="checkbox" id="imlirun4"
                                                                           autocomplete="off"
                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;
                                                                </label>
                                                                <label class="btn btn-default"
                                                                       style="width: 10px;height: 23px;">
                                                                    <input type="checkbox" id="imlirun5"
                                                                           autocomplete="off"
                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;
                                                                </label>
                                                                <label class="btn btn-default"
                                                                       style="width: 10px;height: 23px;">
                                                                    <input type="checkbox" id="imlirun6"
                                                                           autocomplete="off"
                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;
                                                                </label>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <script>
                                                        function changelirun(obj) {
                                                            var ids = obj.id;
                                                            for (var i = 0; i < 6; i++) {
                                                                if (Number(ids.substr(7)) > i) {
                                                                    $('#imlirun' + (i + 1)).parent().attr('class', 'btn btn-default active');
                                                                    $('#imlirun' + (i + 1)).attr('checked', 'checked');
                                                                }
                                                                else {
                                                                    $('#imlirun' + (i + 1)).parent().attr('class', 'btn btn-default');
                                                                    $('#imlirun' + (i + 1)).removeAttr('checked');
                                                                }
                                                            }

                                                        }
                                                    </script>
                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 114px;width: 307px;border: 0px;border-radius: 8px;
                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option31"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option32"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option33"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                                <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                    <div>
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">今日活动</span>
                                                        <span class="title ti-location-pin"
                                                              style="font-size: 25px;margin-left: 15px;"></span>
                                                        <input type="text" value=""
                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color: white;">

                                                        <span class="title ti-alarm-clock"
                                                              style="font-size: 25px;margin-left: 15px;font-size: 25px;"></span>
                                                        <input type="text" value=""
                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color: white;">
                                                    </div>
                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 89px;width: 307px;border: 0px;border-radius: 8px;
                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                                </div>

                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option41"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option42"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option43"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                                <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                    <div>
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">今日会面</span>
                                                        <span class=" title ti-user"
                                                              style="font-size: 25px;margin-left: 15px;"></span>
                                                        <input type="text" value=""
                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color: white;">
                                                    </div>
                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 125px;width: 307px;border: 0px;border-radius: 8px;
                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option51"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option52"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option53"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">

                                                <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                    <div>
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">今日天气</span>
                                                        <span class="title ti-cloud"
                                                              style="font-size: 25px;margin-left: 15px;"></span>
                                                        <input type="text" value=""
                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color: white;">
                                                    </div>
                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 125px;width: 307px;border: 0px;border-radius: 8px;
                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option61"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option62"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option63"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px">
                                                <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                    <div>
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;font-family:Muli,Helvetica,Arial,sans-serif;">
                                                            今日心情</span>
                                                        <span class="title ti-heart"
                                                              style="font-size: 25px;margin-left: 15px;"></span>
                                                        <input type="text" value=""
                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color: white;">
                                                    </div>
                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 114px;width: 307px;border: 0px;border-radius: 8px;
                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success active">
                                                        <input type="radio" name="options" id="option71"
                                                               autocomplete="off" checked> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option72"
                                                               autocomplete="off"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option73"
                                                               autocomplete="off"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px" id="inshow1">
                                                <div style="display: block;display: block;height: 195px;border-radius: 5px;border: 1px solid #dddddd;cursor: pointer"
                                                     data-toggle="modal"
                                                     data-target=".bs-example-modal-lg">
                                                    <span class="ti-plus"
                                                          style="display: block;margin-left: 40%;font-size: 60px;top: 53px;
                                                          position: relative;color: #777;"></span>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success ">
                                                        <input type="radio" name="options" id="option11"
                                                               autocomplete="off" onchange="changecomptype(this)"> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option12"
                                                               autocomplete="off" onchange="changecomptype(this)"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option13"
                                                               autocomplete="off" onchange="changecomptype(this)"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px" id="inshow2">
                                                <div style="display: block;display: block;height: 195px;border-radius: 5px;border: 1px solid #dddddd;cursor: pointer"
                                                     data-toggle="modal"
                                                     data-target=".bs-example-modal-lg">
                                                    <span class="ti-plus"
                                                          style="display: block;margin-left: 40%;font-size: 60px;top: 53px;
                                                          position: relative;color: #777;"></span>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success">
                                                        <input type="radio" name="options" id="option21"
                                                               autocomplete="off" onchange="changecomptype(this)"> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option22"
                                                               autocomplete="off" onchange="changecomptype(this)"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option23"
                                                               autocomplete="off" onchange="changecomptype(this)"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px" id="inshow3">
                                                <div style="display: block;display: block;height: 195px;border-radius: 5px;border: 1px solid #dddddd;cursor: pointer"
                                                     data-toggle="modal"
                                                     data-target=".bs-example-modal-lg">
                                                    <span class="ti-plus"
                                                          style="display: block;margin-left: 40%;font-size: 60px;top: 53px;
                                                          position: relative;color: #777;"></span>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success ">
                                                        <input type="radio" name="options" id="option31"
                                                               autocomplete="off" onchange="changecomptype(this)"> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option32"
                                                               autocomplete="off" onchange="changecomptype(this)"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option33"
                                                               autocomplete="off" onchange="changecomptype(this)"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px" id="inshow4">
                                                <div style="display: block;display: block;height: 195px;border-radius: 5px;border: 1px solid #dddddd;cursor: pointer"
                                                     data-toggle="modal"
                                                     data-target=".bs-example-modal-lg">
                                                    <span class="ti-plus"
                                                          style="display: block;margin-left: 40%;font-size: 60px;top: 53px;
                                                          position: relative;color: #777;"></span>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success ">
                                                        <input type="radio" name="options" id="option41"
                                                               autocomplete="off" onchange="changecomptype(this)"> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option42"
                                                               autocomplete="off" onchange="changecomptype(this)"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option43"
                                                               autocomplete="off" onchange="changecomptype(this)"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px" id="inshow5">
                                                <div style="display: block;display: block;height: 195px;border-radius: 5px;border: 1px solid #dddddd;cursor: pointer"
                                                     data-toggle="modal"
                                                     data-target=".bs-example-modal-lg">
                                                    <span class="ti-plus"
                                                          style="display: block;margin-left: 40%;font-size: 60px;top: 53px;
                                                          position: relative;color: #777;"></span>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success ">
                                                        <input type="radio" name="options" id="option51"
                                                               autocomplete="off" onchange="changecomptype(this)"> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option52"
                                                               autocomplete="off" onchange="changecomptype(this)"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option53"
                                                               autocomplete="off" onchange="changecomptype(this)"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px" id="inshow6">
                                                <div style="display: block;display: block;height: 195px;border-radius: 5px;border: 1px solid #dddddd;cursor: pointer"
                                                     data-toggle="modal"
                                                     data-target=".bs-example-modal-lg">
                                                    <span class="ti-plus"
                                                          style="display: block;margin-left: 40%;font-size: 60px;top: 53px;
                                                          position: relative;color: #777;"></span>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success ">
                                                        <input type="radio" name="options" id="option61"
                                                               autocomplete="off" onchange="changecomptype(this)"> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option62"
                                                               autocomplete="off" onchange="changecomptype(this)"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option63"
                                                               autocomplete="off" onchange="changecomptype(this)"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px" id="inshow7">
                                                <div style="display: block;display: block;height: 195px;border-radius: 5px;border: 1px solid #dddddd;cursor: pointer"
                                                     data-toggle="modal"
                                                     data-target=".bs-example-modal-lg">
                                                    <span class="ti-plus"
                                                          style="display: block;margin-left: 40%;font-size: 60px;top: 53px;
                                                          position: relative;color: #777;"></span>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success ">
                                                        <input type="radio" name="options" id="option71"
                                                               autocomplete="off" onchange="changecomptype(this)"> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option72"
                                                               autocomplete="off" onchange="changecomptype(this)"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option73"
                                                               autocomplete="off" onchange="changecomptype(this)"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6 col-md-6">
                                        <div class="thumbnail">
                                            <div class="licomps" style="height: 200px" id="inshow8">
                                                <div style="display: block;display: block;height: 195px;border-radius: 5px;border: 1px solid #dddddd;cursor: pointer"
                                                     data-toggle="modal"
                                                     data-target=".bs-example-modal-lg">
                                                    <span class="ti-plus"
                                                          style="display: block;margin-left: 40%;font-size: 60px;top: 53px;
                                                          position: relative;color: #777;"></span>
                                                </div>
                                            </div>
                                            <div class="caption liradiocomps">
                                                <div class="btn-group" data-toggle="buttons">
                                                    <label class="btn btn-success ">
                                                        <input type="radio" name="options" id="option81"
                                                               autocomplete="off" onchange="changecomptype(this)"> 启用
                                                    </label>
                                                    <label class="btn btn-primary">
                                                        <input type="radio" name="options" id="option82"
                                                               autocomplete="off" onchange="changecomptype(this)"> 停用
                                                    </label>
                                                    <label class="btn btn-danger">
                                                        <input type="radio" name="options" id="option83"
                                                               autocomplete="off" onchange="changecomptype(this)"> 删除
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="text-center" style="margin-top: 10px">
                                        <button type="submit" class="btn btn-info btn-fill btn-wd"
                                                data-toggle="modal"
                                                data-target=".bs-example-modal-lg"
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
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/SettingPage.js"></script>
</html>
