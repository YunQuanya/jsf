package com.gym.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import com.gym.pojo.User;

public interface IRegisterdao {
    //用户注册
	@Insert("INSERT INTO user (uname,upwd,u_qx,utel,usex,ucard,udate)  "
			+ "VALUES(#{uname},#{upwd},#{u_qx},#{utel},#{usex},#{ucard},#{udate})")
	void Register(User user);
	@Select("select * from user where uname = #{uname}")
	public ArrayList<User> queryuname(User user);
	
	@Insert("INSERT INTO uboday (uid)  "
			+ "VALUES(#{uid})")
	void Registerbody(User user);

}
