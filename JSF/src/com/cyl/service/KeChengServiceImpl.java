package com.cyl.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyl.beans.KeCheng;
import com.cyl.dao.KeChengDao;

//省去了注入
@Service("kechengService")
public class KeChengServiceImpl implements KeChengService {

	//注入Dao
	@Autowired
	public KeChengDao kechengDao;
	@Override
	public ArrayList<KeCheng> query() {
		return kechengDao.query();
	}
	@Override
	public void add(KeCheng kecheng) {
		kechengDao.add(kecheng);
	}
	@Override
	public void delete(KeCheng kecheng) {
		kechengDao.delete(kecheng);
	}
	@Override
	public void edit(KeCheng kecheng) {
		kechengDao.edit(kecheng);
		
	}
	@Override
	public KeCheng queryById(KeCheng kecheng) {
		return kechengDao.queryById(kecheng);
	}
	@Override
	public void addKeToUser(KeCheng kecheng) {
	kechengDao.addKeToUser(kecheng);
	}
	@Override
	public ArrayList<KeCheng> UserDeKecheng(KeCheng kecheng) {
		return kechengDao.UserDeKecheng(kecheng);
		
	}

}
