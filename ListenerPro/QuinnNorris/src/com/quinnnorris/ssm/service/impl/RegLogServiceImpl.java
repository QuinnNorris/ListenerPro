package com.quinnnorris.ssm.service.impl;

import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.mapper.UserCustomMapper;
import com.quinnnorris.ssm.service.RegLogService;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.HeadpUtil;
import com.quinnnorris.ssm.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * Title: RegLogServiceImpl
 * Description: 关于注册的所有接口方法的具体实现
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/29 下午7:58 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
@Service("regLogServiceImpl")
public class RegLogServiceImpl implements RegLogService {

    @Autowired
    UserCustomMapper userCustomMapper;

    /**
     * 设置用户注册时间，设置用户类型为普通用户1
     * 根据传入数据查找用户是否被注册，如果没有则进行注册，并在注册后将信息填写入session中
     *
     * @param userCustom  需要填充phone与password字段
     * @param httpSession 浏览器session
     * @return 返回baseJson，如果用户被注册返回1001，否则注册用户并填充userCustom并返回0001
     */
    @Override
    public BaseJson findUserByRegister(UserCustom userCustom, HttpSession httpSession) {
        BaseJson baseJson = new BaseJson();
        UserCustom userRes = userCustomMapper.selectUserByPhone(userCustom);
        if (userRes != null)
            baseJson.setErrorCode("1001");
        else {
            userCustom.setRegtime(new Date());
            userCustom.setUsertype(1);
            userCustom.setHeadp(HeadpUtil.randomHeadp());
            userCustom.setUsername(userCustom.getPhone());
            userCustomMapper.insertUserReturnId(userCustom);
            baseJson.setErrorCode("0001");
            baseJson.setBeanObject(userCustom);
            SessionUtil.setSessionPhoneType(httpSession, userCustom.getPhone(), userCustom.getUsertype());
        }
        return baseJson;
    }

    /**
     * 通过给定的用户信息查找是否有该用户，如果有则登陆，否则报错
     * 如果登陆并将数据填充进session中
     *
     * @param userCustom  需要填充phone与password字段
     * @param httpSession 浏览器session
     * @return 返回baseJson，如果用户被注册返回1001，否则注册用户并填充userCustom并返回0001
     */
    @Override
    public BaseJson findUserByLogin(UserCustom userCustom, HttpSession httpSession) {
        BaseJson baseJson = new BaseJson();
        UserCustom userRes = userCustomMapper.selectUserByPhoneAndPW(userCustom);
        if (userRes != null) {
            baseJson.setErrorCode("0001");
            baseJson.setBeanObject(userRes);
            SessionUtil.setSessionPhoneType(httpSession, userRes.getPhone(), userRes.getUsertype());
        } else
            baseJson.setErrorCode("1001");
        return baseJson;
    }

    /**
     * 更新用户密码，并在更新后自动进行登陆功能
     * 登陆时将用户信息填充进入session
     *
     * @param userCustom  需要填充phone与password字段
     * @param httpSession 浏览器的session
     * @return 返回baseJson数据，如果用户没错成功修改密码并登陆则返回0001，出错返回1001
     */
    @Override
    public BaseJson forgetUpdatePW(UserCustom userCustom, HttpSession httpSession) {
        BaseJson baseJson = new BaseJson();
        UserCustom userRes = userCustomMapper.selectUserByPhone(userCustom);
        if (userRes != null) {
            userCustomMapper.updateUserPW(userCustom);
            baseJson.setErrorCode("0001");
            baseJson.setBeanObject(userRes);
            SessionUtil.setSessionPhoneType(httpSession, userRes.getPhone(), userRes.getUsertype());
        } else
            baseJson.setErrorCode("1001");
        return baseJson;
    }

}

