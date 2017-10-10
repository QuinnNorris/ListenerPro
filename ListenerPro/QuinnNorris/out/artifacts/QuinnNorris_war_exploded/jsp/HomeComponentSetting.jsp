<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/10/10
  Time: 上午8:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心——组件管理</title>
    <link rel="stylesheet" type="text/css" href="../res/css/public.css">
    <link rel="stylesheet" type="text/css" href="../res/css/navBar.css">
    <link rel="stylesheet" type="text/css" href="../res/css/homePageBar.css">
    <link rel="stylesheet" type="text/css" href="../res/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../res/css/homeComponentSetting.css">
    <script type="text/javascript" src="../res/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="../res/js/navBar.js"></script>
    <script type="text/javascript" src="../res/js/homePageBar.js"></script>
    <script type="text/javascript" src="../res/js/bootstrap.js"></script>
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
            <p>我的组件 (10个)</p>
            <hr/>
            <div class="compInn"></div>
            <div class="compInn"></div>
            <div class="compInn"></div>
            <div class="compInn"></div>
            <div class="compInn"></div>
            <div class="compInn"></div>
            <div class="compInn"></div>
            <div class="compInn"></div>
            <div class="compInn"></div>
            <div class="compInn"></div>
            <p>&nbsp;</p>
        </div>
    </div>
</div>
</body>
</html>
