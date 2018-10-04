package com.niit.happybakersfrontend.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.happybakersbackend.dao.CategoryDao;
import com.niit.happybakersbackend.dao.ProductDao;
import com.niit.happybakersbackend.model.Category;
import com.niit.happybakersbackend.model.Product;



@Controller
public class HomeController {
	@Autowired
	
 private Category category;

	@Autowired
	private Product product;
	
	@Autowired
	ProductDao productdao;
	
	@Autowired
	CategoryDao categorydao;
	
	@RequestMapping("/")
	public String homepage()
	{
		return "index";
	}
	  
	@RequestMapping("Login")
	public String LoginPage()
	{
		return "Login";
	}
	  @RequestMapping("/Category")
	  public String categoryPage(Model model)
	  {   
	  List<Category>allCategory=categorydao.getAllCategory();
	   model.addAttribute("cat",category);
	   model.addAttribute("categoryList",allCategory);
	    return "Category";
	  }
	     
	  @RequestMapping("/Product")
	  public String productPage(Model model)
	  {   List<Product>allProducts=productdao.getAllProduct();
	   model.addAttribute("pro",product);
	   model.addAttribute("productList",allProducts);
	    return "Product";
		  
	}
	
	  
	  
}	  
	  
	
	