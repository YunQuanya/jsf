package com.gym.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.gym.pojo.User;
import com.gym.pojo.Menus;

public interface ILogindao {
	@Select("select * FROM user u LEFT JOIN uboday ub ON u.uid =ub.uid "
			+ "WHERE u.uid = #{uid} or (u.uname =#{uname} and u.upwd = #{upwd}) ")
	public ArrayList<User> Login(User user);
    
	@Select({"<script>select m.mname "
			+ "FROM menus m LEFT JOIN user_qx qx "
			+ "ON m.mid =qx.mid "
			+ "where qx.u_qx in(SELECT u_qx FROM `user` WHERE uid=#{uid})"
			+ "</script>"
	})
	public ArrayList<Menus> querymeaus(User user);
    
	@Update(value = { "UPDATE `user` SET "
			+ "usex=#{usex},utel=#{utel},ucard=#{ucard},udate=#{udate}"
			+ "  WHERE uid=#{uid}" })
	public void xiugai(User user);
	
	@Select("select * FROM user u LEFT JOIN uboday ub ON u.uid =ub.uid "
			+ "WHERE u.uid = ub.uid and u.uid =#{uid} ")
	public ArrayList<User> Loginbyid(User user);

	@Update(value = { "UPDATE `uboday` SET "
			+ "btell=#{btell},bweight=#{bweight},bfat=#{bfat}"
			+ "  WHERE uid=#{uid}" })
	public void xiugaiti(User user);
	@Select("select k.Kid,k.Kname,k.Ktime,k.Knum,k.Klaoshi,k.KJieShao,k.Kweek,J.Jid,J.Jname,J.Jage,J.Jsex,J.JJieShao,J.Jmoney,J.Jphone from kecheng as k  left join jiaolian as j on k.Klaoshi=j.Jname")
	public ArrayList<User> queryQ();
	@Select("select * FROM user u LEFT JOIN uboday ub ON u.uid =ub.uid ")
	public ArrayList<User> queryAll();

}
