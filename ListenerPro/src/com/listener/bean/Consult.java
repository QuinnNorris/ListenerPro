package com.listener.bean;

import java.util.Date;

/**
 * Title: Consult
 * Description:关于数据库中consult表的映射表
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/6 下午8:12 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
public class Consult {

    private int id;
    private int user_id;
    private int expert_id;
    private String number;
    private Date time;
    private String place;
    private int payment;
    private int paid;
    private int state;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getExpert_id() {
        return expert_id;
    }

    public void setExpert_id(int expert_id) {
        this.expert_id = expert_id;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public int getPayment() {
        return payment;
    }

    public void setPayment(int payment) {
        this.payment = payment;
    }

    public int getPaid() {
        return paid;
    }

    public void setPaid(int paid) {
        this.paid = paid;
    }

    public int getState() {
        return state;
    }

    public void setState(int state) {
        this.state = state;
    }
}
