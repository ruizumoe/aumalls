package cn.edu.cuit.aumalls.service;

import com.github.pagehelper.PageInfo;

import cn.edu.cuit.aumalls.entity.Goods;

public interface GoodsService {

	PageInfo<Goods> showAll(int pageNum,int pageSize);
}
