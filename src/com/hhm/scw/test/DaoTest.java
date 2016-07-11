package com.hhm.scw.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hhm.scw.dao.IDao;
import com.hhm.scw.dao.IUserDao;
import com.hhm.scw.dao.daoImpl.DaoImpl;
import com.hhm.scw.domain.User;
import com.hhm.scw.util.Conditions;
import com.hhm.scw.util.Conditions.Operator;

public class DaoTest {
	
	// 读取配置文件，获取bean
		ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");

		private IUserDao userDao = (IUserDao) context
				.getBean("userDao");
		
		public void testConditions(){
			Conditions conditions=new Conditions();
			conditions.addCondition("userId", "8a8cc7ce5443abfe015443acaf850001", Operator.EQUAL);
			conditions.addCondition("userName", "hhm", Operator.LIKE);
			
			List<User> userList=userDao.findByConditions(conditions);
			
			for (User user : userList) {
				System.out.println(user.getUserId());
			}
		}
		
		
		/**
		 * 获取全部
		 * @param args
		 */
		public void testFindAll(){
			List<User> userList=userDao.findAll();
			
			System.out.println(userList.size());
			for (User user : userList) {
				System.out.println(user.getUserName());
			}
		}
		
		/**
		 * 根据id查询
		 */
		public void testFindById(){
			//8a8cc7ce5443abfe015443acaf850001
			String id="8a8cc7ce5443abfe015443acaf850001";
			User user=userDao.findById(id);
			System.out.println(user.getUserName());
		}
		
		
		
		public static void main(String[] args) {
			new DaoTest().testConditions();
//			new DaoTest().testFindAll();
//			new DaoTest().testFindById();
		}
}
