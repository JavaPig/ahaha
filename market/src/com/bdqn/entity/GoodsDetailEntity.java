package com.bdqn.entity;

import java.util.Objects;
/*商品详细信息表*/
public class GoodsDetailEntity {
    private int detailNo;
    private String goodName;

    public int getDetailNo() {
        return detailNo;
    }

    public void setDetailNo(int detailNo) {
        this.detailNo = detailNo;
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
        GoodsDetailEntity that = (GoodsDetailEntity) o;
        return detailNo == that.detailNo &&
                Objects.equals(goodName, that.goodName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(detailNo, goodName);
    }
}
