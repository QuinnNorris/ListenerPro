package com.quinnnorris.ssm.service.impl;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.mapper.UserCustomMapper;
import com.quinnnorris.ssm.service.SettingService;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

/**
 * Title: SettingServiceImpl
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/2 下午3:50 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
@Service("settingServiceImpl")
public class SettingServiceImpl implements SettingService {

    @Autowired
    UserCustomMapper userCustomMapper;

    /**
     * 更新用户头像并重写session
     *
     * @param userCustom  填充了phone与headp字段
     * @param httpSession 服务器session
     */
    @Override
    public void updateUserHeadp(UserCustom userCustom, HttpSession httpSession) {
        userCustomMapper.updateUserHeadp(userCustom);
        httpSession.setAttribute("headp", userCustom.getHeadp());
    }

    /**
     * 更新了用户的用户名，并重写了session
     *
     * @param userCustom  填充了phone和username
     * @param httpSession 服务器session
     */
    @Override
    public void updateUserName(UserCustom userCustom, HttpSession httpSession) {
        userCustomMapper.updateUserUsername(userCustom);
        httpSession.setAttribute("username", userCustom.getUsername());
    }

    /**
     * 添加了用户绑定的email信息
     *
     * @param userCustom 填充了phone和email
     */
    @Override
    public void addUserEmail(UserCustom userCustom) {
        userCustomMapper.insertUserEmail(userCustom);
    }

    @Override
    public void updateUserPW(UserCustom userCustom) {
        userCustomMapper.updateUserPW(userCustom);
    }

}
