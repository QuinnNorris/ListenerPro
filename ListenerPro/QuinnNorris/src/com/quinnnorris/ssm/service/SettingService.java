package com.quinnnorris.ssm.service;

import com.quinnnorris.ssm.bean.CertCustom;
import com.quinnnorris.ssm.bean.CompUsingCustom;
import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.util.BaseJson;

import javax.servlet.http.HttpSession;

/**
 * Title: SettingService
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/2 下午3:50 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
public interface SettingService {

    public void updateUserHeadp(UserCustom userCustom, HttpSession httpSession);

    public void updateUserName(UserCustom userCustom, HttpSession httpSession);

    public void addUserEmail(UserCustom userCustom);

    public void updateUserPW(UserCustom userCustom);

    public void insertCertUser(CertCustom certCustom, HttpSession httpSession);

    public BaseJson changeComponentUsingType(CompUsingCustom compUsingCustom, HttpSession httpSession);
}
