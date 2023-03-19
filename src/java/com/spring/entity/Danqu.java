package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Danqu implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String gequbianhao;
    private String tupian;
    private String geshou;
    private String qufeng;
    private String gequmingcheng;
    private Double jiage;
    private String faburiqi;
    private String gequ;
    private String geci;
    private String faburen;
    private String issh;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGequbianhao() {
        return gequbianhao;
    }

    public void setGequbianhao(String gequbianhao) {
        this.gequbianhao = gequbianhao;
    }

    public String getTupian() {
        return tupian;
    }

    public void setTupian(String tupian) {
        this.tupian = tupian;
    }

    public String getGeshou() {
        return geshou;
    }

    public void setGeshou(String geshou) {
        this.geshou = geshou;
    }

    public String getQufeng() {
        return qufeng;
    }

    public void setQufeng(String qufeng) {
        this.qufeng = qufeng;
    }

    public String getGequmingcheng() {
        return gequmingcheng;
    }

    public void setGequmingcheng(String gequmingcheng) {
        this.gequmingcheng = gequmingcheng;
    }

    public Double getJiage() {
        return jiage;
    }

    public void setJiage(Double jiage) {
        this.jiage = jiage;
    }

    public String getFaburiqi() {
        return faburiqi;
    }

    public void setFaburiqi(String faburiqi) {
        this.faburiqi = faburiqi;
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

    public String getFaburen() {
        return faburen;
    }

    public void setFaburen(String faburen) {
        this.faburen = faburen;
    }

    public String getIssh() {
        return issh;
    }

    public void setIssh(String issh) {
        this.issh = issh;
    }
}
