package com.bdqn.entity;

import java.util.Objects;
/*购物车*/
public class ShoppingCartEntity {
    private int cartNo;/*购物车编号*/
    private String goodName;
    private Integer shoppingCount;/*购买数量*/

    public int getCartNo() {
        return cartNo;
    }

    public void setCartNo(int cartNo) {
        this.cartNo = cartNo;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public Integer getShoppingCount() {
        return shoppingCount;
    }

    public void setShoppingCount(Integer shoppingCount) {
        this.shoppingCount = shoppingCount;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ShoppingCartEntity that = (ShoppingCartEntity) o;
        return cartNo == that.cartNo &&
                Objects.equals(goodName, that.goodName) &&
                Objects.equals(shoppingCount, that.shoppingCount);
    }

    @Override
    public int hashCode() {

        return Objects.hash(cartNo, goodName, shoppingCount);
    }
}
