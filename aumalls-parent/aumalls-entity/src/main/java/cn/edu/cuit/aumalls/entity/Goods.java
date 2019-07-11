package cn.edu.cuit.aumalls.entity;

import java.io.Serializable;


public class Goods implements Serializable {

	private static final long serialVersionUID = 1L;

	private int goods_id;
	private String goods_name;
	private float goods_price;
	private int goods_num;
	private String goods_img;
	private int goods_type;

	public int getGoods_id() {
		return goods_id;
	}

	public void setGoods_id(int goods_id) {
		this.goods_id = goods_id;
	}

	public String getGoods_name() {
		return goods_name;
	}

	public void setGoods_name(String goods_name) {
		this.goods_name = goods_name;
	}

	public float getGoods_price() {
		return goods_price;
	}

	public void setGoods_price(float goods_price) {
		this.goods_price = goods_price;
	}

	public int getGoods_num() {
		return goods_num;
	}

	public void setGoods_num(int goods_num) {
		this.goods_num = goods_num;
	}

	public String getGoods_img() {
		return goods_img;
	}

	public void setGoods_img(String goods_img) {
		this.goods_img = goods_img;
	}

	public int getGoods_type() {
		return goods_type;
	}

	public void setGoods_type(int goods_type) {
		this.goods_type = goods_type;
	}

	@Override
	public String toString() {
		return "Goods [goods_id=" + goods_id + ", goods_name=" + goods_name + ", goods_price=" + goods_price
				+ ", goods_num=" + goods_num + ", goods_img=" + goods_img + ", goods_type=" + goods_type + "]";
	}

}
