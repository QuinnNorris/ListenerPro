<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/9/4
  Time: 下午1:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>

    #navbar {
        color: #888;
        font-family: "Lato", sans-serif;
    }

    a {
        border-bottom: solid 1px #e4e4e4;
    }

    a:hover {
        border-bottom-color: transparent;
        color: #ffffff !important;
    }

</style>
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" id="navbar">
    <div class="container-fluid">

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"
        ">
        <ul class="nav navbar-nav ">
            <li class="active"><a href="${pageContext.request.contextPath }/jsp/HomePage.jsp">Home Page<span
                    class="sr-only">(current)</span></a></li>
            <li><a href="#">About Us</a></li>
            <%--<%! String nickname;%>
            <%
                if (session.getAttribute("nickname") != null) {
                    nickname = session.getAttribute("nickname").toString();
                }
            %>--%>
            <li><a id="blog_href" href="javascript:;" onclick="go_blog()">Blog</a>
            </li>

            <li><a href="#">Services</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="QuinnNorris">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <li><a href="${pageContext.request.contextPath }/jsp/SignUp.jsp">Sign Up</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<script>
    function go_blog() {
        var nickname = '<%=session.getAttribute("nickname")%>';
        //alert(nickname);
        if (nickname == "null") {
            alert("1")
            window.location.href = "${pageContext.request.contextPath}/jsp/SignUp.jsp";
        }
        else {
            <%request.setAttribute("nickname",session.getAttribute("nickname"));session.setAttribute("pageNow",1);%>
            window.location.href = "${pageContext.request.contextPath}/BlogPage/" + nickname;
        }
    }
</script>
<%--
<script>
    function toLogin() {
        /*alert(window.document.location.pathname);*/
        if(window.location.pathname == "/" || window.location.pathname == "/jsp/HomePage.jsp" /*|| window.location.pathname == ""*/) {
            getLoginReg();
            /*return;*/
        }
        else
        window.location.href="${pageContext.request.contextPath }/jsp/HomePage.jsp";
        *//*alert(window.location.pathname);*/
        /*window.location.href=""*/
    }
</script>--%>