package com.bdqn.entity;

import java.util.Objects;
/*商品筛选分类表*/
public class GoodsSiftEntity {
    private int siftNo;/*分类编号*/
    private String siftName;/*筛选分类名称*/
    private String subName;/*子分类编号*/

    public int getSiftNo() {
        return siftNo;
    }

    public void setSiftNo(int siftNo) {
        this.siftNo = siftNo;
    }

    public String getSiftName() {
        return siftName;
    }

    public void setSiftName(String siftName) {
        this.siftName = siftName;
    }

    public String getSubName() {
        return subName;
    }

    public void setSubName(String subName) {
        this.subName = subName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        GoodsSiftEntity that = (GoodsSiftEntity) o;
        return siftNo == that.siftNo &&
                Objects.equals(siftName, that.siftName) &&
                Objects.equals(subName, that.subName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(siftNo, siftName, subName);
    }
}
