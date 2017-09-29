package com.quinnnorris.ssm.util;

import javax.servlet.http.HttpSession;
import java.util.Enumeration;

/**
 * Title: SessionUtil
 * Description: 关于session中信息操作
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/28 下午8:38 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
public class SessionUtil {

    /**
     * 初始化session，将session中数据清空
     *
     * @param httpSession
     */
    public static void initSession(HttpSession httpSession) {
        Enumeration<String> attributeNames = httpSession.getAttributeNames();
        while (attributeNames.hasMoreElements())
            httpSession.removeAttribute(attributeNames.nextElement());
    }


    /**
     * 向session中填充信息
     *
     * @param httpSession 浏览器中的session
     * @param phone       被填充的phone信息
     * @param usertype    被填充的usertype信息
     */
    public static void setSessionPhoneType(HttpSession httpSession, String phone, int usertype) {
        httpSession.setAttribute("phone", phone);
        httpSession.setAttribute("usertype", usertype);
    }

}
