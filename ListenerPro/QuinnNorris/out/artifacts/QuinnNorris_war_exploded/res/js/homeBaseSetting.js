function updateUsername() {
    var username = $("#username").val();
    var usernameIn = /^[0-9A-Za-z_]+$/;
    if (!usernameIn.test(username)) {
        if (typeof($("#helpBlockuser").attr("hidden")) != "undefined") $("#helpBlockuser").removeAttr("hidden");
        $("#helpBlockuser").text("该用户名中存在不可使用字符");
    }
    else {
        $.ajax({
            url: '/UpdateUserName',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {username: username},
            dataType: "json",
            success: function (data) {
                location.reload(true);
            }
        });
    }
}

function isEmail(str) {
    var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
    return reg.test(str);
}

function updateEmail() {
    var email = $("#email").val();
    var usernameIn = /^[0-9A-Za-z_]+$/;
    if (!isEmail(email)) {
        if (typeof($("#helpBlockemail").attr("hidden")) != "undefined") $("#helpBlockemail").removeAttr("hidden");
        $("#helpBlockemail").text("邮箱格式有误");
    }
    else {
        $.ajax({
            url: '/AddEmailRequest',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {email: email},
            dataType: "json",
            success: function (data) {
                if (data.errorCode == "1001") {
                    if (typeof($("#helpBlockemail").attr("hidden")) != "undefined") $("#helpBlockemail").removeAttr("hidden");
                    $("#helpBlockemail").text("发送邮件发生错误，请稍后重试");
                } else {
                    if (typeof($("#helpBlockemail").attr("hidden")) != "undefined") $("#helpBlockemail").removeAttr("hidden");
                    $("#helpBlockemail").text("发送邮件成功，请登陆邮箱并完成绑定");
                }
            }
        });
    }
}

function updatePW() {
    var pw = $("#pw").val();
    var re_pw = $("#re_pw").val();
    if (pw != re_pw) {
        if (typeof($("#helpBlockpw").attr("hidden")) != "undefined") $("#helpBlockpw").removeAttr("hidden");
        $("#helpBlockpw").text("两次密码不一致");
    } else if ($("#pw").val().length < 6) {
        if (typeof($("#helpBlockpw").attr("hidden")) != "undefined") $("#helpBlockpw").removeAttr("hidden");
        $("#helpBlockpw").text("密码过短，不能少于6位");
    } else if ($("#pw").val().length > 20) {
        if (typeof($("#helpBlockpw").attr("hidden")) != "undefined") $("#helpBlockpw").removeAttr("hidden");
        $("#helpBlockpw").text("密码过长，不能超过20位");
    }
    else {
        $.ajax({
            url: '/UpdateUserPW',
            type: 'post',
            contentType: 'application/x-www-form-urlencoded',
            data: {pw: hex_md5(pw)},
            dataType: "json",
            success: function (data) {
                location.reload(true);
            }
        });
    }
}

function previewImage(file) {
    window.getFiles = file.files[0];
}

function updateHeadp() {
    var headp = $("#avatarInput").val();
    var formData = new FormData();
    formData.append("headFile", window.getFiles);
    alert(window.getFiles);
    $.ajax({
        type: "post",//请求方式
        contentType:false,
        processData:false,
        /*contentType: 'application/x-www-form-urlencoded',*/
        url: "/UpdateUserHeadp",
        timeout: 800000,//超时时间：800秒
        dataType: "json",
        data: formData,
        success: function (data) {
            location.reload(true);
        }
    });
}
