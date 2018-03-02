package com.bdqn.entity;

import java.util.Objects;
/*商品配送地表*/
public class DeliveryAddrEntity {
    private int addrNo;
    private String addrName;
    private String goodName;

    public int getAddrNo() {
        return addrNo;
    }

    public void setAddrNo(int addrNo) {
        this.addrNo = addrNo;
    }

    public String getAddrName() {
        return addrName;
    }

    public void setAddrName(String addrName) {
        this.addrName = addrName;
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
        DeliveryAddrEntity that = (DeliveryAddrEntity) o;
        return addrNo == that.addrNo &&
                Objects.equals(addrName, that.addrName) &&
                Objects.equals(goodName, that.goodName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(addrNo, addrName, goodName);
    }
}
