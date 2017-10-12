package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.service.impl.RegLogServiceImpl;
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
 * Title: LoginController
 * Description: 用于接收并处理所有有关于登陆相关请求
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/29 下午8:27 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class LoginController {

    @Autowired
    RegLogServiceImpl regLogService;

    /**
     * 跳转到登陆页面
     *
     * @return 返回Login视图
     */
    @RequestMapping("/LoginUser")
    public String loginUser() {
        return "Login";
    }

    /**
     * 通过手机号码和密码登陆请求
     * 登陆成功后将信息填充进入session
     *
     * @param phone       传入手机
     * @param pw          传入密码
     * @param httpSession 获取浏览器session
     * @return 返回baseJson数据并处理
     */
    @RequestMapping(value = "/LoginPhonePW", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson loginPhonePW(@RequestParam String phone, @RequestParam String pw, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(phone, pw)) return new BaseJson("404");
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone(phone);
        userCustom.setPassword(pw);
        return regLogService.findUserByLogin(userCustom, httpSession);
    }

    /**
     * 忘记密码重新设置密码请求
     * 设置新密码成功后和登陆相同，将信息填充进入session
     *
     * @param phone       传入手机号码
     * @param pw          传入加密密码
     * @param httpSession 获取浏览器session
     * @return 返回并处理baseJson数据
     */
    @RequestMapping(value = "/ForgetPassword", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson forgetPassword(@RequestParam String phone, @RequestParam String pw, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(phone, pw)) return new BaseJson("404");
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone(phone);
        userCustom.setPassword(pw);
        return regLogService.forgetUpdatePW(userCustom, httpSession);
    }

    @RequestMapping(value = "/getSession")
    @ResponseBody
    public BaseJson getnowSession(HttpSession httpSession) {
        return new BaseJson(SessionUtil.getAllSession(httpSession));
    }

}
