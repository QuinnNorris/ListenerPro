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
 * Title: RegisterController
 * Description: 用于接收并处理所有有关于注册相关请求
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/29 上午11:20 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class RegisterController {

    @Autowired
    RegLogServiceImpl regLogService;

    /**
     * 跳转至注册界面
     *
     * @return 返回跳转的页面
     */
    @RequestMapping("/RegisterUser")
    public String registerUser() {
        return "Register";
    }

    /**
     * 获取注册用户请求并处理
     *
     * @param phone       传入手机号码
     * @param pw          传入加密密码
     * @param httpSession 获取浏览器session
     * @return 返回baseJson数据并返回请求
     */
    @RequestMapping(value = "/RegisterPhonePW", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson registerPhonePW(@RequestParam String phone, @RequestParam String pw, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(phone, pw)) return new BaseJson("404");
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone(phone);
        userCustom.setPassword(pw);
        return regLogService.findUserByRegister(userCustom, httpSession);
    }

    /**
     * 用户发起忘记密码请求，修改密码
     *
     * @param phone       传入的手机
     * @param pw          传入的密码
     * @param httpSession 服务器session
     * @return 返回bJ数据
     */
    @RequestMapping(value = "/ForgetPhonePW", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson forgetPhonePW(@RequestParam String phone, @RequestParam String pw, HttpSession httpSession) {
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone(phone);
        userCustom.setPassword(pw);
        if (SessionUtil.paramHasNull(phone, pw)) return new BaseJson("404");
        return regLogService.forgetUpdatePW(userCustom, httpSession);
    }

}
