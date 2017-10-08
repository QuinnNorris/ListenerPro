package com.quinnnorris.ssm.controller;

import com.quinnnorris.ssm.util.BaseJson;
import com.quinnnorris.ssm.util.EmailSend;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.PublicKey;

/**
 * Title: EmailController
 * Description:马车信箱模块，发送邮件给开发者
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/8 上午11:07 星期日
 * @author: quinn_norris
 * @version: 1.0
 */
public class EmailController {

    /**
     * 跳转至马车信箱界面
     *
     * @return 返回马车信箱jsp
     */
    @RequestMapping("/sendEmail")
    public String toSendEmailPage() {
        return "SendEmail";
    }

    /**
     * 向开发者邮箱发送一封邮件，并返回发送情况状态
     *
     * @param username 发送信件的用户名称
     * @param phone 发送信件的手机号码
     * @param emails 信件内容
     * @return 返回0001，发送成功；返回1001，发送遇到问题
     */
    @RequestMapping(value = "/postEmail", method = RequestMethod.POST)
    public BaseJson postEmail(@RequestParam String username, @RequestParam String phone, @RequestParam String emails) {
        BaseJson baseJson = new BaseJson("0001");
        try {
            EmailSend.sendMail("sei_qnz2015@126.com",
                    phone + " " + username, "意见反馈", emails);
        } catch (Exception e) {
            e.printStackTrace();
            baseJson.setErrorCode("1001");
        }
        return baseJson;
    }


}
