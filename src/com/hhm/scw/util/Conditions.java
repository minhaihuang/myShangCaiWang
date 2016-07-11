package com.hhm.scw.util;

import java.util.ArrayList;
import java.util.List;


/**
 * 条件类，用来充当条件查询语句
 * 
 * @author 黄帅哥
 * 
 */
public class Conditions {

	/*
	 * 要实现的效果如下： conditions.addCOnditions(key,value,operation);
	 * 其中key为列名，value是值，operation是操作符
	 */
	// 常用的操作符有
	public enum Operator {
		EQUAL, LIKE, NOT_EQUAL, GREATER, GREATER_EQUAL, LESS, LESS_EQUAL, IS, NOT_IS
	}

	/**
	 * 内部条件类
	 * 
	 * @author 黄帅哥
	 * 
	 */
	class Condition {
		private String key;
		private Object value;
		private Operator operator;

		public Condition(String key, Object value, Operator operator) {
			super();
			this.key = key;
			this.value = value;
			this.operator = operator;
		}

		
		public Condition() {
			
		}


		public String getKey() {
			return key;
		}

		public void setKey(String key) {
			this.key = key;
		}

		public Object getValue() {
			return value;
		}

		public void setValue(Object value) {
			this.value = value;
		}

		public Operator getOperator() {
			return operator;
		}

		public void setOperator(Operator operator) {
			this.operator = operator;
		}

	}

	// 装条件语句的容器
	List<Condition> conditionList = new ArrayList<Condition>();

	/**
	 * 加入条件语句
	 */
	public void addCondition(String key, Object value, Operator operator) {
		// 条件有效性判断
		if (key == null || key.trim().length() == 0) {
			throw new RuntimeException("条件语句错误");
		}

		if (value instanceof String) {
			String temp = (String) value;
			if (temp == null || temp.trim().length() == 0) {
				System.out.println("没有值，可能要进行的是全部查询，小心");
				return ;
			}
		}

		if (operator == null) {
			throw new RuntimeException("条件语句错误");
		}

		// 加入容器
		conditionList.add(new Condition(key, value, operator));
	}

	
	/**
	 * 内部类，sql语句和参数值
	 * 
	 * @author 黄帅哥
	 * 
	 */
	public class WhereSqlAndValue {
		private String whereSql;
		private Object[] values;

		
		public WhereSqlAndValue() {
		
		}

		public String getWhereSql() {
			return whereSql;
		}

		public void setWhereSql(String whereSql) {
			this.whereSql = whereSql;
		}

		public Object[] getValues() {
			return values;
		}

		public void setValues(Object[] values) {
			this.values = values;
		}

		public WhereSqlAndValue(String whereSql, Object[] values) {
			super();
			this.whereSql = whereSql;
			this.values = values;
		}

	}
	
	/**
	 * 生成查询语句和参数值数组
	 * @return
	 */
	public WhereSqlAndValue getWhereSqlAndValue(){
		List<Object> values = new ArrayList<Object>();
		StringBuilder whereSql=new StringBuilder();
		whereSql.append(" where ");
		
		if(conditionList!=null&&conditionList.size()!=0){
			
			//EQUAL, LIKE, NOT_EQUAL, GREATER, GREATER_EQUAL, LESS, LESS_EQUAL, IS, NOT_IS
			//遍历容器
			for (Condition condition : conditionList) {
				whereSql.append(condition.getKey());
				
				switch (condition.getOperator()) {
				case EQUAL:
					whereSql.append("=? ");
					values.add(condition.getValue());
					break;
				case LIKE:
					whereSql.append(" like ? ");
					values.add("%"+condition.getValue()+"%");
					break;
				case NOT_EQUAL:
					whereSql.append("!=? ");
					values.add(condition.getValue());
					break;
				case GREATER:
					whereSql.append(">? ");
					values.add(condition.getValue());
					break;
				case GREATER_EQUAL:
					whereSql.append(">=? ");
					values.add(condition.getValue());
					break;
				case LESS_EQUAL:
					whereSql.append("<=? ");
					values.add(condition.getValue());
					break;
				
				case LESS:
					whereSql.append("<? ");
					values.add(condition.getValue());
					break;
				case IS:
					whereSql.append("is ? ");
					values.add(condition.getValue());
					break;
				case NOT_IS:
					whereSql.append("not is ? ");
					values.add(condition.getValue());
					break;
				default:
					break;
				}
				whereSql.append("and ");
			}	
		}
		//完善where字句
		String finalWhereSql=whereSql.substring(0, whereSql.length()-5);
		WhereSqlAndValue whereSqlAndValue=new WhereSqlAndValue(finalWhereSql, values.toArray());
	
		return whereSqlAndValue;
	}
	
	
	
	/**
	 * 排序类
	 * 
	 * @author 黄帅哥
	 * 
	 */
	 class OrderBy {
		private String key;// 按照什么排序
		private boolean isAsc;// 是否是升序排序

		public OrderBy() {
			super();
		}

		public OrderBy(String key, boolean isAsc) {
			super();
			this.key = key;
			this.isAsc = isAsc;
		}

		public String getKey() {
			return key;
		}

		public void setKey(String key) {
			this.key = key;
		}

		public boolean getIsAsc() {
			return isAsc;
		}

		public void setIsAsc(boolean isAsc) {
			this.isAsc = isAsc;
		}

	}

	 private List<OrderBy> orderByList=new ArrayList<OrderBy>();
		
		
		
		public List<OrderBy> getOrderByList() {
			return orderByList;
		}

		public void setOrderByList(List<OrderBy> orderByList) {
			this.orderByList = orderByList;
		}

		public  void addOrderBy(String key,boolean isAsc){
			if(key==null||key.trim().length()==0){
				return;
			}
			
			orderByList.add(new OrderBy(key, isAsc));
		}
		
		/**
		 * 创建排序语句
		 * @return
		 */
		public String createOrderByString(){
			StringBuilder orderByStr=new StringBuilder();
			orderByStr.append(" order by ");
			for(OrderBy orderBy:orderByList){
				orderByStr.append(orderBy.key);
				
				orderByStr.append(orderBy.isAsc?" Asc ":" Desc ").append(",");
			}
			String finalStr=orderByStr.substring(0,orderByStr.length()-1);
			
			return finalStr;
		}
		
}
