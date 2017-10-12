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

    <%--关于颜色选择器控件--%>
    <script type="text/javascript" src="../res/js/colpick.js"></script>
    <script type="text/javascript" src="../res/js/plugin.js"></script>
    <link rel="stylesheet" href="../res/css/colpick.css" type="text/css"/>

</head>
<body>

<%--创建新组件的模态框--%>
<div class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">创建属于自己的新组件</h4>
            </div>
            <div class="modal-body">
                <div class="showBroder">
                    <div class="leftBody">
                        <div class="compAdd selectComp">
                            <p>类型</p>
                            <hr/>
                            <div class="btn-group btn-block" data-toggle="buttons">
                                <label class="btn btn-success active">
                                    <input type="radio" name="options" id="option1" autocomplete="off" checked> 空白
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="option2" autocomplete="off"> 标题
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="option3" autocomplete="off"> 长度条
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="option4" autocomplete="off"> 地点
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="option5" autocomplete="off"> 人物
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="option6" autocomplete="off"> 天气
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="option7" autocomplete="off"> 心情
                                </label>
                            </div>
                        </div>
                        <div class="compAdd innertext">
                            <p>标题</p>
                            <hr/>
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <div class="col-sm-10">
                                        <input id="text" name="text" type="text" class="form-control inputting"
                                               placeholder="">
                                        <span id="helpBlock2" class="help-block">组件标签名称过长</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="compAdd1 color">
                            <p>颜色</p>
                            <hr/>
                            <div class="btn-group btn-block" data-toggle="buttons">
                                <label class="btn btn-default active" style="background-color: #ffffff;">
                                    <input type="radio" name="options" id="optionC1"
                                           autocomplete="off" checked> 纯白
                                </label>
                                <label class="btn btn-default" style="background-color: #5bba27;">
                                    <input type="radio" name="options" id="optionC2"
                                           autocomplete="off"> 浅草
                                </label>
                                <label class="btn btn-default" style="background-color: #dca7a7;">
                                    <input type="radio" name="options" id="optionC3"
                                           autocomplete="off"> 桃粉
                                </label>
                                <label class="btn btn-default" style="background-color: #d9534f;">
                                    <input type="radio" name="options" id="optionC4"
                                           autocomplete="off"> 玫瑰
                                </label>
                                <label class="btn btn-default" style="background-color: #0FB9EF;">
                                    <input type="radio" name="options" id="optionC5"
                                           autocomplete="off"> 天空
                                </label>
                                <button type="radio" class="btn btn-success" id="picker1">使用颜色选择器</button>

                            </div>
                        </div>
                        <div class="compAdd length">
                            <p>长度条段数</p>
                            <hr/>
                            <div class="btn-group btn-block" data-toggle="buttons">
                                <label class="btn btn-success active">
                                    <input type="radio" name="options" id="optionL1" autocomplete="off" checked> 1
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="optionL2" autocomplete="off"> 2
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="optionL3" autocomplete="off"> 3
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="optionL4" autocomplete="off"> 4
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="optionL5" autocomplete="off"> 5
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="optionL6" autocomplete="off"> 6
                                </label>
                                <label class="btn btn-success">
                                    <input type="radio" name="options" id="optionL7" autocomplete="off"> 7
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="showRightBorder">
                    <div class="rightBody">
                        <div class="compAdd selectComp">
                            <p>预览效果</p>
                            <hr/>
                            <div class="compInnINMod">
                            </div>
                        </div>
                        <div class="compAdd2 selectComp">
                            <p>为你的组件起名</p>
                            <hr/>
                            <div class="form-group">
                                <div class="col-sm-10">
                                    <input id="text" name="text" type="text" class="form-control inputting"
                                           placeholder="">
                                    <span id="helpBlock2" class="help-block">组件名称过长</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">系统组件1</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">系统组件2</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">系统组件3</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">系统组件4</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">系统组件5</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">系统组件6</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">系统组件7</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">无</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">无</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">无</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">无</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
                <div class="compInn">
                    <div class="naming buttop"><p class="toping">无</p></div>
                    <div class="using but"><p>启用</p></div>
                    <div class="stoping but"><p>停用</p></div>
                    <div class="delete but"><p>删除</p></div>
                </div>
            </div>
        </div>
        <div class="thrInn">
            <div>
                <p>创建组件</p>
                <hr/>
            </div>
            <div class="spac">
                <button type="button" class="btn btn-success btuCre" data-toggle="modal"
                        data-target=".bs-example-modal-lg">单击此处，开始创建属于自己的组件
                </button>
            </div>

        </div>
    </div>
</div>
</body>
</html>
