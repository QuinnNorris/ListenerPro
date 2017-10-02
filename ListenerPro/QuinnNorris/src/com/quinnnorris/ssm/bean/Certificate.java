package com.quinnnorris.ssm.bean;

import java.util.Date;

/**
 * Title: Certificate
 * Description: 映射数据库中的Certificate表
 * Company: www.QuinnNorris.com
 *
 * @date: 2017/10/2 下午5:33 星期一
 * @author: quinn_norris
 * @version: 1.0
 */
public class Certificate {

    private int id;
    private String name;
    private String certphoto;
    private String certID;
    private String cardID;
    private Date uploadTime;
    private Date verificationTime;
    private String isVerification;
    private String level;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCertphoto() {
        return certphoto;
    }

    public void setCertphoto(String certphoto) {
        this.certphoto = certphoto;
    }

    public String getCertID() {
        return certID;
    }

    public void setCertID(String certID) {
        this.certID = certID;
    }

    public String getCardID() {
        return cardID;
    }

    public void setCardID(String cardID) {
        this.cardID = cardID;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    public Date getVerificationTime() {
        return verificationTime;
    }

    public void setVerificationTime(Date verificationTime) {
        this.verificationTime = verificationTime;
    }

    public String getIsVerification() {
        return isVerification;
    }

    public void setIsVerification(String isVerification) {
        this.isVerification = isVerification;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
}
