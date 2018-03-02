package com.bdqn.entity;

import java.util.Objects;
/*推荐商品表*/
public class RecommendGoodsEntity {
    private int recoNo;
    private String goodName;

    public int getRecoNo() {
        return recoNo;
    }

    public void setRecoNo(int recoNo) {
        this.recoNo = recoNo;
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
        RecommendGoodsEntity that = (RecommendGoodsEntity) o;
        return recoNo == that.recoNo &&
                Objects.equals(goodName, that.goodName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(recoNo, goodName);
    }
}
