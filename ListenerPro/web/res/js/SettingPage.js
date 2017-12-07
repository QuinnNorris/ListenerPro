var com_type = $('#com_type').val().substr(1, $('#com_type').val().length - 2).split(',');
var com_name = $('#com_name').val().substr(1, $('#com_name').val().length - 2).split(',');
var lengther = $('#length').val().substr(1, $('#length').val().length - 2).split(',');
var color = $('#color').val().substr(1, $('#color').val().length - 2).split(',');
var compinuse = $('#compinuse').val().substr(1, $('#compinuse').val().length - 2).split(',');
var compsize = $('#compsize').val();
var pcomid = $('#comid').val().substr(1, $('#comid').val().length - 2).split(',');

$(function () {
    $('select.select').select();
    $(".select_ul").css('z-index', '999');
    $(".select_ul").css('overflow-y', 'scroll');
    var selul_chi = $(".select_ul").children();
    for (var i = 0; i < selul_chi.length; i++)
        selul_chi.eq(i).css('list-style-type', 'none');

    var works = $('#works').val().substr(1, $('#works').val().length - 2).split(',');
    var citys = $('#citys').val().substr(1, $('#citys').val().length - 2).split(',');

    var ulworks = $('#thiswork').children().eq(2).children().eq(1).children();
    var now_work = $('#work').val();
    for (var i = 0; i < ulworks.length; i++) {
        ulworks.eq(i).html(works[i]);
        if (Number(now_work) == i + 1) {
            ulworks.parent().prev().html(works[i]);
            ulworks.eq(i).attr('class', 'cur');
        }
    }

    var now_city = $('#city').val();
    var ulcitys = $('#thiscity').children().eq(2).children().eq(1).children();
    for (var i = 0; i < ulcitys.length; i++) {
        ulcitys.eq(i).html(citys[i]);
        if (Number(now_city) == i + 1) {
            ulcitys.parent().prev().html(citys[i]);
            ulcitys.eq(i).attr('class', 'cur');
        }
    }

    var now_fwork = $('#fwork').val();
    var ficitys = $('#findwork').children().eq(1).children().eq(1).children();
    for (var i = 0; i < ficitys.length; i++) {
        ficitys.eq(i).html(works[i]);
        if (Number(now_fwork) == i + 1) {
            ficitys.parent().prev().html(works[i]);
            ficitys.eq(i).attr('class', 'cur');
        }
    }

    var now_fcity = $('#fcity').val();
    var ficitys = $('#findcity').children().eq(1).children().eq(1).children();
    for (var i = 0; i < ficitys.length; i++) {
        ficitys.eq(i).html(citys[i]);
        if (Number(now_fcity) == i + 1) {
            ficitys.parent().prev().html(citys[i]);
            ficitys.eq(i).attr('class', 'cur');
        }
    }

    updatecompshow();

});


