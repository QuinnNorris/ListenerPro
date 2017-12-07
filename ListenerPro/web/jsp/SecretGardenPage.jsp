<%--
  Created by IntelliJ IDEA.
  User: quinn_norris
  Date: 2017/11/26
  Time: 下午9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <link rel="apple-touch-icon" sizes="76x76" href="../res/img/apple-icon.png">
    <link rel="icon" type="image/png" sizes="96x96" href="../res/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>

    <title>Listener——秘密花园</title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport'/>
    <meta name="viewport" content="width=device-width"/>

    <script src="${pageContext.request.contextPath}/res/js/jquery-1.11.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/chartist.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/bootstrap-notify.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/paper-dashboard.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/demo.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/md5.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/jquery.select.js"></script>
    <script src="${pageContext.request.contextPath}/res/js/editor2.min.js"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/res/css/animate.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/res/css/paper-dashboard.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/res/css/demo.css" rel="stylesheet"/>
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/res/css/themify-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/css/licss.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
    <link href="${pageContext.request.contextPath}/res/css/froala_editor.css" rel="stylesheet" >

</head>
<body>

<div class="wrapper">

    <jsp:include page="wrapper.jsp"/>

    <div class="main-panel">
        <jsp:include page="topbar.jsp"/>

        <input type="hidden" id="" value=""/>

        <div class="content">
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card li6cards">
                                <div class="row">
                                    <div class="col-sm-4 col-md-4">
                                        <div class="licomps" style="height: 200px">
                                            <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                <div style="height: 40px;">
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">每日感悟</span>
                                                </div>
                                                <textarea style="font-size: 19px;margin-top: 5px;height: 153px;width: 307px;border: 0px;
                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-4">
                                        <div class="licomps" style="height: 200px">
                                            <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                <div style="height: 40px;">
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">每日感悟</span>
                                                </div>
                                                <textarea style="font-size: 19px;margin-top: 5px;height: 153px;width: 307px;border: 0px;
                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-4">
                                        <div class="licomps" style="height: 200px">
                                            <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                <div style="height: 40px;">
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">每日感悟</span>
                                                </div>
                                                <textarea style="font-size: 19px;margin-top: 5px;height: 153px;width: 307px;border: 0px;
                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-4 col-md-4">
                                        <div class="licomps" style="height: 200px">
                                            <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                <div style="height: 40px;">
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">每日感悟</span>
                                                </div>
                                                <textarea style="font-size: 19px;margin-top: 5px;height: 153px;width: 307px;border: 0px;
                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-4">
                                        <div class="licomps" style="height: 200px">
                                            <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                <div style="height: 40px;">
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">每日感悟</span>
                                                </div>
                                                <textarea style="font-size: 19px;margin-top: 5px;height: 153px;width: 307px;border: 0px;
                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-4 col-md-4">
                                        <div class="licomps" style="height: 200px">
                                            <div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: white;">
                                                <div style="height: 40px;">
                                                        <span class="title"
                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">每日感悟</span>
                                                </div>
                                                <textarea style="font-size: 19px;margin-top: 5px;height: 153px;width: 307px;border: 0px;
                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color: #FFFFFF;"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">

                                <section id="editor">
                                    <div id='edit' style="margin-top: 30px;">

                                    </div>
                                </section>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="footerbar.jsp"/>

        </div>
    </div>

</body>
<script src="${pageContext.request.contextPath}/res/js/froala_editor.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/plugins/tables.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/plugins/lists.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/plugins/colors.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/plugins/media_manager.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/plugins/font_family.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/plugins/font_size.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/plugins/block_styles.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/plugins/video.min.js"></script>

<!--[if lt IE 9]>
  <script src="${pageContext.request.contextPath}/res/js/froala_editor_ie8.min.js"></script>
<![endif]-->
<script>
  $(function(){
      $('#edit').editable({inlineMode: false, alwaysBlank: true})
  });
</script>
</html>
