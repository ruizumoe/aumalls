package en.edu.cuit.aumalls.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import cn.edu.cuit.aumalls.entity.Goods;

public interface GoodsMapper {

	@Select("select * from goods")
	List<Goods> findAll();
}
