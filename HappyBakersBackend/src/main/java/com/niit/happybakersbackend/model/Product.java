package com.niit.happybakersbackend.model;
import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Component
@Entity
public class Product implements Serializable{
	@Id   //primary key
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int productId;
	private String productName;
	private String productDescription;
	private float price;
	private int quantity;
	public int getProductId() {
		return productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public static void updateProduct(Product product) {
		// TODO Auto-generated method stub
		
	}
	
	
	
	
	
	
	
	
}





