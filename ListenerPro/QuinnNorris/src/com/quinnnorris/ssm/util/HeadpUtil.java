package com.quinnnorris.ssm.util;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.Date;

/**
 * Title: HeadpUtil
 * Description:
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/28 下午8:47 星期四
 * @author: quinn_norris
 * @version: 1.0
 */
public class HeadpUtil {

    /**
     * 将参数file中文件存入filePath文件下返回jsp中引用路径
     *
     * @param file springMVC自带文件传输类，通过transferTo方法存入文件中
     * @return 返回一个能够在jsp页面中正常使用的路径写法
     */
    public static String insertHeadp(MultipartFile file, String filePath) {
        String fileStr = "";
        if (!file.isEmpty()) {
            try {
                //默认情况引用路径：
                //String filePath = httpSession.getServletContext().getRealPath("/") + "headPortrait";
                //String filePath = "/Users/quinn_norris/Desktop/GITHUB/IHanYu/i_hanyu/IHanYu/web/res/head";
                //获取文件原名称：
                //String fileName = file.getOriginalFilename();
                String[] filetype = file.getContentType().split("/");
                String fileName = DateUtil.continueDateFormat(new Date()) + "." + filetype[1];
                File targetFile = new File(filePath, fileName);
                fileStr = "/res/head/" + fileName;
                file.transferTo(targetFile);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return fileStr;
    }

    /**
     * 随机给用户分配十个默认头像中的一个
     *
     * @return 返回十个随机头像中的一个，可被jsp引用的路径
     */
    public static String randomHeadp() {
        int randomNumber = ((int) Math.random() * 10);
        return "../res/head/userheadp" + (randomNumber+1) + ".jpg";
    }

}
