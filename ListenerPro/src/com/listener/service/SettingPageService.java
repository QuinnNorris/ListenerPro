package com.listener.service;

import com.listener.bean.*;
import com.listener.mapper.*;
import com.listener.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Title: SettingPageService
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/11/13 下午1:22 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
@Service("settingPageService")
public class SettingPageService {

    @Autowired
    UserCustomMapper userCustomMapper;

    @Autowired
    LabelCustomMapper labelCustomMapper;

    @Autowired
    CompUsingCustomMapper compUsingCustomMapper;

    @Autowired
    ComponentCustomMapper componentCustomMapper;

    @Autowired
    CityCustomMapper cityCustomMapper;

    @Autowired
    WorkCustomMapper workCustomMapper;

    public void setSettingPageModels(Model model, String phone) {

        Map<String, Object> map = new HashMap<>();

        UserCustom userCustom = new UserCustom();
        //userCustom.setPhone(phone);
        userCustom.setPhone("13061887060");
        UserCustom selectCustom = userCustomMapper.selectUserByPhone(userCustom);
        map.put("username", selectCustom.getUsername());
        map.put("headp", selectCustom.getHeadp());
        map.put("email", selectCustom.getEmail());
        map.put("addr", selectCustom.getAddr());
        map.put("info", selectCustom.getInfo());

        LabelCustom labelCustom = new LabelCustom();
        labelCustom.setId(selectCustom.getId());
        LabelCustom selectLabel = labelCustomMapper.selectLabelById(labelCustom);
        map.put("age", selectLabel.getAge());
        CityCustom cityCustom = new CityCustom();
        cityCustom.setCity_id(selectLabel.getCity());
        CityCustom selectCity = cityCustomMapper.selectCityById(cityCustom);
        map.put("city", selectCity.getCity_id());
        WorkCustom workCustom = new WorkCustom();
        workCustom.setWork_id(selectLabel.getWork_id());
        WorkCustom selectWork = workCustomMapper.selectWorkerById(workCustom);
        map.put("work", selectWork.getWork_id());
        if (selectLabel.getSex() == 1) map.put("sex", "男");
        else map.put("sex", "女");
        if (selectLabel.getFsex() == 1) map.put("fsex", "男");
        else map.put("fsex", "女");
        map.put("fage", selectLabel.getFage());
        cityCustom.setCity_id(selectLabel.getFcity());
        selectCity = cityCustomMapper.selectCityById(cityCustom);
        map.put("fcity", selectCity.getCity_id());
        workCustom.setWork_id(selectLabel.getFwork_id());
        selectWork = workCustomMapper.selectWorkerById(workCustom);
        map.put("fwork", selectWork.getWork_id());
        map.put("label1", selectLabel.getLabel1());
        map.put("label2", selectLabel.getLabel2());
        map.put("label3", selectLabel.getLabel3());
        map.put("label4", selectLabel.getLabel4());
        map.put("stars", selectLabel.getStars());

        CompUsingCustom compUsingCustom = new CompUsingCustom();
        compUsingCustom.setId(selectCustom.getId());
        compUsingCustom.setUse_type(1);
        List<String> compinuse = new ArrayList<>();
        List<CompUsingCustom> listCompUsing = compUsingCustomMapper.selectWithIdAndUse_type(compUsingCustom);
        compUsingCustom.setUse_type(2);
        listCompUsing.addAll(compUsingCustomMapper.selectWithIdAndUse_type(compUsingCustom));
        List<String> com_name = new ArrayList<>();
        List<String> com_type = new ArrayList<>();
        List<String> length = new ArrayList<>();
        List<String> color = new ArrayList<>();
        List<String> comid = new ArrayList<>();
        ComponentCustom componentCustom = new ComponentCustom();
        for (int i = 0; i < listCompUsing.size(); i++) {
            componentCustom.setCreate_id(selectCustom.getId());
            componentCustom.setCom_id(listCompUsing.get(i).getCom_id());
            ComponentCustom compCustom = componentCustomMapper.selectCompBycom_idAndCreate_id(componentCustom);
            com_type.add(compCustom.getCom_type() + "");
            com_name.add(compCustom.getCom_name());
            length.add(compCustom.getLength() + "");
            color.add(compCustom.getColor());
            compinuse.add(listCompUsing.get(i).getUse_type() + "");
            comid.add(compCustom.getCom_id() + "");
        }
        model.addAttribute("com_type", com_type);
        model.addAttribute("com_name", com_name);
        model.addAttribute("length", length);
        model.addAttribute("color", color);
        model.addAttribute("compsize", listCompUsing.size());
        model.addAttribute("compinuse", compinuse);
        model.addAttribute("comid", comid);
        //huayuanwangshi
        //xinliyuyue
        //wenzhangshu
        //xiangceshu

        model.addAttribute("workCustoms", workCustomMapper.selectAllInWork());
        model.addAttribute("cityCustoms", cityCustomMapper.selectAllInCity());
        model.addAllAttributes(map);

        /*CityCustom cityCustom = new CityCustom();
        String[] strs = {"北京市", "上海市", "天津市", "重庆市", "河北省", "山西省", "辽宁省", "吉林省", "黑龙江省"
                , "江苏省", "浙江省", "安徽省", "福建省", "江西省", "山东省", "河南省", "湖北省", "湖南省", "广东省", "海南省", "四川省", "贵州省"
                , "云南省", "陕西省", "甘肃省", "青海省", "台湾", "内蒙古", "广西", "西藏", "宁夏", "新疆", "香港", "澳门"};
        for (String s : strs) {
            cityCustom.setCity_name(s);
            cityCustomMapper.insert(cityCustom);
        }
*/

    }