function updatecompshow() {

    for (var x = 0; x < compsize; x++) {

        if (Number(compinuse[x]) == 1) {
            $('#option' + (x + 1) + '1').attr('checked', 'checked');
            $('#option' + (x + 1) + '1').parent().attr('class', 'btn btn-success active');
            $('#option' + (x + 1) + '2').removeAttr('checked');
            $('#option' + (x + 1) + '2').parent().attr('class', 'btn btn-primary');
            $('#option' + (x + 1) + '3').removeAttr('checked');
            $('#option' + (x + 1) + '3').parent().attr('class', 'btn btn-danger');
        }
        if (Number(compinuse[x]) == 2) {
            $('#option' + (x + 1) + '2').attr('checked', 'checked');
            $('#option' + (x + 1) + '2').parent().attr('class', 'btn btn-primary active');
            $('#option' + (x + 1) + '1').removeAttr('checked');
            $('#option' + (x + 1) + '1').parent().attr('class', 'btn btn-success');
            $('#option' + (x + 1) + '3').removeAttr('checked');
            $('#option' + (x + 1) + '3').parent().attr('class', 'btn btn-danger');
        }

        if (Number(compinuse[x]) != 3) {
            if (Number(com_type[x]) == 1) {
                $('#inshow' + (x + 1)).html(
                    '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: ' + color[x] + ';">\n' +
                    '                                                    <textarea\n' +
                    '                                                            style="font-size: 19px; margin: 0px; height: 196px; width: 307px; border: 0px;\n' +
                    '                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color[x] + ';"></textarea>\n' +
                    '                                                </div>'
                );
            }
            if (Number(com_type[x]) == 2) {
                $('#inshow' + (x + 1)).html(
                    '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color[x] + ';">\n' +
                    '                                                    <div style="height: 40px;">\n' +
                    '                                                        <span class="title"\n' +
                    '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + com_name[x] + '</span>\n' +
                    '                                                    </div>\n' +
                    '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 153px;width: 307px;border: 0px;\n' +
                    '                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color: ' + color[x] + ';"></textarea>\n' +
                    '                                                </div>'
                );
            }
            if (Number(com_type[x]) == 3) {
                var goin = '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: ' + color[x] + ';">\n' +
                    '                                                    <div>\n' +
                    '                                                        <span class="title"\n' +
                    '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + com_name[x] + '</span>\n' +
                    '                                                        <div>\n' +
                    '                                                            <span class="title ti-flag"\n' +
                    '                                                                  style="font-size: 25px;top: 12px;left: 3px;margin-left: 10px;position: relative;"></span>\n' +
                    '                                                            <div class="btn-group" data-toggle="buttons"\n' +
                    '                                                                 style="margin-top: 15px;margin-left: 15px;">\n' +
                    '                                                                <label class="btn btn-default"\n' +
                    '                                                                       style="width: 10px;height: 23px;">\n' +
                    '                                                                    <input type="checkbox" id="imlirun1"\n' +
                    '                                                                           autocomplete="off"\n' +
                    '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                    '                                                                </label>\n';
                if (lengther[x] >= 2) {
                    goin += '                                                                <label class="btn btn-default"\n' +
                        '                                                                       style="width: 10px;height: 23px;">\n' +
                        '                                                                    <input type="checkbox" id="imlirun2"\n' +
                        '                                                                           autocomplete="off"\n' +
                        '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                        '                                                                </label>\n';
                }
                if (lengther[x] >= 3) {
                    goin += '                                                                <label class="btn btn-default"\n' +
                        '                                                                       style="width: 10px;height: 23px;">\n' +
                        '                                                                    <input type="checkbox" id="imlirun3"\n' +
                        '                                                                           autocomplete="off"\n' +
                        '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                        '                                                                </label>\n';
                }
                if (lengther[x] >= 4) {
                    goin += '                                                                <label class="btn btn-default"\n' +
                        '                                                                       style="width: 10px;height: 23px;">\n' +
                        '                                                                    <input type="checkbox" id="imlirun4"\n' +
                        '                                                                           autocomplete="off"\n' +
                        '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                        '                                                                </label>\n';
                }
                if (lengther[x] >= 5) {
                    goin += '                                                                <label class="btn btn-default"\n' +
                        '                                                                       style="width: 10px;height: 23px;">\n' +
                        '                                                                    <input type="checkbox" id="imlirun5"\n' +
                        '                                                                           autocomplete="off"\n' +
                        '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                        '                                                                </label>\n';
                }
                if (lengther[x] >= 6) {
                    goin += '                                                                <label class="btn btn-default"\n' +
                        '                                                                       style="width: 10px;height: 23px;">\n' +
                        '                                                                    <input type="checkbox" id="imlirun6"\n' +
                        '                                                                           autocomplete="off"\n' +
                        '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                        '                                                                </label>\n';
                }
                goin += '\n' +
                    '                                                            </div>\n' +
                    '                                                        </div>\n' +
                    '                                                    </div>\n' +
                    '                                                    <script>\n' +
                    '                                                        function changelirun(obj) {\n' +
                    '                                                            var ids = obj.id;\n' +
                    '                                                            for (var i = 0; i < 6; i++) {\n' +
                    '                                                                if (Number(ids.substr(7)) > i) {\n' +
                    '                                                                    $(\'#imlirun\' + (i + 1)).parent().attr(\'class\',\'btn btn-default active\');\n' +
                    '                                                                    $(\'#imlirun\' + (i + 1)).attr(\'checked\', \'checked\');\n' +
                    '                                                                }\n' +
                    '                                                                else {\n' +
                    '                                                                    $(\'#imlirun\' + (i + 1)).parent().attr(\'class\',\'btn btn-default\');\n' +
                    '                                                                    $(\'#imlirun\' + (i + 1)).removeAttr(\'checked\');\n' +
                    '                                                                }\n' +
                    '                                                            }\n' +
                    '\n' +
                    '                                                        }\n' +
                    '                                                    </script>\n' +
                    '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 114px;width: 307px;border: 0px;border-radius: 8px;\n' +
                    '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color[x] + ';"></textarea>\n' +
                    '                                                </div>';
                $('#inshow' + (x + 1)).html(goin);
            }
            if (Number(com_type[x]) == 4) {
                $('#inshow' + (x + 1)).html(
                    '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color[x] + ';">\n' +
                    '                                                    <div>\n' +
                    '                                                        <span class="title"\n' +
                    '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + com_name[x] + '</span>\n' +
                    '                                                        <span class="title ti-location-pin"\n' +
                    '                                                              style="font-size: 25px;margin-left: 15px;"></span>\n' +
                    '                                                        <input type="text" value=""\n' +
                    '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color[x] + ';">\n' +
                    '\n' +
                    '                                                        <span class="title ti-alarm-clock"\n' +
                    '                                                              style="font-size: 25px;margin-left: 15px;font-size: 25px;"></span>\n' +
                    '                                                        <input type="text" value=""\n' +
                    '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color[x] + ';">\n' +
                    '                                                    </div>\n' +
                    '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 89px;width: 307px;border: 0px;border-radius: 8px;\n' +
                    '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color[x] + ';"></textarea>\n' +
                    '                                                </div>'
                );
            }
            if (Number(com_type[x]) == 5) {
                $('#inshow' + (x + 1)).html(
                    '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color[x] + ';">\n' +
                    '                                                    <div>\n' +
                    '                                                        <span class="title"\n' +
                    '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + com_name[x] + '</span>\n' +
                    '                                                        <span class=" title ti-user"\n' +
                    '                                                              style="font-size: 25px;margin-left: 15px;"></span>\n' +
                    '                                                        <input type="text" value=""\n' +
                    '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color[x] + ';">\n' +
                    '                                                    </div>\n' +
                    '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 125px;width: 307px;border: 0px;border-radius: 8px;\n' +
                    '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color[x] + ';"></textarea>\n' +
                    '                                                </div>'
                );
            }
            if (Number(com_type[x]) == 6) {
                $('#inshow' + (x + 1)).html(
                    '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color[x] + ';">\n' +
                    '                                                    <div>\n' +
                    '                                                        <span class="title"\n' +
                    '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + com_name[x] + '</span>\n' +
                    '                                                        <span class="title ti-cloud"\n' +
                    '                                                              style="font-size: 25px;margin-left: 15px;"></span>\n' +
                    '                                                        <input type="text" value=""\n' +
                    '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color[x] + ';">\n' +
                    '                                                    </div>\n' +
                    '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 125px;width: 307px;border: 0px;border-radius: 8px;\n' +
                    '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color[x] + ';"></textarea>\n' +
                    '                                                </div>'
                );
            }
            if (Number(com_type[x]) == 7) {
                $('#inshow' + (x + 1)).html(
                    '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color[x] + ';">\n' +
                    '                                                    <div>\n' +
                    '                                                        <span class="title"\n' +
                    '                                                            style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;font-family:Muli,Helvetica,Arial,sans-serif;">\n' +
                    '                                                            ' + com_name[x] + '</span>\n' +
                    '                                                        <span class="title ti-heart"\n' +
                    '                                                              style="font-size: 25px;margin-left: 15px;"></span>\n' +
                    '                                                        <input type="text" value=""\n' +
                    '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color[x] + ';">\n' +
                    '                                                    </div>\n' +
                    '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 114px;width: 307px;border: 0px;border-radius: 8px;\n' +
                    '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color[x] + ';"></textarea>\n' +
                    '                                                </div>'
                );
            }
        }
    }
}

