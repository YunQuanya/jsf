package com.cyl.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cyl.beans.JiaoLian;
import com.cyl.beans.KeCheng;
import com.cyl.service.JiaoLianService;
import com.cyl.service.KeChengService;

@Controller
@RequestMapping(value="kecheng")
public class KeChengController {

	//对比 SSH  中  可以  不需要 set  get  属性  而直接获取 对象 只需要 增加注解
	@Autowired   //自动写入
	private KeChengService kechengService;

	@Autowired   //自动写入
	private JiaoLianService jiaolianService;
	
	@RequestMapping(value="list")
	public ModelAndView query()
	{
		System.out.println("aaa");
		ModelAndView mav  = new ModelAndView("../yemain/manage");

		
		//查询数据库信息
		ArrayList<KeCheng> kechengList  = kechengService.query();
		System.out.println(kechengList.toString());
		//保存到 ModelAndView中，就可以传到前台。省去了全局定义
		mav.addObject("kechengList", kechengList);
		return mav;
	}
	
	
	@RequestMapping(value="add",method=RequestMethod.POST)
	public ModelAndView add(KeCheng kecheng)
	{		System.out.println(kecheng.getKname());
		kechengService.add(kecheng);
		
		return new ModelAndView("redirect:/kecheng/list.do");
	}
	
	@RequestMapping(value="delete",method={RequestMethod.GET,RequestMethod.POST})
	public ModelAndView delete(KeCheng kecheng)
	{
		kechengService.delete(kecheng);
		return new ModelAndView("redirect:/kecheng/list.do");
	}
	
	@RequestMapping(value="toEdit",method={RequestMethod.GET,RequestMethod.POST})
	//当前方法中 只能传递 一个自己定义的参数  但是 不限制  jsp内置的对象
	//HttpRequest  request,HttpSession  session  内置对象
	public  ModelAndView  toEdit(KeCheng kecheng)
	{
		
		ModelAndView   mav=new  ModelAndView("../yemain/toEditkecheng");
		
		KeCheng   k =kechengService.queryById(kecheng);
		
		mav.addObject("kecheng", k);
		
		return   mav;
	
	}
	
	
	@RequestMapping(value="edit",method={RequestMethod.GET,RequestMethod.POST})
	
	public  ModelAndView  edit(KeCheng kecheng)
	{
		System.out.println("bbb");
		kechengService.edit(kecheng);
		return  new ModelAndView("redirect:/kecheng/list.do");
	}
	@RequestMapping(value="addKeToUser",method={RequestMethod.GET,RequestMethod.POST})
	public  ModelAndView  addKeToUser(KeCheng kecheng)
	{
		System.out.println("bbb");
		kechengService.addKeToUser(kecheng);
		System.out.println(kecheng.getUid());
		return  new ModelAndView("redirect:/Login.do?uid="+kecheng.getUid());
	}
	@RequestMapping(value="UserDeKecheng",method={RequestMethod.GET,RequestMethod.POST})
	public  ModelAndView  UserDeKecheng(KeCheng kecheng)
	{
		System.out.println(kecheng.getUid());
		ArrayList<KeCheng> Userkechenglist =kechengService.UserDeKecheng(kecheng);
		
		ModelAndView   mav=new  ModelAndView("../yemain/mykecheng");
		mav.addObject("Userkechenglist", Userkechenglist);
		return mav;
	}
	
}
