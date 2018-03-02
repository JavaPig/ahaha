package com.bdqn.entity;

import java.util.Objects;
/*品牌分类表*/
public class BrandEntity {
    private int branNo;
    private String branName;
    private String subName;



    public int getBranNo() {
        return branNo;
    }

    public void setBranNo(int branNo) {
        this.branNo = branNo;
    }



    public String getBranName() {
        return branName;
    }

    public void setBranName(String branName) {
        this.branName = branName;
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
        BrandEntity that = (BrandEntity) o;
        return branNo == that.branNo &&
                Objects.equals(branName, that.branName) &&
                Objects.equals(subName, that.subName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(branNo, branName, subName);
    }
}
