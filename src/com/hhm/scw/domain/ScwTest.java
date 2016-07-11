package com.hhm.scw.domain;

import java.io.Serializable;

public class ScwTest implements Serializable{
	private String caiId;
	private String caiName;
	private double price;
	public String getCaiId() {
		return caiId;
	}
	public void setCaiId(String caiId) {
		this.caiId = caiId;
	}
	public String getCaiName() {
		return caiName;
	}
	public void setCaiName(String caiName) {
		this.caiName = caiName;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	
	
}
