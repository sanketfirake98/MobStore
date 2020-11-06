package com.sanket.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Products {
	@Id 
	  private int id;
	  private String name;
	  private String picPath;
	  private int price;
	  public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPicPath() {
		return picPath;
	}
	public void setPicPath(String picPath) {
		this.picPath = picPath;
	}
	@Override
	public String toString() {
		return "Products [id=" + id + ", name=" + name + ", picPath=" + picPath + ", price=" + price + "]";
	}

	  
}
