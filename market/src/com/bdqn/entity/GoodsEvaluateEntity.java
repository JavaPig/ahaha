package com.bdqn.entity;

import java.util.Objects;
/*商品评价表*/
public class GoodsEvaluateEntity {
    private int evalNo;/*评价编号*/
    private String evalDesc;/*评价信息*/
    private String goodName;/*商品名称*/

    public int getEvalNo() {
        return evalNo;
    }

    public void setEvalNo(int evalNo) {
        this.evalNo = evalNo;
    }

    public String getEvalDesc() {
        return evalDesc;
    }

    public void setEvalDesc(String evalDesc) {
        this.evalDesc = evalDesc;
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
        GoodsEvaluateEntity that = (GoodsEvaluateEntity) o;
        return evalNo == that.evalNo &&
                Objects.equals(evalDesc, that.evalDesc) &&
                Objects.equals(goodName, that.goodName);
    }

    @Override
    public int hashCode() {

        return Objects.hash(evalNo, evalDesc, goodName);
    }
}
