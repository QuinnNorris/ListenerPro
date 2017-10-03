package com.quinnnorris.ssm.bean;

/**
 * Title: Comp_using
 * Description: 映射数据库中comp_using这张表
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/3 上午8:45 星期二
 * @author: quinn_norris
 * @version: 1.0
 */
public class Comp_using {

    private int id;
    private int com_id;
    private int use_type;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCom_id() {
        return com_id;
    }

    public void setCom_id(int com_id) {
        this.com_id = com_id;
    }

    public int getUse_type() {
        return use_type;
    }

    public void setUse_type(int use_type) {
        this.use_type = use_type;
    }
}
