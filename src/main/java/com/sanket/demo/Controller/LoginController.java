package com.sanket.demo.Controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sanket.demo.dao.UserdataRepo;
import com.sanket.demo.model.Data;


@Controller
public class LoginController {

@Autowired
	UserdataRepo repo;


@RequestMapping("/login")
public String Login()
{

 return "login"	;
}

@RequestMapping("/registration")
public String Register()
{
return "registration";	
}

@RequestMapping("/btnRegisterClick")
public String registerButton(@RequestParam("user_name") String username,@RequestParam("user_password")String password, @RequestParam("user_email") String email)
{
	
    System.out.println("Hii");
    Data da=new Data();
    da.setUsername(username);
	da.setEmail(email);
	da.setPasswords(password);
	
	repo.save(da);
    return "home";
	
}

@RequestMapping("/btnLoginClick")
public String loginButton(@RequestParam("user_name") String username,@RequestParam("user_password")String password)
{
	
	Data data=repo.findById(username).orElse(new Data());
	//ModelAndView mv=new ModelAndView();
  if(data.getPasswords()!=(password))
  {
	//mv.addObject("name",username);
	  System.out.println("Login successful");
	 // mv.setViewName("productPage");
	  
	  return "redirect:/product";
  }
  else
  {
	  System.out.println("Login failed");
  }
	
return null;
}
}
