package com.gym.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gym.dao.ILogindao;
import com.gym.pojo.Menus;
import com.gym.pojo.User;
@Service
public class LoginService {
  @Autowired
  public ILogindao Logindao;
	public ArrayList<User> Login(User user) {
		return Logindao.Login(user);
		
	}
	//查询对应的用户菜单
	public ArrayList<Menus> querymeaus(User user) {
		return Logindao.querymeaus(user);
		
	}
	//用户信息的修改
	public void xiugai(User user) {
		Logindao.xiugai(user);
		
	}
	public ArrayList<User> Loginbyid(User user) {
		// TODO Auto-generated method stub
		return Logindao.Loginbyid(user);
	}
	//用户体测数据的修改
	public void xiugaiti(User user) {
		Logindao.xiugaiti(user);
		
	}
	public ArrayList<User> LoginQ() {
		
		return Logindao.queryQ();

}
	public ArrayList<User> LoginAll() {
		return Logindao.queryAll();
	}
}
