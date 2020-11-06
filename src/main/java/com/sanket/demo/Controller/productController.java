package com.sanket.demo.Controller;

import com.sanket.demo.dao.ProductsRepo;
import com.sanket.demo.model.Products;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class productController {
  @Autowired
	ProductsRepo pr ;

	
   @RequestMapping("/product")
	public ModelAndView productFetch()
	{
	List<Products>lst= (List<Products>) pr.findAll();
	ModelAndView mv=new ModelAndView();
	 mv.addObject("lst",lst);
	 mv.setViewName("productPage");
	return mv;
	}
   
   @RequestMapping("/search")
  public ModelAndView search(@RequestParam("name") String prodname)
  {
	 //System.out.println("Hiii");
	  List<Products>pd=( pr.findByName(prodname)) ;
	 ModelAndView md=new ModelAndView();
	 md.addObject("items",pd);
	 md.setViewName("searched");
	 return md;
  }

}
