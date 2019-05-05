package com.gym.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.dao.IRegisterdao;
import com.gym.pojo.User;

@Service
public class RegisterService {
 @Autowired
 public IRegisterdao registerdao;
	public void Register(User user) {
		
		registerdao.Register(user);//注册
		ArrayList<User> users= registerdao.queryuname(user);//查uid
		registerdao.Registerbody(users.get(0));//根据uid添加一个uboday
		
	}
	//检查用户名是否存在
	public  ArrayList<User> queryuname(User user) {
		return registerdao.queryuname(user);
		
	}

}
