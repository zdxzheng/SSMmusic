package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Pinglunhuifu implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer pinglunid;
    private String biao;
    private Integer biaoid;
    private String biaoti;
    private String pinglunneirong;
    private String pinglunren;
    private String huifuneirong;
    private String huifuren;
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPinglunid() {
        return pinglunid;
    }

    public void setPinglunid(Integer pinglunid) {
        this.pinglunid = pinglunid;
    }

    public String getBiao() {
        return biao;
    }

    public void setBiao(String biao) {
        this.biao = biao;
    }

    public Integer getBiaoid() {
        return biaoid;
    }

    public void setBiaoid(Integer biaoid) {
        this.biaoid = biaoid;
    }

    public String getBiaoti() {
        return biaoti;
    }

    public void setBiaoti(String biaoti) {
        this.biaoti = biaoti;
    }

    public String getPinglunneirong() {
        return pinglunneirong;
    }

    public void setPinglunneirong(String pinglunneirong) {
        this.pinglunneirong = pinglunneirong;
    }

    public String getPinglunren() {
        return pinglunren;
    }

    public void setPinglunren(String pinglunren) {
        this.pinglunren = pinglunren;
    }

    public String getHuifuneirong() {
        return huifuneirong;
    }

    public void setHuifuneirong(String huifuneirong) {
        this.huifuneirong = huifuneirong;
    }

    public String getHuifuren() {
        return huifuren;
    }

    public void setHuifuren(String huifuren) {
        this.huifuren = huifuren;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
