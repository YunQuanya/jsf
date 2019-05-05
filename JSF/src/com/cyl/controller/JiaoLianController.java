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
@RequestMapping(value="jiaolian")
public class JiaoLianController {
	//对比 SSH  中  可以  不需要 set  get  属性  而直接获取 对象 只需要 增加注解
		@Autowired   //自动写入
		private JiaoLianService jiaolianService;
		@Autowired   //自动写入
		private KeChengService kechengService;
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
		
		@RequestMapping(value="delete",method={RequestMethod.GET,RequestMethod.POST})
		public ModelAndView delete(JiaoLian jiaolian)
		{
			jiaolianService.delete(jiaolian);
			return new ModelAndView("redirect:/kecheng/list.do");
		}
		@RequestMapping(value="add",method=RequestMethod.POST)
		public ModelAndView add(JiaoLian jiaolian)
		{		System.out.println(jiaolian.getJname());
			jiaolianService.add(jiaolian);
			
			return new ModelAndView("redirect:/kecheng/list.do");
		}
		
		@RequestMapping(value="toEdit",method={RequestMethod.GET,RequestMethod.POST})
		//当前方法中 只能传递 一个自己定义的参数  但是 不限制  jsp内置的对象
		//HttpRequest  request,HttpSession  session  内置对象
		public  ModelAndView  toEdit(JiaoLian jiaolian)
		{
			
			ModelAndView   mav=new  ModelAndView("jiaolian/edit");
			
			JiaoLian   j =jiaolianService.queryById(jiaolian);
			
			mav.addObject("jiaolian", j);
			
			return   mav;
		
		}
		
		
		@RequestMapping(value="edit",method={RequestMethod.GET,RequestMethod.POST})
		//当前方法中 只能传递 一个自己定义的参数  但是 不限制  jsp内置的对象
		//HttpRequest  request,HttpSession  session  内置对象
		public  ModelAndView  edit(KeCheng kecheng)
		{
			kechengService.edit(kecheng);
			return  new ModelAndView("redirect:/kecheng/list.do");
		}
}
