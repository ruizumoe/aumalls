package cn.edu.cuit.aumalls.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.edu.cuit.aumalls.entity.Goods;
import cn.edu.cuit.aumalls.service.GoodsService;
import en.edu.cuit.aumalls.mapper.GoodsMapper;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {

	@Autowired
	private GoodsMapper goodsMapper;
	
	private List<Goods> list;
	private PageInfo<Goods> pageInfols;
	
	public PageInfo<Goods> showAll(int pageNum,int pageSize) {

		PageHelper.startPage(pageNum, pageSize);
		
		list = goodsMapper.findAll();
		pageInfols = new PageInfo<Goods>(list);
		return pageInfols;
	}

}
