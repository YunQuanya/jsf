package com.cyl.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.cyl.beans.KeCheng;
//需要 将root-context.xml  中  注入 Dao信息
//Dao接口 直接访问  xml文件信息 
public interface KeChengDao {

		//可以不通过 Mapping文件进行查询数据信息
		//通过注解进行查询数据 
		/*@Select("	select id, username, password From user ")*/
		public ArrayList<KeCheng> query();

		//#{}  中间是传递的参数
		@Insert("insert  into  kecheng  (Kname,Ktime,Knum,Klaoshi,KJieShao,Kweek)  values (#{Kname},#{Ktime},#{Knum},#{Klaoshi},#{KJieShao},#{Kweek})")
		void add(KeCheng kecheng);

		@Delete("delete  from  kecheng   where  Kid=#{Kid}")
		void delete(KeCheng kecheng);
		
		//当  你的 注解  语句中 有需要 判断的 时候  需要 增加  <script> </script> 对象
	    @Update("<script>update  kecheng  set  <if  test='Kname!=null'> Kname=#{kname} ,</if>"
	    		+ "<if  test='Ktime!=null'> Ktime=#{Ktime}  , </if> "
	    		+ "<if  test='KJieShao!=null'> KJieShao=#{KJieShao}  ,</if> "
	    		+ "<if  test='Kweek!=null'> Kweek=#{Kweek}  ,</if> "
	    		+ "<if  test='Knum!=null'> Knum=#{Knum} </if>  "
	    		+ "  where   Kid =#{Kid}</script> ")
		void edit(KeCheng kecheng);
	    
		public KeCheng queryById(KeCheng kecheng);
		@Insert("insert  into  u_k  (uid,Kid)  values (#{uid},#{Kid})")
		public void addKeToUser(KeCheng kecheng);
		
		@Select("select * from user as u left join u_k as uk on u.uid = uk.uid "
				+ " left join kecheng as k on uk.Kid = k.Kid where u.uid = #{uid}")
		public ArrayList<KeCheng> UserDeKecheng(KeCheng kecheng);
}
