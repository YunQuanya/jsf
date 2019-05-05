package com.gym.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gym.pojo.Menus;
import com.gym.pojo.User;
import com.gym.service.LoginService;

@Controller
public class LoginController {
	@Autowired
	public LoginService loginservice ;
	
	@RequestMapping(value= "toLogin",method = RequestMethod.POST)
	public ModelAndView toLogin() {
		ModelAndView mav = new ModelAndView("Login");
		return mav;
	}
	
	@RequestMapping(value = "Login",method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login(User user ,HttpSession httpsession) {
		 ArrayList<User> userlist = loginservice.Login(user);
		 System.out.println(userlist.size());
		 if(userlist.size()==0) {
			 ModelAndView mav = new ModelAndView("../yemain/Login");
				return mav;
		 }else {
			 if(userlist.get(0).getU_qx()==1) {
				 ArrayList<User> kechengList = loginservice.LoginQ();
				 System.out.println(kechengList.get(0).getKid());
				 ModelAndView mav = new ModelAndView("../yemain/Menus1");
				 
				 mav.addObject("userlist", userlist);
				 mav.addObject("kechengList", kechengList);
				 
				 return mav;
			 }else if(userlist.get(0).getU_qx()==2) {
				 //管理员
				 ArrayList<User> userAlllist = loginservice.LoginAll();
				 ArrayList<User> kechengList = loginservice.LoginQ();
				 ModelAndView mav = new ModelAndView("../yemain/manage");
				 mav.addObject("userlist", userAlllist);
				 mav.addObject("kechengList", kechengList);
				 return mav;
			 }
			
			
			 
		 }
		return null;
	
	}
	
	@RequestMapping(value= "xiugai",method = RequestMethod.POST)
	public ModelAndView xiugai(User user ,HttpSession httpsession) {
		
		loginservice.xiugai(user);
		ArrayList<User> userlist = loginservice.LoginAll();
		 ArrayList<User> kechengList = loginservice.LoginQ();
		ModelAndView mav = new ModelAndView("../yemain/manage");
		 mav.addObject("userlist", userlist);
		 mav.addObject("kechengList", kechengList);
		 return mav;
		
	}
	
	@RequestMapping(value= "xiugaiti",method = RequestMethod.GET)
	public ModelAndView xiugaiti(User user ,HttpSession httpsession) {
		loginservice.xiugaiti(user);
		 ArrayList<User> userlist = loginservice.Login(user);
		 ArrayList<User> kechengList = loginservice.LoginQ();
		 System.out.println(kechengList.get(0).getKid());
		 ModelAndView mav = new ModelAndView("../yemain/Menus1");
		 
		 mav.addObject("userlist", userlist);
		 mav.addObject("kechengList", kechengList);
		return mav;
	}
	

	
}
