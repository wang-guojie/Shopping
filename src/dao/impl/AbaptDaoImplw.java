package dao.impl;

import entity.Abapt;
import entity.Address;

import java.util.List;

public interface AbaptDaoImplw {

    //    显示使用年龄
    public List<Abapt> getListAb(int id);

//    根据id显示信息
    public Abapt getAbapt(int id);

}
