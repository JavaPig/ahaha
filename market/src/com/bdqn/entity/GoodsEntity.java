package com.bdqn.entity;

import java.util.Objects;
/*商品表*/
public class GoodsEntity {
    private int goodNo;
    private String goodName;
    private String branName;

    public int getGoodNo() {
        return goodNo;
    }

    public void setGoodNo(int goodNo) {
        this.goodNo = goodNo;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public String getBranName() {
        return branName;
    }

    public void setBranName(String branName) {
        this.branName = branName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        GoodsEntity that = (GoodsEntity) o;
        return goodNo == that.goodNo &&
                Objects.equals(goodName, that.goodName) &&
                Objects.equals(branName, that.branName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(goodNo, goodName, branName);
    }
}
