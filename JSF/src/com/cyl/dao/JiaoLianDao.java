package com.cyl.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;

import com.cyl.beans.JiaoLian;
import com.cyl.beans.KeCheng;

public interface JiaoLianDao {

	//可以不通过 Mapping文件进行查询数据信息
			//通过注解进行查询数据 
			/*@Select("	select id, username, password From user ")*/
			public ArrayList<JiaoLian> query();

			@Delete("delete  from  jiaolian   where  Jid=#{Jid}")
			public void delete(JiaoLian jiaolian);
			
			@Insert("insert  into  jiaolian  (Jname,Jage,JJieShao,Jmoney,Jphone,Jsex)  values (#{Jname},#{Jage},#{JJieShao},#{Jmoney},#{Jphone},#{Jsex})")
			public void add(JiaoLian jiaolian);

			public JiaoLian queryById(JiaoLian jiaolian);
			
			
}