function baseChange(obj) {
    var ids = obj.id;
    var val = obj.value;
    if (ids == 'password')
        val = hex_md5(obj.value);
    $.ajax({
        url: '/changeBaseSetting',
        type: 'post',
        contentType: 'application/x-www-form-urlencoded',
        data: {
            types: ids,
            values: val
        },
        dataType: "json",
        success: function (data) {
            $("#" + ids).val(data.object);
            if (ids == 'password') {
                alert('密码修改成功，请记住您的新密码。')
                $("#" + ids).val('');
            }
        }
    });
}

function createComp() {

    var types = $('input:radio[name="optons"]:checked').val();
    var compname = $('#compnames').val();
    var color = $('input:radio[name="option"]:checked').val();
    var lengthbar = $('input:radio[name="optio"]:checked').val();
    if ((compname == null || compname == "" || compname == '&nbsp;') && Number(types) != 1) {
        alert('组件的标题不能为空');
        return;
    }
    if (Number(types) == 1)
        compname = null;
    if (Number(types) != 3)
        lengthbar = null;
    $.ajax({
        url: '/createNewComp',
        type: 'post',
        contentType: 'application/x-www-form-urlencoded',
        data: {
            com_type: types,
            com_name: compname,
            length: lengthbar,
            color: color
        },
        dataType: "json",
        success: function (data) {
            if (data.errorCode == '1') {
                alert('组件创建成功');

                com_type[compsize] = types;
                com_name[compsize] = compname;
                lengther[compsize] = lengthbar;
                window.color[compsize] = color;
                compinuse[compsize] = 1;
                pcomid[compsize] = data.object;
                compsize++;

                updatecompshow();
            }
            if (data.errorCode == '2')
                alert('您同时启用的组件不能超过6个');
            if (data.errorCode == '3')
                alert('您创建的组件总数不能超过8个');
        }
    });

}

