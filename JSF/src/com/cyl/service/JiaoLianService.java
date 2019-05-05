package com.cyl.service;

import java.util.ArrayList;

import com.cyl.beans.JiaoLian;
import com.cyl.beans.KeCheng;

public interface JiaoLianService {

	public ArrayList<JiaoLian> query();

	public void delete(JiaoLian Jiaolian);

	public void add(JiaoLian jiaolian);

	public JiaoLian queryById(JiaoLian jiaolian);

}
