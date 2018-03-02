package com.bdqn.entity;

import java.util.Objects;
/*商品售后表*/
public class AfterSaleEntity {
    private int afteNo;
    private String afteDesc;
    private String goodName;

    public int getAfteNo() {
        return afteNo;
    }

    public void setAfteNo(int afteNo) {
        this.afteNo = afteNo;
    }

    public String getAfteDesc() {
        return afteDesc;
    }

    public void setAfteDesc(String afteDesc) {
        this.afteDesc = afteDesc;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        AfterSaleEntity that = (AfterSaleEntity) o;
        return afteNo == that.afteNo &&
                Objects.equals(afteDesc, that.afteDesc) &&
                Objects.equals(goodName, that.goodName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(afteNo, afteDesc, goodName);
    }
}
