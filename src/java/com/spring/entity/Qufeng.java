package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Qufeng implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String qufengmingcheng;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getQufengmingcheng() {
        return qufengmingcheng;
    }

    public void setQufengmingcheng(String qufengmingcheng) {
        this.qufengmingcheng = qufengmingcheng;
    }
}
