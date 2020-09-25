package com.test.test;

import lombok.Data;

@Data
public class ITestDTO {
	
	private int seq;
	private String name;
	private String address;
	
	@Override
	public String toString() {
		return "ITestDTO [seq=" + seq + ", name=" + name + ", address=" + address + "]";
	}
	
	
	
	
}
