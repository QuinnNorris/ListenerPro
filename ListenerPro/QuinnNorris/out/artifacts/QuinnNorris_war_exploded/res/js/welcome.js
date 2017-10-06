$(".info-commit").click(function () {

    var result = "true";
    var phone = $("#phone").val();
    var pw = hex_md5($("#pw").val());
    var pw_confirm = hex_md5($("#pw_confirm").val());
    var verification = $("#verification").val();

    if (phone.length != 11) {
        //手机号码有误
        result = "false";
        $("#email").parent().css({"border": ".01em solid #f75555"});
        $("#email").parent().next().css({"opacity": "100"});
    }
    if ($("#pw").val().length <= 6) {
        //密码少于6位
        result = "false";
        $("#pw").parent().css({"border": ".01em solid #f75555"});
        $("#pw").parent().next().css({"opacity": "100"});
    }
    if (pw != pw_confirm) {
        //两次密码输入不同
        result = "false";
        $("#pw_confirm").parent().css({"border": ".01em solid #f75555"});
        $("#pw_confirm").parent().next().css({"opacity": "100"});
    }
    if (result == "true") {
        $.ajax({
            type: "post",//请求方式
            contentType: 'application/x-www-form-urlencoded',
            url: "/RegisterPhonePW",
            timeout: 800000,//超时时间：800秒
            dataType: "json",
            data: {
                "phone": phone,
                "pw": pw
            },
            //请求成功后的回调函数 data为json格式
            success: function (data) {
                if (data.errorCode == "0001")
                    window.location.href = "/homePage/" + data.beanObject.phone;
                else;
                    //用户手机号已经注册，请前往登陆
            },
            error: function () {
                alert("请求出错!");
            }
        });

    }
});