package com.cyl.service;

import java.util.ArrayList;

import com.cyl.beans.KeCheng;

public interface KeChengService {

	public ArrayList<KeCheng> query();

	public void add(KeCheng kecheng);

	public void delete(KeCheng kecheng);

	public void edit(KeCheng kecheng);

	public KeCheng queryById(KeCheng kecheng);

	public void addKeToUser(KeCheng kecheng);

	public ArrayList<KeCheng> UserDeKecheng(KeCheng kecheng);

	
}
