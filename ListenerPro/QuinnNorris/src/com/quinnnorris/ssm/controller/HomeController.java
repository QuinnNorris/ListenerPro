package com.quinnnorris.ssm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Title: HomeController
 * Description: 用于接收并处理所有有关于个人中心的相关请求
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/29 下午8:21 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class HomeController {

    /**
     * 访问个人中心，只有每个用户本人才能访问到自己的个人中心
     *
     * @param phone       获取url中请求的用户资源信息
     * @param model       封装数据并绘制下一个页面
     * @param httpSession 浏览器session信息
     * @return 如果访问他人个人中心返回404，访问自己个人中心则跳转
     */
    @RequestMapping(value = "/homePage/{phone}")
    public String homePage(@PathVariable String phone, Model model, HttpSession httpSession) {
        if (!((String) (httpSession.getAttribute("phone"))).equals(phone))
            return "404";
        return "homePage";
    }

}
