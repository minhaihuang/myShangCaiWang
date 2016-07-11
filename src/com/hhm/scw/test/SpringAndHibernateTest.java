package com.hhm.scw.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hhm.scw.domain.ScwTest;
import com.hhm.scw.service.ScwTestService;

/**
 * spring整合hibernate
 * @author 黄帅哥
 *
 */
public class SpringAndHibernateTest {

	public static void main(String[] args) {
		
		new SpringAndHibernateTest().test();
		
	}
	
	public void test(){
		ApplicationContext context=new ClassPathXmlApplicationContext("beans.xml");
		
		ScwTest scwTest=(ScwTest) context.getBean("scwTest");
		scwTest.setCaiName("冬瓜");
		scwTest.setPrice(5);
		
		ScwTestService scwTestService=(ScwTestService) context.getBean("scwTestService");
		
		scwTestService.add(scwTest);//
	}
}
