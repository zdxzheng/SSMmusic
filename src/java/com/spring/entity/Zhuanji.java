package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Zhuanji implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String zhuanjibianhao;
    private String zhuanjimingcheng;
    private String zhuanjitupian;
    private String faxinggeshou;
    private String faxingshijian;
    private Double jiage;
    private String zhuanjixiangqing;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getZhuanjitupian() {
        return zhuanjitupian;
    }

    public void setZhuanjitupian(String zhuanjitupian) {
        this.zhuanjitupian = zhuanjitupian;
    }

    public String getFaxinggeshou() {
        return faxinggeshou;
    }

    public void setFaxinggeshou(String faxinggeshou) {
        this.faxinggeshou = faxinggeshou;
    }

    public String getFaxingshijian() {
        return faxingshijian;
    }

    public void setFaxingshijian(String faxingshijian) {
        this.faxingshijian = faxingshijian;
    }

    public Double getJiage() {
        return jiage;
    }

    public void setJiage(Double jiage) {
        this.jiage = jiage;
    }

    public String getZhuanjixiangqing() {
        return zhuanjixiangqing;
    }

    public void setZhuanjixiangqing(String zhuanjixiangqing) {
        this.zhuanjixiangqing = zhuanjixiangqing;
    }
}
