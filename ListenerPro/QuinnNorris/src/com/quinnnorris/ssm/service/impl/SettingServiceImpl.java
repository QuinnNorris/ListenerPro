package com.quinnnorris.ssm.service.impl;

import com.quinnnorris.ssm.bean.*;
import com.quinnnorris.ssm.mapper.*;
import com.quinnnorris.ssm.service.SettingService;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Date;

/**
 * Title: SettingServiceImpl
 * Description: 系统逻辑处理
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

    @Autowired
    CertCustomMapper certCustomMapper;

    @Autowired
    CompUsingCustomMapper compUsingCustomMapper;

    @Autowired
    ComponentCustomMapper componentCustomMapper;

    @Autowired
    WorkCustomMapper workCustomMapper;

    @Autowired
    LabelCustomMapper labelCustomMapper;

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

    /**
     * 更新用户的新密码
     *
     * @param userCustom 填充了phone和pw
     */
    @Override
    public void updateUserPW(UserCustom userCustom) {
        userCustomMapper.updateUserPW(userCustom);
    }

    /**
     * 通过所有的数据在证书信息表中插入一条记录
     *
     * @param certCustom  关于表中所有信息
     * @param httpSession 服务器session
     */
    @Override
    public void insertCertUser(CertCustom certCustom, HttpSession httpSession) {
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) httpSession.getAttribute("phone"));
        certCustom.setUploadTime(new Date());
        certCustom.setIsVerification("0");
        certCustom.setId(userCustomMapper.selectUserByPhone(userCustom).getId());
        certCustomMapper.insertCert(certCustom);
    }

    /**
     * 更改用户启用组件的状态
     *
     * @param compUsingCustom 填充了所有项
     * @param httpSession     服务器session
     */
    @Override
    public BaseJson changeComponentUsingType(CompUsingCustom compUsingCustom, HttpSession httpSession) {
        BaseJson baseJson = new BaseJson();
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) httpSession.getAttribute("phone"));
        compUsingCustom.setId(userCustomMapper.selectUserByPhone(userCustom).getId());
        compUsingCustomMapper.updateWithIdAndCom_id(compUsingCustom);
        baseJson.setBeanObject(compUsingCustom);
        return baseJson;
    }

    /**
     * 添加新的组件到数据库中，先不做存在查询
     *
     * @param componentCustom 填充所有数据
     * @param httpSession     服务器session
     */
    @Override
    public BaseJson addNewComponent(ComponentCustom componentCustom, HttpSession httpSession) {
        BaseJson baseJson = new BaseJson();
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) httpSession.getAttribute("phone"));
        componentCustom.setCreate_id(userCustomMapper.selectUserByPhone(userCustom).getId());
        ComponentCustom componentCustom1 = componentCustomMapper.insertComponent(componentCustom);
        baseJson.setBeanObject(componentCustom1);
        return baseJson;
    }

    /**
     * 在comp_using表中添加新的映射关系
     *
     * @param compUsingCustom 添加所有字段
     * @param httpSession     服务器session
     */
    @Override
    public void addNewCompMapping(CompUsingCustom compUsingCustom, HttpSession httpSession) {
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) httpSession.getAttribute("phone"));
        compUsingCustom.setId(userCustomMapper.selectUserByPhone(userCustom).getId());
        compUsingCustomMapper.insertWithIdAndCom_id(compUsingCustom);
    }

    /**
     * 在label表中添加相关用户的个人标签信息
     *
     * @param labelCustom 关于标签的一部分字段
     * @param httpSession 服务器session
     */
    @Override
    public void insertselfLabel(LabelCustom labelCustom, HttpSession httpSession) {
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) httpSession.getAttribute("phone"));
        labelCustom.setId(userCustomMapper.selectUserByPhone(userCustom).getId());
        WorkCustom workCustom = new WorkCustom();
        workCustom.setWork_id(labelCustom.getWork_id());
        labelCustom.setWork_id(workCustomMapper.selectWorkerById(workCustom).getWork_id());
        LabelCustom custom = labelCustomMapper.selectLabelById(labelCustom);
        if (custom == null) labelCustomMapper.insertSelfLabel(labelCustom);
        else labelCustomMapper.updateSelfLabel(labelCustom);
    }

    /**
     * 在label表中添加关于自定义标签的部分信息
     *
     * @param labelCustom 填充关于自定义标签部分信息和id
     * @param httpSession 服务器session
     */
    @Override
    public void updateCustomLabel(LabelCustom labelCustom, HttpSession httpSession) {
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) httpSession.getAttribute("phone"));
        labelCustom.setId(userCustomMapper.selectUserByPhone(userCustom).getId());
        labelCustomMapper.updateCustomLabel(labelCustom);
    }

    /**
     * 在label表中添加关于寻找对象标签的部分信息
     *
     * @param labelCustom 填充关于寻找配对对象标签部分信息和id
     * @param httpSession 服务器session
     */
    @Override
    public void updateFindLabel(LabelCustom labelCustom, HttpSession httpSession) {
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) httpSession.getAttribute("phone"));
        labelCustom.setId(userCustomMapper.selectUserByPhone(userCustom).getId());
        WorkCustom workCustom = new WorkCustom();
        workCustom.setWork_id(labelCustom.getWork_id());
        labelCustom.setWork_id(workCustomMapper.selectWorkerById(workCustom).getWork_id());
        labelCustomMapper.updateFindLabel(labelCustom);
    }

    /**
     * 在label表中更新评星信息
     *
     * @param labelCustom 填充stars和id
     * @param httpSession 服务器session
     */
    @Override
    public void updateStarsLabel(LabelCustom labelCustom, HttpSession httpSession) {
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) httpSession.getAttribute("phone"));
        labelCustom.setId(userCustomMapper.selectUserByPhone(userCustom).getId());
        labelCustomMapper.updateStars(labelCustom);
    }


}
