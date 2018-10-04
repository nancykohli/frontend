package com.niit.happybakersfrontend.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.happybakersbackend.dao.CategoryDao;
import com.niit.happybakersbackend.model.Category;

@Controller
public class CategoryController {
	
  @Autowired
  CategoryDao categoryDao;
    
    @Autowired
    Category category;
    
    @RequestMapping (value="/addCategory",method=RequestMethod.POST)
    public String categoryAdd(@ModelAttribute("cat") Category category)
    {
    	 if(category.getCategoryId()==0)
    	 {
    		 categoryDao.addCategory(category);
    	 
    	 }
    	 else
    	 {
    		 categoryDao.updateCategory(category);
    	 }

    	 return "redirect:/Category";
    }
    
    
    @RequestMapping("/deleteCategory/{id")
     public String categoryDelete (@PathVariable("id")int categoryId)
     
     {
    	  categoryDao.deleteCategory(categoryId);
    	  return "redirect:/Category";
     }
     
     @RequestMapping("/editCategory/{id")
     
     public String categoryUpdate (@PathVariable("id") int categoryId ,Model model)
     {
    	  Category categoryData=categoryDao.getCategoryById(categoryId);
    	  model.addAttribute("cat",categoryData);
    	  List<Category> allCategories=categoryDao.getAllCategory();
    	  model.addAttribute("categoryList",allCategories);
    	  return"Category";
     }
     
           
       
         
     }
     
 
