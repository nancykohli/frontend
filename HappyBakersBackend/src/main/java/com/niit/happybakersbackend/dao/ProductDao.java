package com.niit.happybakersbackend.dao;


import java.util.List;
import com.niit.happybakersbackend.model.Product;

public interface ProductDao {

			public boolean addProduct(Product product);
			public boolean updateCategory(Product product);
			public boolean deleteCategory(int productId);
			public List<Product> getAllProduct();
			public Product getProductById(int productId);
			public void deleteProduct(int productId);
			
		}