    public BaseJson updateSettingPage(String types, String values, String phone) {
        BaseJson baseJson = new BaseJson();
        LabelCustom labelCustom = new LabelCustom();
        UserCustom userCustom = new UserCustom();
        //labelCustom.setPhone(phone);
        //userCustom.setPhone(phone);
        userCustom.setPhone("13061887060");
        labelCustom.setPhone("13061887060");
        UserCustom selectUser = userCustomMapper.selectUserByPhone(userCustom);
        LabelCustom selectLabel = labelCustomMapper.selectLabelByPhone(labelCustom);
        if (types.charAt(0) == 'f' || types.charAt(0) == 'w'
                || types.charAt(0) == 'c' || types.charAt(1) == 'g' || types.charAt(0) == 's') {
            if (types.charAt(0) == 'w') ;
            if (types.charAt(0) == 'c') ;
            if (types.charAt(1) == 'g') {
                Pattern pattern = Pattern.compile("[0-9]*");
                Matcher isNum = pattern.matcher(values);
                if (!isNum.matches())
                    baseJson.setObject(selectLabel.getAge());
                else {
                    selectLabel.setAge(Integer.parseInt(values));
                    baseJson.setObject(values);
                }
            }
            if (types.charAt(0) == 's') {
                if (values.equals("男")) {
                    selectLabel.setSex(1);
                    baseJson.setObject("男");
                } else if (values.equals("女")) {
                    selectLabel.setSex(2);
                    baseJson.setObject("女");
                } else {
                    baseJson.setObject(selectLabel.getFsex());
                    if (selectLabel.getSex() == 1) baseJson.setObject("男");
                    else baseJson.setObject("女");
                }
            }

            if (types.equals("fage")) {
                Pattern pattern = Pattern.compile("[0-9]*");
                Matcher isNum = pattern.matcher(values);
                if (!isNum.matches())
                    baseJson.setObject(selectLabel.getFage());
                else {
                    selectLabel.setFage(Integer.parseInt(values));
                    baseJson.setObject(values);
                }
            }
            if (types.equals("fsex")) {
                if (values.equals("男")) {
                    selectLabel.setFsex(1);
                    baseJson.setObject("男");
                } else if (values.equals("女")) {
                    selectLabel.setFsex(2);
                    baseJson.setObject("女");
                } else {
                    baseJson.setObject(selectLabel.getFsex());
                    if (selectLabel.getFsex() == 1) baseJson.setObject("男");
                    else baseJson.setObject("女");
                }
            }
            if (types.equals("fwork")) ; //selectLabel.setFage(values);
            if (types.equals("fcity")) ; //selectLabel.setFage(values);

            labelCustomMapper.updateFindLabel(selectLabel);
            labelCustomMapper.updateSelfLabel(selectLabel);
        }
        if (types.charAt(0) == 'l') {
            if (types.charAt(5) == '1') selectLabel.setLabel1(values);
            if (types.charAt(5) == '2') selectLabel.setLabel2(values);
            if (types.charAt(5) == '3') selectLabel.setLabel3(values);
            if (types.charAt(5) == '4') selectLabel.setLabel4(values);
            labelCustomMapper.updateCustomLabel(selectLabel);
            baseJson.setObject(values);
        }
        if (types.charAt(0) == 'u' || types.charAt(0) == 'e'
                || types.charAt(0) == 'p' || types.charAt(0) == 'i' || types.charAt(1) == 'd') {
            if (types.charAt(0) == 'u') selectUser.setUsername(values);
            if (types.charAt(0) == 'e') selectUser.setEmail(values);
            if (types.charAt(0) == 'p') selectUser.setPassword(values);
            if (types.charAt(0) == 'i') selectUser.setInfo(values);
            if (types.charAt(1) == 'd') selectUser.setAddr(values);
            userCustomMapper.updateAllUser(selectUser);
            baseJson.setObject(values);
        }
        return baseJson;
    }

