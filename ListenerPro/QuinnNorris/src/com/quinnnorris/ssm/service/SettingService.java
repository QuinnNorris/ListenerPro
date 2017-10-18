package com.quinnnorris.ssm.service;

import com.quinnnorris.ssm.bean.*;
import com.quinnnorris.ssm.util.BaseJson;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

/**
 * Title: SettingService
 * Description: 关于描述设置的业务逻辑的接口
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

    public BaseJson addNewComponent(ComponentCustom componentCustom, HttpSession httpSession);

    public void addNewCompMapping(CompUsingCustom compUsingCustom, HttpSession httpSession);

    public void insertselfLabel(LabelCustom labelCustom, HttpSession httpSession);

    public void updateCustomLabel(LabelCustom labelCustom, HttpSession httpSession);

    public void updateFindLabel(LabelCustom labelCustom, HttpSession httpSession);

    public void updateStarsLabel(LabelCustom labelCustom, HttpSession httpSession);

    public void getUserInfo(String phone,Model model);
}
