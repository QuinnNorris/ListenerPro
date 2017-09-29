<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/9/4
  Time: 下午2:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/bootstrap.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/res/titleCom/css/style.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/res/titleCom/css/style-wide.css"/>

    <!--[if lte IE 8]>
    <script src="${pageContext.request.contextPath }/res/titleCom/css/ie/html5shiv.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath }/res/titleCom/js/skel.min.js"></script>
    <script src="${pageContext.request.contextPath }/res/titleCom/js/init.js"></script>
    <noscript>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/res/skel.css"/>
        <link rel="stylesheet" href="${pageContext.request.contextPath }/res/style-noscript.css"/>
    </noscript>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/res/titleCom/css/ie/v9.css"/><![endif]-->
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/res/titleCom/css/ie/v8.css"/><![endif]-->

    <title>Quinn Norris</title>
</head>

<body class="loading">
<div style="position:absolute; width: 100%;/* left:0px; top:0px; */z-index:999999;">
<jsp:include page="NavigationBar.jsp"/>
</div>

<div id="wrapper">
    <div id="bg"></div>
    <div id="overlay"></div>
    <div id="main">

        <!-- Header -->
        <header id="header">
            <h1>Quinn Norris</h1>
            <p>Personal space&nbsp;&nbsp;&bull;&nbsp;&nbsp; Blog &nbsp;&nbsp;&bull;&nbsp;&nbsp; Group discussion</p>
        </header>

        <!-- Footer -->
        <footer id="footer">
            <span class="copyright">&copy; company&nbsp;&nbsp;&nbsp;&nbsp;www.quinnnorris.com&nbsp;&nbsp;&nbsp;&nbsp;Design.</span>
        </footer>

    </div>
</div>
</body>
<script>
    function getLoginReg() {
        alert("aa");
    }
</script>
</html>
