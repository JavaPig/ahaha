package com.bdqn.entity;

import java.util.Objects;
/*商品参数*/
public class GoodsParamEntity {
    private int paramNo;
    private String paramName;/*参数信息*/
    private String goodName;

    public int getParamNo() {
        return paramNo;
    }

    public void setParamNo(int paramNo) {
        this.paramNo = paramNo;
    }

    public String getParamName() {
        return paramName;
    }

    public void setParamName(String paramName) {
        this.paramName = paramName;
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
        GoodsParamEntity that = (GoodsParamEntity) o;
        return paramNo == that.paramNo &&
                Objects.equals(paramName, that.paramName) &&
                Objects.equals(goodName, that.goodName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(paramNo, paramName, goodName);
    }
}
