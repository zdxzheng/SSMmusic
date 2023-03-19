package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Zhuanjigequ implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private Integer zhuanjiid;
    private String zhuanjibianhao;
    private String zhuanjimingcheng;
    private String faxinggeshou;
    private String zhuanjitupian;
    private String gequmingcheng;
    private String gequ;
    private String geci;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getZhuanjiid() {
        return zhuanjiid;
    }

    public void setZhuanjiid(Integer zhuanjiid) {
        this.zhuanjiid = zhuanjiid;
    }

    public String getZhuanjibianhao() {
        return zhuanjibianhao;
    }

    public void setZhuanjibianhao(String zhuanjibianhao) {
        this.zhuanjibianhao = zhuanjibianhao;
    }

    public String getZhuanjimingcheng() {
        return zhuanjimingcheng;
    }

    public void setZhuanjimingcheng(String zhuanjimingcheng) {
        this.zhuanjimingcheng = zhuanjimingcheng;
    }

    public String getFaxinggeshou() {
        return faxinggeshou;
    }

    public void setFaxinggeshou(String faxinggeshou) {
        this.faxinggeshou = faxinggeshou;
    }

    public String getZhuanjitupian() {
        return zhuanjitupian;
    }

    public void setZhuanjitupian(String zhuanjitupian) {
        this.zhuanjitupian = zhuanjitupian;
    }

    public String getGequmingcheng() {
        return gequmingcheng;
    }

    public void setGequmingcheng(String gequmingcheng) {
        this.gequmingcheng = gequmingcheng;
    }

    public String getGequ() {
        return gequ;
    }

    public void setGequ(String gequ) {
        this.gequ = gequ;
    }

    public String getGeci() {
        return geci;
    }

    public void setGeci(String geci) {
        this.geci = geci;
    }
}