    public BaseJson createNewComponent(String com_type, String com_name, String color, String length, String phone) {
        BaseJson baseJson = new BaseJson();
        UserCustom userCustom = new UserCustom();
        //userCustom.setPhone(phone);
        userCustom.setPhone("13061887060");
        UserCustom selectUser = userCustomMapper.selectUserByPhone(userCustom);
        CompUsingCustom selectCompUsingCustom = new CompUsingCustom();
        selectCompUsingCustom.setId(selectUser.getId());
        selectCompUsingCustom.setUse_type(1);
        List<CompUsingCustom> selectInUse = compUsingCustomMapper.selectWithIdAndUse_type(selectCompUsingCustom);
        if (selectInUse.size() >= 6) {
            baseJson.setErrorCode("2");
            return baseJson;
        }
        selectCompUsingCustom.setUse_type(2);
        List<CompUsingCustom> selectInAll = compUsingCustomMapper.selectWithIdAndUse_type(selectCompUsingCustom);
        if (selectInUse.size() + selectInAll.size() >= 8) {
            baseJson.setErrorCode("3");
            return baseJson;
        }
        ComponentCustom componentCustom = new ComponentCustom();
        componentCustom.setCreate_id(selectUser.getId());
        componentCustom.setCom_name(com_name);
        componentCustom.setCom_type(Integer.parseInt(com_type));
        componentCustom.setColor(color);
        if (length != null && length != "")
            componentCustom.setLength(Integer.parseInt(length));
        int id = componentCustomMapper.insertComponent(componentCustom);
        CompUsingCustom compUsingCustom = new CompUsingCustom();
        compUsingCustom.setId(selectUser.getId());
        compUsingCustom.setUse_type(1);
        compUsingCustom.setCom_id(componentCustom.getCom_id());
        compUsingCustomMapper.insertWithIdAndCom_id(compUsingCustom);
        baseJson.setErrorCode("1");
        baseJson.setObject(componentCustom.getCom_id());
        return baseJson;
    }

    public BaseJson updateComponent(String options, String com_id, String phone) {

        BaseJson baseJson = new BaseJson();
        UserCustom userCustom = new UserCustom();
        //userCustom.setPhone(phone);
        userCustom.setPhone("13061887060");
        UserCustom selectUser = userCustomMapper.selectUserByPhone(userCustom);
        CompUsingCustom selectCompUsingCustom = new CompUsingCustom();
        selectCompUsingCustom.setId(selectUser.getId());
        selectCompUsingCustom.setCom_id(Integer.parseInt(com_id.trim()));
        if (options.equals("1")) {
            CompUsingCustom custom = new CompUsingCustom();
            custom.setId(selectUser.getId());
            custom.setUse_type(1);
            List<CompUsingCustom> selectInUse = compUsingCustomMapper.selectWithIdAndUse_type(custom);
            if (selectInUse.size() >= 6)
                baseJson.setErrorCode("1001");//启动超过6
            else {
                selectCompUsingCustom.setUse_type(1);
                compUsingCustomMapper.updateWithIdAndCom_id(selectCompUsingCustom);
                baseJson.setErrorCode("0001");//启动成功
            }
        } else if (options.equals("2")) {
            selectCompUsingCustom.setUse_type(2);
            compUsingCustomMapper.updateWithIdAndCom_id(selectCompUsingCustom);
            baseJson.setErrorCode("0002");//停用成功
        } else {
            selectCompUsingCustom.setUse_type(3);
            compUsingCustomMapper.updateWithIdAndCom_id(selectCompUsingCustom);
            baseJson.setErrorCode("0003");//删除成功
        }
        return baseJson;
    }
}
