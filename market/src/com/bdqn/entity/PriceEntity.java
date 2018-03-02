package com.bdqn.entity;

import java.util.Objects;
/*商品价格表*/
public class PriceEntity {
    private int priceNo;
    private Integer price;
    private String goodName;

    public int getPriceNo() {
        return priceNo;
    }

    public void setPriceNo(int priceNo) {
        this.priceNo = priceNo;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
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
        PriceEntity that = (PriceEntity) o;
        return priceNo == that.priceNo &&
                Objects.equals(price, that.price) &&
                Objects.equals(goodName, that.goodName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(priceNo, price, goodName);
    }
}
