<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/10/9
  Time: 下午7:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div>
    <ul id="nav">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <li><a href="/homePage/baseSetting/<%=session.getAttribute("phone")%>">基本设置</a></li>&nbsp;&nbsp;
        <li><a href="/homePage/componentSetting/<%=session.getAttribute("phone")%>">组件管理</a></li>&nbsp;&nbsp;
        <li><a href="/homePage/labelSetting/<%=session.getAttribute("phone")%>">标签匹配</a></li>&nbsp;&nbsp;
        <li><a href="/homePage/consultSetting/<%=session.getAttribute("phone")%>">心理预约</a></li>&nbsp;&nbsp;
        <li><a href="#">测试结果</a></li>&nbsp;&nbsp;
        <li><a href="#">专家管理</a></li>
    </ul>
</div>
