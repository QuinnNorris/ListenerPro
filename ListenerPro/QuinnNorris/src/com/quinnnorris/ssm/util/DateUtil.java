package com.quinnnorris.ssm.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Title: DataUtil
 * Description:日期格式的转换工具
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/9 下午3:01 星期六
 * @author: quinn_norris
 * @version: 1.0
 */
public class DateUtil {

    private static final String lineType = "yyyy-MM-dd HH-mm-ss";
    private static final String continueType = "yyyyMMddHHmmss";

    /**
     * Date类数据转换成横线分割的日期字符串
     *
     * @param date 要转换的日期
     * @return 返回的normal日期字符串
     * @throws ParseException
     */
    public static String LineDateFormat(Date date) throws ParseException {
        return new SimpleDateFormat(lineType).format(date);
    }

    /**
     * Date类数据转换成密集连续的日期字符串
     *
     * @param date 要转换的日期
     * @return 返回的normal日期字符串
     * @throws ParseException
     */
    public static String continueDateFormat(Date date) throws ParseException {
        return new SimpleDateFormat(continueType).format(date);
    }


}
