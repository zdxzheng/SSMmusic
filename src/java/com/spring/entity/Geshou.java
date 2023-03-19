package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Geshou implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String geshoubianhao;
    private String zhaopian;
    private String xingming;
    private String diqu;
    private String xingbie;
    private String gongsi;
    private String gerenjianjie;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGeshoubianhao() {
        return geshoubianhao;
    }

    public void setGeshoubianhao(String geshoubianhao) {
        this.geshoubianhao = geshoubianhao;
    }

    public String getZhaopian() {
        return zhaopian;
    }

    public void setZhaopian(String zhaopian) {
        this.zhaopian = zhaopian;
    }

    public String getXingming() {
        return xingming;
    }

    public void setXingming(String xingming) {
        this.xingming = xingming;
    }

    public String getDiqu() {
        return diqu;
    }

    public void setDiqu(String diqu) {
        this.diqu = diqu;
    }

    public String getXingbie() {
        return xingbie;
    }

    public void setXingbie(String xingbie) {
        this.xingbie = xingbie;
    }

    public String getGongsi() {
        return gongsi;
    }

    public void setGongsi(String gongsi) {
        this.gongsi = gongsi;
    }

    public String getGerenjianjie() {
        return gerenjianjie;
    }

    public void setGerenjianjie(String gerenjianjie) {
        this.gerenjianjie = gerenjianjie;
    }
}
