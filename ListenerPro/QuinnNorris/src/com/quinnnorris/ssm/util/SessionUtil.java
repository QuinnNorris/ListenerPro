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

}
