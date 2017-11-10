package com.listener.bean;

/**
 * Title: Component
 * Description:映射数据库中的component表
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/2 下午11:19 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
public class Component {

    private int com_id;
    private int create_id;
    private int com_type;
    private String com_name;
    private String innertest;
    private int length;
    private String color;

    public int getCom_id() {
        return com_id;
    }

    public void setCom_id(int com_id) {
        this.com_id = com_id;
    }

    public int getCreate_id() {
        return create_id;
    }

    public void setCreate_id(int create_id) {
        this.create_id = create_id;
    }

    public int getCom_type() {
        return com_type;
    }

    public void setCom_type(int com_type) {
        this.com_type = com_type;
    }

    public String getCom_name() {
        return com_name;
    }

    public void setCom_name(String com_name) {
        this.com_name = com_name;
    }

    public String getInnertest() {
        return innertest;
    }

    public void setInnertest(String innertest) {
        this.innertest = innertest;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }
}
