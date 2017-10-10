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
<%--创建新组件的模态框--%>
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">创建属于自己的新组件</h4>
            </div>
            <div class="modal-body">
                <p></p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-success">保存并退出</button>
            </div>
        </div>
    </div>
</div>



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
            <div>
                <p>我的组件 (12个)</p>
                <hr/>
            </div>
            <div class="compsInn">
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
                <div class="compInn"><div class="using but"><p>启用</p></div><div class="stoping but"><p>停用</p></div><div class="delete but"><p>删除</p></div></div>
            </div>
        </div>
        <div class="thrInn">
            <div>
                <p>创建组件</p>
                <hr/>
            </div>
            <div class="spac">
                <button type="button" class="btn btn-success btuCre" data-toggle="modal" data-target=".bs-example-modal-lg">单击此处，开始创建属于自己的组件</button>
            </div>

        </div>
    </div>
</div>
</body>
</html>
