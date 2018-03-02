package com.bdqn.entity;

import java.util.Objects;
/*商品状态表*/
public class GoodsStatusEntity {
    private int statusNo;
    private String goodsSta;/*商品状态*/
    private String goodName;

    public int getStatusNo() {
        return statusNo;
    }

    public void setStatusNo(int statusNo) {
        this.statusNo = statusNo;
    }

    public String getGoodsSta() {
        return goodsSta;
    }

    public void setGoodsSta(String goodsSta) {
        this.goodsSta = goodsSta;
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
        GoodsStatusEntity that = (GoodsStatusEntity) o;
        return statusNo == that.statusNo &&
                Objects.equals(goodsSta, that.goodsSta) &&
                Objects.equals(goodName, that.goodName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(statusNo, goodsSta, goodName);
    }
}
