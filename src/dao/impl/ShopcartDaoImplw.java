package dao.impl;

import entity.Shopcart;

import java.util.List;

public interface ShopcartDaoImplw {
//    根据id查询购物车
    public List<Shopcart> getShopcart(int id);

//    添加购物车
    public int addShopcart(Shopcart shopcart);

//    删除商品
    public int delShopcart(int id);

//    根据编号查询商品
    public Shopcart shById(int id);
}
