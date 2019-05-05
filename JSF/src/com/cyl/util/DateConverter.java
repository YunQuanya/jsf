package com.cyl.util;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.xml.bind.Binder;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.support.WebBindingInitializer;
import org.springframework.web.context.request.WebRequest;

/***********************
 * Author ：陈奕隆
 * Day ：2010年4月21日
 * Time ：下午14:48:04
 * Functions:    
 **********************/
public class DateConverter implements WebBindingInitializer {
	@Override
	public void initBinder(WebDataBinder binder, WebRequest arg1) {
		 SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		 binder.registerCustomEditor(Date.class, new CustomDateEditor(sdf, false));
	}

}
