package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.service.impl.SettingServiceImpl;
import com.quinnnorris.ssm.util.SessionUtil;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Title: HomePagesController
 * Description: 关于所有个人中心的一级二级页面跳转
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/3 上午8:17 星期二
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
@RequestMapping("/homePage")
public class HomePagesController {

    @Autowired
    SettingServiceImpl settingService;

    /**
     * 访问个人中心，只有每个用户本人才能访问到自己的个人中心
     *
     * @param phone       获取url中请求的用户资源信息
     * @param model       封装数据并绘制下一个页面
     * @param httpSession 浏览器session信息
     * @return 如果访问他人个人中心返回404，访问自己个人中心则跳转
     */
    @RequestMapping("")
    public String homePage(@PathVariable String phone, Model model, HttpSession httpSession) {
        if (SessionUtil.sessionHasNull(httpSession, "phone")
                || !((String) (httpSession.getAttribute("phone"))).equals(phone))
            return "404";
        //model
        return "HomePage";
    }

    /**
     * 访问个人中心下的二级页面BaseSetting基本设置页面
     *
     * @param phone       获取url中请求的用户资源信息
     * @param model       封装数据并绘制下一个页面
     * @param httpSession 服务器session
     * @return 如果访问非自己个人中心返回404，访问自己个人中心BaseSetting则跳转
     */
    @RequestMapping("/baseSetting/{phone}")
    public String homePageBaseSetting(@PathVariable String phone, Model model, HttpSession httpSession) {
        if (SessionUtil.sessionHasNull(httpSession, "phone")
                || !((String) (httpSession.getAttribute("phone"))).equals(phone))
            return "404";
        settingService.getUserInfo((String)httpSession.getAttribute("phone"),model);
        return "HomeBaseSetting";
    }

    /**
     * 访问个人中心下的二级页面ComponentSetting组件设置页面
     *
     * @param phone       获取url中请求的用户资源信息
     * @param model       封装数据并绘制下一个页面
     * @param httpSession 服务器session
     * @return 如果访问非自己个人中心返回404，访问自己个人中心ComponentSetting则跳转
     */
    @RequestMapping("/componentSetting/{phone}")
    public String homePageComponentSetting(@PathVariable String phone, Model model, HttpSession httpSession) {
        if (SessionUtil.sessionHasNull(httpSession, "phone")
                || !((String) (httpSession.getAttribute("phone"))).equals(phone))
            return "404";
        //model
        return "HomeComponentSetting";
    }

    /**
     * 访问个人中心下的二级页面LabelSetting标签管理页面
     *
     * @param phone       获取url中请求的用户资源信息
     * @param model       封装数据并绘制下一个页面
     * @param httpSession 服务器session
     * @return 如果访问非自己个人中心返回404，访问自己个人中心LabelSetting则跳转
     */
    @RequestMapping("/labelSetting/{phone}")
    public String homePageLabelSetting(@PathVariable String phone, Model model, HttpSession httpSession) {
        if (SessionUtil.sessionHasNull(httpSession, "phone")
                || !((String) (httpSession.getAttribute("phone"))).equals(phone))
            return "404";
        //model
        return "HomeLabelSetting";
    }

    /**
     * 访问个人中心下的二级页面ConsultSetting标签管理页面
     *
     * @param phone       获取url中请求的用户资源信息
     * @param model       封装数据并绘制下一个页面
     * @param httpSession 服务器session
     * @return 如果访问非自己个人中心返回404，访问自己个人中心ConsultSetting则跳转
     */
    @RequestMapping("/consultSetting/{phone}")
    public String homePageConsultSetting(@PathVariable String phone, Model model, HttpSession httpSession) {
        if (SessionUtil.sessionHasNull(httpSession, "phone")
                || !((String) (httpSession.getAttribute("phone"))).equals(phone))
            return "404";
        //model
        return "HomeConsultSetting";
    }

    /**
     * 访问个人中心下的二级页面TestSetting标签管理页面
     *
     * @param phone       获取url中请求的用户资源信息
     * @param model       封装数据并绘制下一个页面
     * @param httpSession 服务器session
     * @return 如果访问非自己个人中心返回404，访问自己个人中心TestSetting则跳转
     */
    @RequestMapping("/testSetting/{phone}")
    public String homePageTestSetting(@PathVariable String phone, Model model, HttpSession httpSession) {
        if (SessionUtil.sessionHasNull(httpSession, "phone")
                || !((String) (httpSession.getAttribute("phone"))).equals(phone))
            return "404";
        //model
        return "HomeTestSetting";
    }

}
