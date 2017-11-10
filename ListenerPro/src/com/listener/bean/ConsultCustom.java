package com.listener.bean;

/**
 * Title: ConsultCustom
 * Description:数据库中关于consult表的映射表
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/6 下午8:14 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
public class ConsultCustom extends Consult {

    private int startPos;
    private int pageSize;

    public int getStartPos() {
        return startPos;
    }

    public void setStartPos(int startPos) {
        this.startPos = startPos;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
}
