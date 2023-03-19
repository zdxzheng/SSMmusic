package com.spring.entity;

import java.io.Serializable;
import java.util.Date;

public class Diqu implements Serializable {

    private static final long serialVersionUID = 1L;
    private Integer id;

    private String diqumingcheng;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDiqumingcheng() {
        return diqumingcheng;
    }

    public void setDiqumingcheng(String diqumingcheng) {
        this.diqumingcheng = diqumingcheng;
    }
}
