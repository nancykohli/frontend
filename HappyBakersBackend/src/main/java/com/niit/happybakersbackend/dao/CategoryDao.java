package com.niit.happybakersbackend.dao;

import java.util.List;

import com.niit.happybakersbackend.model.Category;

public interface CategoryDao {


		public boolean addCategory(Category category);
		public boolean updateCategory(Category category);
		public boolean deleteCategory(int categoryId);
		public List<Category> getAllCategory();
		public Category getCategoryById(int categoryId);
		
	}


