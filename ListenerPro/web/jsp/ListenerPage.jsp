<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/11/27
  Time: 下午6:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../res/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../res/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Listener——倾听者</title>

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
                        <div class="col-md-12">
                            <div class="card">
                                <div class="liheader">
                                    <div><span class="overtalk">聊天信息</span><span class="limess">结束聊天</span>
                                    </div>
                                </div>
                                <div style="height: 20px ;background-color: #f0f0f0"></div>
                                <div class="liinner">
                                    <div class="oneinners">
                                        <div><img src="${pageContext.request.contextPath}/res/head/infos.jpg">
                                            <div class="says"><span class="saysin">早上好，新的一天愉快。</span></div>
                                        </div>
                                    </div>
                                    <div class="oneinners">
                                        <div><img src="${pageContext.request.contextPath}/res/head/infos.jpg">
                                            <div class="says"><span class="saysin">早上好，新的一天愉快。</span></div>
                                        </div>
                                    </div>
                                    <div class="oneinners_r">
                                        <div>
                                            <div class="says"><span class="saysin">早上好，新的一天愉快。</span></div>
                                            <img src="${pageContext.request.contextPath}/res/head/infos.jpg">
                                        </div>
                                    </div>
                                    <div class="oneinners">
                                        <div><img src="${pageContext.request.contextPath}/res/head/infos.jpg">
                                            <div class="says"><span class="saysin">早上好，新的一天愉快。</span></div>
                                        </div>
                                    </div>
                                    <div class="oneinners_r">
                                        <div>
                                            <div class="says"><span class="saysin">早上好，新的一天愉快。</span></div>
                                            <img src="${pageContext.request.contextPath}/res/head/infos.jpg">
                                        </div>
                                    </div>
                                    <div class="oneinners">
                                        <div><img src="${pageContext.request.contextPath}/res/head/infos.jpg">
                                            <div class="says"><span class="saysin">早上好，新的一天愉快。</span></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="lifooter">
                                    <div class="row">
                                        <div class="col-md-offset-2 col-md-8">
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="在此输入发送信息..."/>
                                                <span class="input-group-btn">
                                                    <button class="btn btn-primary" type="button">发送</button>
                                                </span>
                                            </div>
                                        </div>
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
<script>
</script>
</html>
