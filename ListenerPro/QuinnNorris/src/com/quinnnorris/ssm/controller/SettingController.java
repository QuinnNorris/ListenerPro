package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.bean.CertCustom;
import com.quinnnorris.ssm.bean.UserCustom;
import com.quinnnorris.ssm.service.impl.SettingServiceImpl;
import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.EmailSend;
import com.quinnnorris.ssm.util.HeadpUtil;
import com.quinnnorris.ssm.util.SessionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;

/**
 * Title: SettingController
 * Description: 接收并处理关于个人设置的请求
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/1 下午10:29 星期日
 * @author: quinn_norris
 * @version: 1.0
 */
@Controller
public class SettingController {

    @Autowired
    SettingServiceImpl settingService;

    /**
     * 更新用户头像，将用户头像根据时间命名，并存储在服务器项目中
     *
     * @param headFile    用户头像文件
     * @param httpSession 服务器session
     * @return 返回空BaseJson对象
     */
    @RequestMapping(value = "/UpdateUserHeadp", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson updatUserHeadp(@RequestParam MultipartFile headFile, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(headFile)) return new BaseJson("404");
        String headPath = "/Users/quinn_norris/Desktop/GITHUB/Listener/ListenerPro/QuinnNorris/web/res/head";
        String fileStr = HeadpUtil.insertHeadp(headFile, headPath);
        UserCustom userCustom = new UserCustom();
        userCustom.setHeadp(fileStr);
        userCustom.setPhone((String) (httpSession.getAttribute("phone")));
        settingService.updateUserHeadp(userCustom, httpSession);
        return new BaseJson();
    }

    /**
     * 更新用户的用户名，并刷新session
     *
     * @param username    用户名
     * @param httpSession 服务器session
     * @return 返回空BaseJson数据
     */
    @RequestMapping(value = "/UpdateUserName", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson updateUserName(@RequestParam String username, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(username)) return new BaseJson("404");
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) (httpSession.getAttribute("phone")));
        userCustom.setUsername(username);
        settingService.updateUserName(userCustom, httpSession);
        return new BaseJson();
    }

    /**
     * 发出希望更改绑定邮箱的请求
     *
     * @param email       希望请求更改的邮箱
     * @param httpSession 服务器session
     * @return 返回相应BaseJson结果如果成功返送则返回0001否则失败返回1001
     */
    @RequestMapping(value = "/AddEmailRequest", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson addEmailRequest(@RequestParam String email, HttpSession httpSession) {
        boolean hasSccess = true;
        BaseJson baseJson = new BaseJson();
        if (SessionUtil.paramHasNull(email)) return new BaseJson("404");
        String htmlPath = "/Users/quinn_norris/Desktop/GITHUB/Listener/ListenerPro/QuinnNorris/web/res/html/Mailhtml.html";
        try {
            EmailSend.sendMail(email, (String) (httpSession.getAttribute("phone")), "【倾听者Listener】验证绑定邮箱",
                    EmailSend.htmlMailToString(htmlPath, (String) (httpSession.getAttribute("phone"))));
        } catch (Exception e) {
            e.printStackTrace();
            hasSccess = false;
        }
        if (!hasSccess) baseJson.setErrorCode("1001");
        else baseJson.setErrorCode("0001");
        return baseJson;
    }

    /**
     * 绑定用户邮箱
     *
     * @param phone       用户phone路径
     * @param email       用户绑定邮箱路径
     * @param httpSession 服务器session
     * @return 返回页面
     */
    @RequestMapping(value = "/AddUserEmail/{phone}/{email}")
    public String addUserEmail(@PathVariable String phone, @PathVariable String email, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(email, phone)) return "404";
        UserCustom userCustom = new UserCustom();
        userCustom.setPhone((String) (httpSession.getAttribute("phone")));
        userCustom.setEmail(email);
        settingService.addUserEmail(userCustom);
        return "EmailAddSccess";
    }

    /**
     * 更改用户密码
     *
     * @param pw          用户新密码
     * @param httpSession 用户服务器session
     * @return 返回0001当成功时，访问不到页面则返回404
     */
    @RequestMapping(value = "/UpdateUserPW", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson updateUserPW(@RequestParam String pw, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(pw)) return new BaseJson("404");
        UserCustom userCustom = new UserCustom();
        userCustom.setPassword(pw);
        userCustom.setPhone((String) (httpSession.getAttribute("phone")));
        settingService.updateUserPW(userCustom);
        return new BaseJson("0001");
    }

    /**
     * 用户注册专家资格
     *
     * @param certphoto   用户上传证书照片
     * @param name        用户真实姓名
     * @param certID      证件编号
     * @param cardID      身份证编号
     * @param level       证书等级（二级，三级）
     * @param httpSession 服务器sessino
     * @return 返回结果BaseJson
     */
    @RequestMapping(value = "/InsertCertUser", method = RequestMethod.POST)
    @ResponseBody
    public BaseJson insertCertUser(@RequestParam MultipartFile certphoto, @RequestParam String name, @RequestParam String certID,
                                   @RequestParam String cardID, @RequestParam String level, HttpSession httpSession) {
        if (SessionUtil.paramHasNull(certphoto, name, certID, cardID, level)) return new BaseJson("404");
        String headPath = "/Users/quinn_norris/Desktop/GITHUB/Listener/ListenerPro/QuinnNorris/web/res/certificate";
        String fileStr = HeadpUtil.insertHeadp(certphoto, headPath);
        CertCustom certCustom = new CertCustom();
        certCustom.setCardID(cardID);
        certCustom.setCertID(certID);
        certCustom.setName(name);
        certCustom.setCertphoto(fileStr);
        certCustom.setLevel(level);
        settingService.insertCertUser(certCustom, httpSession);
        return new BaseJson("0001");
    }



}
