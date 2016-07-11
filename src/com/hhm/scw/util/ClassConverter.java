package com.hhm.scw.util;

import java.util.Map;

import com.opensymphony.xwork2.conversion.impl.DefaultTypeConverter;

/**
 * 类型转化器
 * @author 黄帅哥
 *
 */
public class ClassConverter extends DefaultTypeConverter{
	
	@Override
	public Object convertValue(Map<String, Object> context, Object value,
			Class toType) {
		if(toType==String.class){//数字转字符串
			Integer num=(Integer) value;
			String srcString=null;
			
			
			System.out.println(num);
			
			System.out.println(123456699);
			
			try {
				srcString=Integer.toString(num);
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			return srcString;
		}
		
		return null;
	}
	
	
	/**
	 * 将对象转换为字符串
	 */
//	@Override
//	public String convertToString(Map arg0, Object arg1) {
//		Point point=(Point)arg1;
//		
//		return point.getX()+","+point.getY()+","+point.getZ();
//	}
	
}
