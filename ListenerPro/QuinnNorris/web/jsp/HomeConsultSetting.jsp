<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/10/11
  Time: 下午10:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心——心理预约</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/public.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/navBar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/homePageBar.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/res/css/homeConsultSetting.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/navBar.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/homePageBar.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/res/js/bootstrap.js"></script>

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
            <p>专家预约</p>
            <hr/>
            <div class="exp">
                <div class="expb">
                    <div class="timeplace">
                        <p class="number">预约编号: 201711272839472</p>
                        <p class="time">时间: 2017-11-27</p>
                        <p class="place">地点: 上海华东师范大学中山北路</p>
                    </div>
                    <div class="expnaming">
                        <p><span class="explevel">一级专家</span>
                            <span class="expname"><b>张三</b></span></p>
                        <p class="goingtime">进行时间: 14：00 - 15：00</p>
                    </div>
                    <div class="consultsta">
                        <p class="state">预约情况：未开始</p>
                        <button type="button" class="btn btn-success btuCre" data-toggle="modal"
                                data-target=".bs-example-modal">查看详细
                        </button>
                    </div>
                </div>
            </div>
            <div class="exp">
                <div class="expb">
                    <div class="timeplace">
                        <p class="number">预约编号: 201711272839472</p>
                        <p class="time">时间: 2017-11-27</p>
                        <p class="place">地点: 上海华东师范大学中山北路</p>
                    </div>
                    <div class="expnaming">
                        <p><span class="explevel">一级专家</span>
                            <span class="expname"><b>张三</b></span></p>
                        <p class="goingtime">进行时间: 14：00 - 15：00</p>
                    </div>
                    <div class="consultsta">
                        <p class="state">预约情况：未开始</p>
                        <button type="button" class="btn btn-success btuCre" data-toggle="modal"
                                data-target=".bs-example-modal">查看详细
                        </button>
                    </div>
                </div>
            </div>
            <div class="exp">
                <div class="expb">
                    <div class="timeplace">
                        <p class="number">预约编号: 201711272839472</p>
                        <p class="time">时间: 2017-11-27</p>
                        <p class="place">地点: 上海华东师范大学中山北路</p>
                    </div>
                    <div class="expnaming">
                        <p><span class="explevel">一级专家</span>
                            <span class="expname"><b>张三</b></span></p>
                        <p class="goingtime">进行时间: 14：00 - 15：00</p>
                    </div>
                    <div class="consultsta">
                        <p class="state">预约情况：未开始</p>
                        <button type="button" class="btn btn-success btuCre" data-toggle="modal"
                                data-target=".bs-example-modal">查看详细
                        </button>
                    </div>
                </div>
            </div>
            <div class="exp">
                <div class="expb">
                    <div class="timeplace">
                        <p class="number">预约编号: 201711272839472</p>
                        <p class="time">时间: 2017-11-27</p>
                        <p class="place">地点: 上海华东师范大学中山北路</p>
                    </div>
                    <div class="expnaming">
                        <p><span class="explevel">一级专家</span>
                            <span class="expname"><b>张三</b></span></p>
                        <p class="goingtime">进行时间: 14：00 - 15：00</p>
                    </div>
                    <div class="consultsta">
                        <p class="state">预约情况：未开始</p>
                        <button type="button" class="btn btn-success btuCre" data-toggle="modal"
                                data-target=".bs-example-modal">查看详细
                        </button>
                    </div>
                </div>
            </div>
            <div class="exp">
                <div class="expb">
                    <div class="timeplace">
                        <p class="number">预约编号: 201711272839472</p>
                        <p class="time">时间: 2017-11-27</p>
                        <p class="place">地点: 上海华东师范大学中山北路</p>
                    </div>
                    <div class="expnaming">
                        <p><span class="explevel">一级专家</span>
                            <span class="expname"><b>张三</b></span></p>
                        <p class="goingtime">进行时间: 14：00 - 15：00</p>
                    </div>
                    <div class="consultsta">
                        <p class="state">预约情况：未开始</p>
                        <button type="button" class="btn btn-success btuCre" data-toggle="modal"
                                data-target=".bs-example-modal">查看详细
                        </button>
                    </div>
                </div>
            </div>

            <div class="paging">
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>

        </div>
    </div>
</div>
</body>
</html>