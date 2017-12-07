<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/11/30
  Time: 下午1:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../res/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../res/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Listener——修补屋</title>

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
                                    <h4 class="title">修补题库
                                        <small>根是地下的枝，枝是空中的根。</small>
                                    </h4>
                                </div>
                                <div class="content">
                                    <div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="ligoquestion">
                                                    <span class="ligobase">入门测试</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="ligoquestion">
                                                    <span class="ligobase">进阶测试</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="ligoquestion">
                                                    <span class="ligobase">专业测试</span>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">最新题目
                                        <small>只管走过去，不要逗留着去采了花朵来保存，因为一路上，花朵会继续开放的。</small>
                                    </h4>
                                </div>
                                <div class="content">
                                    <div class="row">
                                        <div class="col-md-4"><div class="liblock"><span class="liblbase">入门测试C</span></div></div>
                                        <div class="col-md-4"><div class="liblock"><span class="liblbase">入门测试D</span></div></div>
                                        <div class="col-md-4"><div class="liblock"><span class="liblbase">进阶测试F</span></div></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4"><div class="liblock"><span class="liblbase">入门测试C</span></div></div>
                                        <div class="col-md-4"><div class="liblock"><span class="liblbase">入门测试D</span></div></div>
                                        <div class="col-md-4"><div class="liblock"><span class="liblbase">进阶测试F</span></div></div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-4"><div class="liblock"><span class="liblbase">入门测试C</span></div></div>
                                        <div class="col-md-4"><div class="liblock"><span class="liblbase">入门测试D</span></div></div>
                                        <div class="col-md-4"><div class="liblock"><span class="liblbase">进阶测试F</span></div></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">测试结果
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
                                                    <small>测试题目：入门测试的第一套测试题</small>
                                                    <br/>
                                                    <small>完成程度：100%</small>
                                                    <br/>
                                                    <small>测试结果：<a>点击查看</a></small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>测试题目：入门测试的第一套测试题</small>
                                                    <br/>
                                                    <small>完成程度：100%</small>
                                                    <br/>
                                                    <small>测试结果：<a>点击查看</a></small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>测试题目：入门测试的第一套测试题</small>
                                                    <br/>
                                                    <small>完成程度：100%</small>
                                                    <br/>
                                                    <small>测试结果：<a>点击查看</a></small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>测试题目：入门测试的第一套测试题</small>
                                                    <br/>
                                                    <small>完成程度：100%</small>
                                                    <br/>
                                                    <small>测试结果：<a>点击查看</a></small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>测试题目：入门测试的第一套测试题</small>
                                                    <br/>
                                                    <small>完成程度：100%</small>
                                                    <br/>
                                                    <small>测试结果：<a>点击查看</a></small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>测试题目：入门测试的第一套测试题</small>
                                                    <br/>
                                                    <small>完成程度：100%</small>
                                                    <br/>
                                                    <small>测试结果：<a>点击查看</a></small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>测试题目：入门测试的第一套测试题</small>
                                                    <br/>
                                                    <small>完成程度：100%</small>
                                                    <br/>
                                                    <small>测试结果：<a>点击查看</a></small>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-offset-1 col-xs-10">
                                                    <small style="color:#c0c0c0">2017-10-23 20：00</small>
                                                    <br/>
                                                    <small>测试题目：入门测试的第一套测试题</small>
                                                    <br/>
                                                    <small>完成程度：100%</small>
                                                    <br/>
                                                    <small>测试结果：<a>点击查看</a></small>
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
