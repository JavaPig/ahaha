package com.bdqn.entity;

import java.util.Objects;
/*包装清单表*/
public class PackageListEntity {
    private int listNo;
    private String listDetail;/*清单信息*/
    private String goodName;

    public int getListNo() {
        return listNo;
    }

    public void setListNo(int listNo) {
        this.listNo = listNo;
    }

    public String getListDetail() {
        return listDetail;
    }

    public void setListDetail(String listDetail) {
        this.listDetail = listDetail;
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
        PackageListEntity that = (PackageListEntity) o;
        return listNo == that.listNo &&
                Objects.equals(listDetail, that.listDetail) &&
                Objects.equals(goodName, that.goodName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(listNo, listDetail, goodName);
    }
}
