package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Shoucang implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String username;
    private Integer xwid;
    private String biao;
    private String biaoti;
    private String addtime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Integer getXwid() {
        return xwid;
    }

    public void setXwid(Integer xwid) {
        this.xwid = xwid;
    }

    public String getBiao() {
        return biao;
    }

    public void setBiao(String biao) {
        this.biao = biao;
    }

    public String getBiaoti() {
        return biaoti;
    }

    public void setBiaoti(String biaoti) {
        this.biaoti = biaoti;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
