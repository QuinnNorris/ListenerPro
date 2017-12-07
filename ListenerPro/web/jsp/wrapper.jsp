<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/11/12
  Time: 下午1:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar liwrapper" data-background-color="white" data-active-color="danger">

    <!--
        Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
        Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
    -->

    <div class="sidebar-wrapper">
        <div class="logo">
            <a href="#" class="simple-text">
                Listener 倾听者
            </a>
            <div class="liheadp">
                <img src="../res/head/infos.jpg" class="img-circle">
            </div>
        </div>
        <input type="hidden" id="actives" value="${active}"/>
        <ul class="nav">
            <li id="secretG">
                <a href="/secretGarden">
                    <i class="ti-panel"></i>
                    <p>秘密花园</p>
                </a>
            </li>
            <li id="listenerP">
                <a href="/listener">
                    <i class="ti-user"></i>
                    <p>倾听者</p>
                </a>
            </li>
            <li >
                <a href="">
                    <i class="ti-view-list-alt"></i>
                    <p>治愈屋</p>
                </a>
            </li>
            <li id="healingP">
                <a href="/healing">
                    <i class="ti-text"></i>
                    <p>飞鸟集</p>
                </a>
            </li>
            <li id="repairP">
                <a href="/repair">
                    <i class="ti-pencil-alt2"></i>
                    <p>修补屋</p>
                </a>
            </li>
            <li id="settingP">
                <a href="/setting">
                    <i class="ti-map"></i>
                    <p>万事屋</p>
                </a>
            </li>
            <li>
                <a href="notifications.html">
                    <i class="ti-bell"></i>
                    <p>马车信箱</p>
                </a>
            </li>
        </ul>
    </div>
</div>
<script>
    $(function () {
      var act = $("#actives").val();
      $("#"+act).attr('class','active');
    })
</script>
