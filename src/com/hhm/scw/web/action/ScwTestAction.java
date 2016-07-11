package com.hhm.scw.web.action;

import javax.swing.plaf.basic.BasicSliderUI.ActionScroller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hhm.scw.domain.ScwTest;
import com.hhm.scw.service.ScwTestService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class ScwTestAction extends ActionSupport implements ModelDriven<ScwTest>{
	private ScwTestService scwTestService=null;
	private ScwTest scwTest=new ScwTest();
	
	
	public ScwTest getScwTest() {
		return scwTest;
	}

	public void setScwTest(ScwTest scwTest) {
		this.scwTest = scwTest;
	}

	public ScwTestService getScwTestService() {
		return scwTestService;
	}

	public void setScwTestService(ScwTestService scwTestService) {
		this.scwTestService = scwTestService;
	}
	
	

	public String test() {
//		scwTest.setCaiName("南瓜");
//		scwTest.setPrice(3);
		
		this.scwTestService.add(scwTest);
		return "test";
	}

	
	public ScwTest getModel() {
		
		return scwTest;
	}

	
}
