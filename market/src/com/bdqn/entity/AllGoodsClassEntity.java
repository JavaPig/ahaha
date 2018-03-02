package com.bdqn.entity;

import java.util.Objects;
    /*所有商品分类表*/

public class AllGoodsClassEntity {
    private int cNo;
    private String cName;


    public int getcNo() {
        return cNo;
    }

    public void setcNo(int cNo) {
        this.cNo = cNo;
    }


    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }
}
