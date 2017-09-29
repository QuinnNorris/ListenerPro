<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/9/7
  Time: 下午12:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Blog</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/bootstrap.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/blog/assets/css/main.css"/>
    <!--[if lte IE 8]>
    <script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <!--[if lte IE 8]>
    <link rel="stylesheet" href="assets/css/ie8.css"/><![endif]-->
    <!-- Scripts -->
    <script src="${pageContext.request.contextPath}/res/blog/assets/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/blog/assets/js/jquery.scrollzer.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/blog/assets/js/jquery.scrolly.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/blog/assets/js/skel.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/blog/assets/js/util.js"></script>
    <!--[if lte IE 8]>
    <script src="${pageContext.request.contextPath}/res/blog/assets/js/ie/respond.min.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath}/res/blog/assets/js/main.js"></script>
</head>
<body>
<div style="position:absolute; width: 100%;/* left:0px; top:0px; */z-index:999999;">
    <jsp:include page="NavigationBar.jsp"/>
</div>

<section id="header">
    <header>
        <div style="margin-top: 50px;">
        <span class="image avatar">
            <a href="#"><img src="${pageContext.request.contextPath}/res/blog/images/avatar.jpg" alt="avatar"/></a>
        </span>
        </div>
        <h1 id="logo"><a href="#">${nickname}</a></h1>
        <p>${note}</p>
    </header>
    <nav id="nav">
        <ul>
            <li><p>Hits: &nbsp;&nbsp;&nbsp; ${hits} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Score: &nbsp;&nbsp;&nbsp;${score}</li>
            <li><p>Articles:&nbsp;&nbsp;&nbsp; ${articles} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fans: &nbsp;&nbsp;&nbsp; ${fans}</p></li>
        </ul>
    </nav>
    <footer>
        <ul class="icons">
            <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="icon fa-weixin"><span class="label">Instagram</span></a></li>
            <li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
            <li><a href="#" class="icon fa-linkedin"><span class="label">Email</span></a></li>
        </ul>
    </footer>
</section>

<div id="wrapper">

    <div id="main">

        <%--<section class="one" id="first">
            <div class="container">
                <h2><a href="#">${artList.get(0).name}</a></h2>
                <b>Author：</b> ${nickname} <b>&nbsp;&nbsp;CreateTime：</b>${artList.get(0).createtimestr} <b>&nbsp;&nbsp;Readed：</b>${artList.get(0).readed}
                times
                <hr/>
                <p>Faucibus sed lobortis aliquam lorem blandit. Lorem eu nunc metus col. Commodo id in arcu ante
                    lorem
                    ipsum sed accumsan erat praesent faucibus commodo ac mi lacus. Adipiscing mi ac commodo. Vis
                    aliquet
                    tortor ultricies non ante erat nunc integer eu ante ornare amet commetus vestibulum blandit
                    integer
                    in curae ac faucibus integer non. Adipiscing cubilia elementum.</p>
            </div>
        </section>--%>
        <section class="one">
            <div class="container">
                <h2><a href="#">JAVA hello,world!</a></h2>
                <b>Author：</b> QuanNingZhen <b>&nbsp;&nbsp;CreateTime：</b>2017-9-7 14:31 <b>&nbsp;&nbsp;Readed：</b>323
                times
                <hr/>
                <p>Faucibus sed lobortis aliquam lorem blandit. Lorem eu nunc metus col. Commodo id in arcu ante
                    lorem
                    ipsum sed accumsan erat praesent faucibus commodo ac mi lacus. Adipiscing mi ac commodo. Vis
                    aliquet
                    tortor ultricies non ante erat nunc integer eu ante ornare amet commetus vestibulum blandit
                    integer
                    in curae ac faucibus integer non. Adipiscing cubilia elementum.</p>
            </div>
        </section>
        <section class="one">
            <div class="container">
                <h2><a href="#">JAVA hello,world!</a></h2>
                <b>Author：</b> QuanNingZhen <b>&nbsp;&nbsp;CreateTime：</b>2017-9-7 14:31 <b>&nbsp;&nbsp;Readed：</b>323
                times
                <hr/>
                <p>Faucibus sed lobortis aliquam lorem blandit. Lorem eu nunc metus col. Commodo id in arcu ante
                    lorem
                    ipsum sed accumsan erat praesent faucibus commodo ac mi lacus. Adipiscing mi ac commodo. Vis
                    aliquet
                    tortor ultricies non ante erat nunc integer eu ante ornare amet commetus vestibulum blandit
                    integer
                    in curae ac faucibus integer non. Adipiscing cubilia elementum.</p>
            </div>
        </section>


    </div>

</div>

<section id="footer">
    <div class="container">
        <ul class="copyright">
            <li>&copy; company&nbsp;&nbsp;&nbsp;&nbsp;www.quinnnorris.com&nbsp;&nbsp;&nbsp;&nbsp;Design.</li>
            </li>
        </ul>
    </div>
</section>

</div>

</body>
</html>
