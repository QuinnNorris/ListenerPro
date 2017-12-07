<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/11/30
  Time: 下午1:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../res/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../res/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Listener——飞鸟集</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>

    <script src="${pageContext.request.contextPath}/res/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/bootstrap.min.js"></script>
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

</head>
<body>

<div class="wrapper">

    <jsp:include page="wrapper.jsp"/>

    <div class="main-panel">
        <jsp:include page="topbar.jsp"/>

        <input type="hidden" id="" value=""/>

        <div class="content">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">发布动态
                                        <small>和其他人分享你今天的感悟。</small>
                                    </h4>
                                </div>
                                <div class="content">
                                    <div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label></label>
                                                    <textarea rows="3" class="form-control border-input" id=""
                                                              placeholder="...">${info}</textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-offset-8 col-md-4">
                                                <button type="button" class="btn btn-primary" style="width: 100%">让这个世界倾听你</button>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">倾听世界
                                        <small>我们把世界看错，反说它欺骗了我们。</small>
                                    </h4>
                                </div>
                                <div class="content">
                                    <ul class="list-unstyled team-members">
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <img src="../res/head/infos.jpg" class="img-no-padding img-responsive img-circle"
                                                         style="width: 100px; height: 100px;margin-left: 30px;">
                                                </div>
                                                <div class="col-xs-9">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <img src="../res/head/infos.jpg" class="img-no-padding img-responsive img-circle"
                                                         style="width: 100px; height: 100px;margin-left: 30px;">
                                                </div>
                                                <div class="col-xs-9">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <img src="../res/head/infos.jpg" class="img-no-padding img-responsive img-circle"
                                                         style="width: 100px; height: 100px;margin-left: 30px;">
                                                </div>
                                                <div class="col-xs-9">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li><li>
                                        <div class="row">
                                            <div class="col-xs-3">
                                                <img src="../res/head/infos.jpg" class="img-no-padding img-responsive img-circle"
                                                     style="width: 100px; height: 100px;margin-left: 30px;">
                                            </div>
                                            <div class="col-xs-9">
                                                <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                <br/>
                                                <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                            </div>
                                        </div>
                                    </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <img src="../res/head/infos.jpg" class="img-no-padding img-responsive img-circle"
                                                         style="width: 100px; height: 100px;margin-left: 30px;">
                                                </div>
                                                <div class="col-xs-9">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <img src="../res/head/infos.jpg" class="img-no-padding img-responsive img-circle"
                                                         style="width: 100px; height: 100px;margin-left: 30px;">
                                                </div>
                                                <div class="col-xs-9">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬,今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">我赞过的
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
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>今天是十月的下旬二十三日，今天是十月的下旬二十三日今天是十月的下旬</small>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <jsp:include page="footerbar.jsp"/>

            </div>
        </div>

</body>
<script>
</script>
</html>
