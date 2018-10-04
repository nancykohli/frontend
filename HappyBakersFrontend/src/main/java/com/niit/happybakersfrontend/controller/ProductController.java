package com.niit.happybakersfrontend.controller;



	import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.happybakersbackend.dao.ProductDao;
import com.niit.happybakersbackend.model.Product;


public class ProductController{
	
	@Autowired
	Product product;

	@Autowired
	ProductDao productDao;
		
		

		
		@RequestMapping(value="/addProduct",method=RequestMethod.POST)
		public String productAdd(@ModelAttribute("cat")Product product)
		
		{
			if(product.getProductId()==0)
			{
				productDao.addProduct(product);
			}
			else
			{
				Product.updateProduct(product);
			}
				return "redirect:/Product";
		}

		@RequestMapping("/deleteProduct/{id}")
		public String productDelete(@PathVariable("id") int productId) 
		{
			productDao.deleteProduct(productId);
			return "redirect:/Product";
		}
		
		
	
	
	@RequestMapping("/editProduct/{id}")
	
	public String productUpdate(@PathVariable("id") int productId,Model model)
	{
		Product productData=productDao.getProductById(productId);
		model.addAttribute("pat",productData);
		List<Product> AllProduct= productDao.getAllProduct();
		model.addAttribute("productList",AllProduct);
		return "Product";
}
	
	
	
	
	
	


}
