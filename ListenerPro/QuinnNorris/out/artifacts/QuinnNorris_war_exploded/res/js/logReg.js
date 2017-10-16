function sign_up() {
    var pw = hex_md5($("#pw").val());
    var re_pw = hex_md5($("#re_pw").val());
    var phone = $("#phone").val();
    if (pw != re_pw) {
        if (typeof($("#tip").attr("hidden")) != "undefined") $("#tip").removeAttr("hidden");
        $("#tip").text("两次密码不一致");
    } else if ($("#pw").val().length < 6) {
        if (typeof($("#tip").attr("hidden")) != "undefined") $("#tip").removeAttr("hidden");
        $("#tip").text("密码过短，不能少于6位");
    } else if ($("#pw").val().length > 20) {
        if (typeof($("#tip").attr("hidden")) != "undefined") $("#tip").removeAttr("hidden");
        $("#tip").text("密码过长，不能超过20位");
    } else if (phone.length != 11) {
        if (typeof($("#tip").attr("hidden")) != "undefined") $("#tip").removeAttr("hidden");
        $("#tip").text("手机格式错误");
    }
    else {
        $.ajax({
            url: '/RegisterPhonePW',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {
                phone: phone,
                pw: pw
            },
            dataType: "json",
            success: function (data) {
                if (data.errorCode == "1001") {
                    if (typeof($("#tip").attr("hidden")) != "undefined") $("#tip").removeAttr("hidden");
                    $("#tip").text("该手机号码已经注册请登陆");
                } else if (data.errorCode == "0001")
                    window.location.href = "/homePage/" + data.beanObject.phone + "/baseSetting"
            }
        });
    }
}

function sign_login() {
    var pw = hex_md5($("#logpw").val());
    var phone = $("#logphone").val();
    $.ajax({
        url: '/LoginPhonePW',
        type: 'get',
        contentType: 'application/x-www-form-urlencoded',
        data: {
            phone: phone,
            pw: pw
        },
        dataType: "json",
        success: function (data) {
            if (data.errorCode == "1001") {
                if (typeof($("#tip1").attr("hidden")) != "undefined") $("#tip1").removeAttr("hidden");
                $("#tip1").text("该手机号码尚未注册请注册");
            } else if (data.errorCode == "0001")
                window.location.href = "/homePage/baseSetting/"+ data.beanObject.phone;
        }
    });
}

function for_pw() {
    var pw = hex_md5($("#fopw").val());
    var re_pw = hex_md5($("#fore_pw").val());
    var phone = $("#fophone").val();
    if (pw != re_pw) {
        if (typeof($("#tip2").attr("hidden")) != "undefined") $("#tip2").removeAttr("hidden");
        $("#tip2").text("两次密码不一致");
    } else if ($("#fopw").val().length < 6) {
        if (typeof($("#tip2").attr("hidden")) != "undefined") $("#tip2").removeAttr("hidden");
        $("#tip2").text("密码过短，不能少于6位");
    } else if ($("#fopw").val().length > 20) {
        if (typeof($("#tip2").attr("hidden")) != "undefined") $("#tip2").removeAttr("hidden");
        $("#tip2").text("密码过长，不能超过20位");
    } else if (phone.length != 11) {
        if (typeof($("#tip2").attr("hidden")) != "undefined") $("#tip2").removeAttr("hidden");
        $("#tip2").text("手机格式错误");
    }
    else {
        $.ajax({
            url: '/ForgetPhonePW',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {
                phone: phone,
                pw: pw
            },
            dataType: "json",
            success: function (data) {
                if (data.errorCode == "1001") {
                    if (typeof($("#tip2").attr("hidden")) != "undefined") $("#tip2").removeAttr("hidden");
                    $("#tip2").text("该手机尚未注册请注册");
                } else if (data.errorCode == "0001")
                    window.location.href = "/homePage/" + data.beanObject.phone + "/baseSetting"
            }
        });
    }
}
