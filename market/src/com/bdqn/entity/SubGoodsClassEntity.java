package com.bdqn.entity;

import java.util.Objects;
/*商品子分类*/
public class SubGoodsClassEntity {
    private int subcNo;
    private String subName;
    private String cName;

    public int getSubcNo() {
        return subcNo;
    }

    public void setSubcNo(int subcNo) {
        this.subcNo = subcNo;
    }

    public String getSubName() {
        return subName;
    }

    public void setSubName(String subName) {
        this.subName = subName;
    }

    public String getcName() {
        return cName;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SubGoodsClassEntity that = (SubGoodsClassEntity) o;
        return subcNo == that.subcNo &&
                Objects.equals(subName, that.subName) &&
                Objects.equals(cName, that.cName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(subcNo, subName, cName);
    }
}
