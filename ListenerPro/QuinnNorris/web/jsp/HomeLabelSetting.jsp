<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/10/10
  Time: 下午5:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心——标签匹配</title>
    <link rel="stylesheet" type="text/css" href="../res/css/public.css">
    <link rel="stylesheet" type="text/css" href="../res/css/navBar.css">
    <link rel="stylesheet" type="text/css" href="../res/css/homePageBar.css">
    <link rel="stylesheet" type="text/css" href="../res/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../res/css/homeLabelSetting.css">
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
            <p>你的标签</p>
            <hr/>
            <div class="labels">
                <div class="labeltitle"><p>城市</p></div>
                <div class="yourlabels">
                    <p>上海</p>
                </div>
                <div class="labeltitle"><p>性别</p></div>
                <div class="yourlabels">
                    <p>男</p>
                </div>
                <div class="labeltitle"><p>年龄</p></div>
                <div class="yourlabels">
                    <p>21</p>
                </div>
                <div class="labeltitle"><p>职业</p></div>
                <div class="yourlabels">
                    <p>本科生</p>
                </div>
            </div>
        </div>
        <div class="thrInn">
            <p>个性标签</p>
            <hr/>
            <div class="selflabels">
                <div class="yourlabelself">
                    <p>180+</p>
                </div>
                <div class="yourlabelself">
                    <p>灌篮高手</p>
                </div>
                <div class="yourlabelself">
                    <p>外向</p>
                </div>
                <div class="yourlabelself">
                    <p>动漫</p>
                </div>
                <div class="yourlabelself">
                    <p>喜欢接受新鲜事物</p>
                </div>
            </div>
        </div>
        <div class="thrInn">
            <p>你希望匹配对象的标签</p>
            <hr/>
            <div class="labels">
                <div class="labeltitle"><p>城市</p></div>
                <div class="yourlabels">
                    <p>北京</p>
                </div>
                <div class="labeltitle"><p>性别</p></div>
                <div class="yourlabels">
                    <p>男</p>
                </div>
                <div class="labeltitle"><p>年龄</p></div>
                <div class="yourlabels">
                    <p>18 - 20</p>
                </div>
                <div class="labeltitle"><p>职业</p></div>
                <div class="yourlabels">
                    <p>在校生(研究生)</p>
                </div>
            </div>
        </div>
        <div class="thrInn1">
            <p>你的评星</p>
            <hr/>
            <div class="starts">
                4.8
            </div>
        </div>
    </div>
</div>
</body>
</html>
