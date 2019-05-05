package com.gym.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gym.pojo.Menus;
import com.gym.pojo.User;
import com.gym.service.RegisterService;

@Controller
public class RegisterController {
  @Autowired	
  public RegisterService registerservice ;
	@RequestMapping(value = "Register",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView Register(User user ,HttpSession httpsession) {		 
	 ArrayList<User> userlist =registerservice.queryuname(user);
	 if(userlist.size()==0) {
			 registerservice.Register(user);
			 return  new ModelAndView("../yemain/Login");
		 }else {
			 return  new ModelAndView("../yemain/register");
		 }
		
		
	}
}