function addingtype() {

    var val = $('input:radio[name="optons"]:checked').val();
    var compname = $('#compnames').val();
    var color = $('input:radio[name="option"]:checked').val();
    var lengthbar = $('input:radio[name="optio"]:checked').val();
    if (val == '1') {
        $('#showcomps').html(
            '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: ' + color + ';">\n' +
            '                                                    <textarea\n' +
            '                                                            style="font-size: 19px; margin: 0px; height: 196px; width: 307px; border: 0px;\n' +
            '                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color + ';"></textarea>\n' +
            '                                                </div>'
        );
    }
    if (val == '2') {
        $('#showcomps').html(
            '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color + ';">\n' +
            '                                                    <div style="height: 40px;">\n' +
            '                                                        <span class="title"\n' +
            '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + compname + '</span>\n' +
            '                                                    </div>\n' +
            '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 153px;width: 307px;border: 0px;\n' +
            '                                                            border-radius: 8px;resize: none;overflow:scroll;overflow-y:hidden;background-color: ' + color + ';"></textarea>\n' +
            '                                                </div>'
        );
    }
    if (val == '3') {
        var goin = '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color: ' + color + ';">\n' +
            '                                                    <div>\n' +
            '                                                        <span class="title"\n' +
            '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + compname + '</span>\n' +
            '                                                        <div>\n' +
            '                                                            <span class="title ti-flag"\n' +
            '                                                                  style="font-size: 25px;top: 12px;left: 3px;margin-left: 10px;position: relative;"></span>\n' +
            '                                                            <div class="btn-group" data-toggle="buttons"\n' +
            '                                                                 style="margin-top: 15px;margin-left: 15px;">\n' +
            '                                                                <label class="btn btn-default"\n' +
            '                                                                       style="width: 10px;height: 23px;">\n' +
            '                                                                    <input type="checkbox" id="imlirun1"\n' +
            '                                                                           autocomplete="off"\n' +
            '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
            '                                                                </label>\n';
        if (lengthbar >= 2) {
            goin += '                                                                <label class="btn btn-default"\n' +
                '                                                                       style="width: 10px;height: 23px;">\n' +
                '                                                                    <input type="checkbox" id="imlirun2"\n' +
                '                                                                           autocomplete="off"\n' +
                '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                '                                                                </label>\n';
        }
        if (lengthbar >= 3) {
            goin += '                                                                <label class="btn btn-default"\n' +
                '                                                                       style="width: 10px;height: 23px;">\n' +
                '                                                                    <input type="checkbox" id="imlirun3"\n' +
                '                                                                           autocomplete="off"\n' +
                '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                '                                                                </label>\n';
        }
        if (lengthbar >= 4) {
            goin += '                                                                <label class="btn btn-default"\n' +
                '                                                                       style="width: 10px;height: 23px;">\n' +
                '                                                                    <input type="checkbox" id="imlirun4"\n' +
                '                                                                           autocomplete="off"\n' +
                '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                '                                                                </label>\n';
        }
        if (lengthbar >= 5) {
            goin += '                                                                <label class="btn btn-default"\n' +
                '                                                                       style="width: 10px;height: 23px;">\n' +
                '                                                                    <input type="checkbox" id="imlirun5"\n' +
                '                                                                           autocomplete="off"\n' +
                '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                '                                                                </label>\n';
        }
        if (lengthbar >= 6) {
            goin += '                                                                <label class="btn btn-default"\n' +
                '                                                                       style="width: 10px;height: 23px;">\n' +
                '                                                                    <input type="checkbox" id="imlirun6"\n' +
                '                                                                           autocomplete="off"\n' +
                '                                                                           onchange="changelirun(this)"> &nbsp;&nbsp;&nbsp;\n' +
                '                                                                </label>\n';
        }
        goin += '\n' +
            '                                                            </div>\n' +
            '                                                        </div>\n' +
            '                                                    </div>\n' +
            '                                                    <script>\n' +
            '                                                        function changelirun(obj) {\n' +
            '                                                            var ids = obj.id;\n' +
            '                                                            for (var i = 0; i < 6; i++) {\n' +
            '                                                                if (Number(ids.substr(7)) > i) {\n' +
            '                                                                    $(\'#imlirun\' + (i + 1)).parent().attr(\'class\',\'btn btn-default active\');\n' +
            '                                                                    $(\'#imlirun\' + (i + 1)).attr(\'checked\', \'checked\');\n' +
            '                                                                }\n' +
            '                                                                else {\n' +
            '                                                                    $(\'#imlirun\' + (i + 1)).parent().attr(\'class\',\'btn btn-default\');\n' +
            '                                                                    $(\'#imlirun\' + (i + 1)).removeAttr(\'checked\');\n' +
            '                                                                }\n' +
            '                                                            }\n' +
            '\n' +
            '                                                        }\n' +
            '                                                    </script>\n' +
            '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 114px;width: 307px;border: 0px;border-radius: 8px;\n' +
            '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color + ';"></textarea>\n' +
            '                                                </div>';
        $('#showcomps').html(goin);
    }
    if (val == '4') {
        $('#showcomps').html(
            '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color + ';">\n' +
            '                                                    <div>\n' +
            '                                                        <span class="title"\n' +
            '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + compname + '</span>\n' +
            '                                                        <span class="title ti-location-pin"\n' +
            '                                                              style="font-size: 25px;margin-left: 15px;"></span>\n' +
            '                                                        <input type="text" value=""\n' +
            '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color + ';">\n' +
            '\n' +
            '                                                        <span class="title ti-alarm-clock"\n' +
            '                                                              style="font-size: 25px;margin-left: 15px;font-size: 25px;"></span>\n' +
            '                                                        <input type="text" value=""\n' +
            '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color + ';">\n' +
            '                                                    </div>\n' +
            '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 89px;width: 307px;border: 0px;border-radius: 8px;\n' +
            '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color + ';"></textarea>\n' +
            '                                                </div>'
        );
    }
    if (val == '5') {
        $('#showcomps').html(
            '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color + ';">\n' +
            '                                                    <div>\n' +
            '                                                        <span class="title"\n' +
            '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + compname + '</span>\n' +
            '                                                        <span class=" title ti-user"\n' +
            '                                                              style="font-size: 25px;margin-left: 15px;"></span>\n' +
            '                                                        <input type="text" value=""\n' +
            '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color + ';">\n' +
            '                                                    </div>\n' +
            '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 125px;width: 307px;border: 0px;border-radius: 8px;\n' +
            '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color + ';"></textarea>\n' +
            '                                                </div>'
        );
    }
    if (val == '6') {
        $('#showcomps').html(
            '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color + ';">\n' +
            '                                                    <div>\n' +
            '                                                        <span class="title"\n' +
            '                                                              style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;">' + compname + '</span>\n' +
            '                                                        <span class="title ti-cloud"\n' +
            '                                                              style="font-size: 25px;margin-left: 15px;"></span>\n' +
            '                                                        <input type="text" value=""\n' +
            '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color + ';">\n' +
            '                                                    </div>\n' +
            '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 125px;width: 307px;border: 0px;border-radius: 8px;\n' +
            '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color + ';"></textarea>\n' +
            '                                                </div>'
        );
    }
    if (val == '7') {
        $('#showcomps').html(
            '<div style="height: 200px;width: 310px;border-radius: 5px;border: 1px solid #dddddd;background-color:' + color + ';">\n' +
            '                                                    <div>\n' +
            '                                                        <span class="title"\n' +
            '                                                            style="font-size: 23px;top: 6px;text-align: center;display: block;position: relative;font-family:Muli,Helvetica,Arial,sans-serif;">\n' +
            '                                                            ' + compname + '</span>\n' +
            '                                                        <span class="title ti-heart"\n' +
            '                                                              style="font-size: 25px;margin-left: 15px;"></span>\n' +
            '                                                        <input type="text" value=""\n' +
            '                                                               style="width: 70%;border: 0px;margin-left: 15px;font-size: 20px;background-color:' + color + ';">\n' +
            '                                                    </div>\n' +
            '                                                    <textarea style="font-size: 19px;margin-top: 5px;height: 114px;width: 307px;border: 0px;border-radius: 8px;\n' +
            '                                                            resize: none;overflow:scroll;overflow-y:hidden;background-color:' + color + ';"></textarea>\n' +
            '                                                </div>'
        );
    }

}

function changecomptype(obj) {

    var ids = obj.id;
    var comid = pcomid[(Number(ids.substr(6, 1)) - 1)];

    $.ajax({
        url: '/updateComponent',
        type: 'post',
        contentType: 'application/x-www-form-urlencoded',
        data: {
            options: Number(ids.substr(7)),
            com_id: comid
        },
        dataType: "json",
        success: function (data) {
            var mes = data.errorCode;
            if (mes == '0001') {
                alert('组件启动成功');
                compinuse[(Number(ids.substr(6, 1)) - 1)] = 1;
            } else if (mes == '0002') {
                alert('组件停用成功');
                compinuse[(Number(ids.substr(6, 1)) - 1)] = 2;
            } else if (mes == '0003') {
                alert('组件删除成功');
                compinuse[(Number(ids.substr(6, 1)) - 1)] = 3;
                location.reload(true);
            } else if (mes == '1001') {
                alert('组件启动失败，已到达可用上限');
            }
            updatecompshow();
        }
    });

}