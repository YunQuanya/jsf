package com.cyl.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyl.beans.JiaoLian;
import com.cyl.beans.KeCheng;
import com.cyl.dao.JiaoLianDao;
//省去了注入
@Service("jiaolianService")
public class JiaoLianServiceImpl implements JiaoLianService {

	@Autowired
	public JiaoLianDao jiaolianDao;
	@Override
	public ArrayList<JiaoLian> query() {
		return jiaolianDao.query();
	}
	@Override
	public void delete(JiaoLian jiaolian) {
		 jiaolianDao.delete(jiaolian);
	}
	@Override
	public void add(JiaoLian jiaolian) {
		 jiaolianDao.add(jiaolian);
	}
	@Override
	public JiaoLian queryById(JiaoLian jiaolian) {
		return jiaolianDao.queryById(jiaolian);
	}

}
