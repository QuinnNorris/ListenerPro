package com.listener.bean;

import java.util.Date;

/**
 * Title: User
 * Description: 对应数据库user表的映射
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/9/29 上午10:54 星期五
 * @author: quinn_norris
 * @version: 1.0
 */
public class User {

    private int id;
    private String phone;
    private String password;
    private String username;
    private String headp;
    private Date regtime;
    private int usertype;
    private String email;
    private String addr;
    private String info;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getHeadp() {
        return headp;
    }

    public void setHeadp(String headp) {
        this.headp = headp;
    }

    public Date getRegtime() {
        return regtime;
    }

    public void setRegtime(Date regtime) {
        this.regtime = regtime;
    }

    public int getUsertype() {
        return usertype;
    }

    public void setUsertype(int usertype) {
        this.usertype = usertype;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddr() {
        return addr;
    }

    public void setAddr(String addr) {
        this.addr = addr;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }
}
