package com.hhm.scw.test;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;


import com.hhm.scw.domain.ScwTest;


public class HibernateTest {
	private static Configuration configuration=null;
	private static SessionFactory sFactory=null;
	static{
		 configuration=new Configuration();
		
		//解析配置文件
		configuration.configure("hibernate.cfg.xml");
		
		//获取会话工厂
		sFactory=configuration.buildSessionFactory();
	}
	
	public static void test(ScwTest scwTest){
		//打开会话
		Session session=sFactory.openSession();
		//开始事务管理器
		Transaction ts=session.beginTransaction();
		
		//保存数据
		session.save(scwTest);
		
		//提交数据
		ts.commit();
		
		//关闭会话
		session.close();
	}
	
	public static void main(String[] args) {
		ScwTest scwTest=new ScwTest();
		scwTest.setCaiName("黄瓜");
		scwTest.setPrice(18);
		
	
		test(scwTest);
	}
}
