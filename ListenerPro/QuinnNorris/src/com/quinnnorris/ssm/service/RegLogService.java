package com.quinnnorris.ssm.service;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.util.BaseJson;

import javax.servlet.http.HttpSession;

/**
 * Title: RegLogService
 * Description: 关于注册的所有接口方法
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/29 下午7:58 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
public interface RegLogService {

    public BaseJson findUserByRegister(UserCustom userCustom, HttpSession httpSession);

    public BaseJson findUserByLogin(UserCustom userCustom, HttpSession httpSession);

    public BaseJson forgetUpdatePW(UserCustom userCustom, HttpSession httpSession);

}
