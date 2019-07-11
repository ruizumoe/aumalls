package cn.edu.cuit.aumalls.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageInfo;

import cn.edu.cuit.aumalls.constant.PageConstant;
import cn.edu.cuit.aumalls.entity.Goods;
import cn.edu.cuit.aumalls.service.GoodsService;

@Controller
public class ShowGoodsController {

	@Autowired
	private GoodsService goodsService;
	
	@RequestMapping("/showGoods")
	public String showgoods(Model model,@RequestParam(value="pageNum"
			,required=false,defaultValue="1")int pageNum) {
		
		PageInfo<Goods> goods = goodsService.showAll(pageNum,PageConstant.PAGE_SIZE);
		System.out.println(goods);
		model.addAttribute("list", goods);
		
		return "showGoods";
	}
}
