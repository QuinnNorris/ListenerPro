<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/10/9
  Time: 下午5:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="middle">
    <div class="hidLeftMenu">
        <img class="openMenu" src="${pageContext.request.contextPath}/res/head/userheadp1.jpg"/>
        <p class="hidTitle"></p>
    </div>
    <div class="leftMenu">
        <div class="topMenu">
            <%--<img class="changeMenu" src="img/shouqicaidan.png" id="hidIcon"/>--%>
            <img class="img-circle headpMenu" src="${pageContext.request.contextPath}/res/head/userheadp1.jpg" id="headpMenu" height="150px" width="150px"/>
            <p class="menuTitle"></p>
        </div>
        <div class="menu_list">
            <ul>
                <li class="lis">
                    <p class="fuMenu">晚上好，QuinnNorris</p>
                    <div class="div1">
                        <p class="zcd" id="zcd1"><a href="#">秘密花园</a></p>
                        <p class="zcd" id="zcd2"><a href="#">倾听者</a></p>
                        <p class="zcd" id="zcd3"><a href="#">治愈屋</a></p>
                        <p class="zcd" id="zcd4"><a href="#">飞鸟集</a></p>
                        <p class="zcd" id="zcd5"><a href="#">修补屋</a></p>
                        <p class="zcd" id="zcd6"><a href="/homePage/baseSetting/<%=session.getAttribute("phone")%>">万事屋</a></p>
                        <p class="zcd" id="zcd7"><a href="#">马车邮箱</a></p>
                        <p class="zcd" id="zcd8"><a href="#">地球仪</a></p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>
