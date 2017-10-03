package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.CompUsingCustom;
import com.quinnnorris.ssm.bean.ComponentCustom;
import com.quinnnorris.ssm.service.impl.SettingServiceImpl;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * Title: ComponentController
 * Description:有关个人中心中的二级页面组件设置页面请求
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/3 上午8:38 星期二
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class ComponentController {

    @Autowired
    SettingServiceImpl settingService;

    /**
     * 切换用户当前使用或禁用组件状态
     *
     * @param com_id      组件id，通过前端id直接读取
     * @param use_type    使用状态 0为不使用，1为启用，2为删除
     * @param httpSession 服务器session
     * @return 返回404如果访问错误，返回0001如果返回正确
     */
    @RequestMapping("/homePage/ChangeUsing")
    @ResponseBody
    public BaseJson changeUsingType(@RequestParam String com_id, @RequestParam String use_type, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(com_id, use_type)) return new BaseJson("404");
        CompUsingCustom compUsingCustom = new CompUsingCustom();
        compUsingCustom.setCom_id(Integer.parseInt(com_id));
        compUsingCustom.setUse_type(Integer.parseInt(use_type));
        BaseJson baseJson = settingService.changeComponentUsingType(compUsingCustom, httpSession);
        baseJson.setErrorCode("0001");
        return baseJson;
    }

    /**
     * 创建并添加新的组件到数据库中，并立即启用该组件
     *
     * @param com_type    组件的类型
     * @param com_name    组件的名称
     * @param innertest   组件内部的文字
     * @param length      如果组件类型为1，则存放该组件的长度
     * @param color       组件背景颜色
     * @param httpSession 服务器session
     * @return 返回404访问错误或0001当访问成功，并将componentCusotm对象传入
     */
    @RequestMapping(value = "/homePage/AddNewComp", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson addNewComponent(@RequestParam String com_type, @RequestParam String com_name,
                                    @RequestParam String innertest, @RequestParam String length,
                                    @RequestParam String color, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(com_type, com_name, innertest, color)) return new BaseJson("404");
        ComponentCustom componentCustom = new ComponentCustom();
        componentCustom.setCom_type(Integer.parseInt(com_type));
        componentCustom.setCom_name(com_name);
        componentCustom.setInnertest(innertest);
        componentCustom.setColor(color);
        if (com_type.equals("1"))
            componentCustom.setLength(Integer.parseInt(length));
        BaseJson baseJson = settingService.addNewComponent(componentCustom, httpSession);

        CompUsingCustom compUsingCustom = new CompUsingCustom();
        compUsingCustom.setUse_type(1);
        compUsingCustom.setCom_id(((ComponentCustom) (baseJson.getBeanObject())).getCom_id());
        settingService.addNewCompMapping(compUsingCustom, httpSession);
        baseJson.setErrorCode("0001");
        return baseJson;
    }


}
