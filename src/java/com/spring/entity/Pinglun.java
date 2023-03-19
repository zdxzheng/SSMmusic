package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Pinglun implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String biao;
    private Integer biaoid;
    private String biaoti;
    private String pingfen;
    private String pinglunneirong;
    private String pinglunren;
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getPingfen() {
        return pingfen;
    }

    public void setPingfen(String pingfen) {
        this.pingfen = pingfen;
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

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
