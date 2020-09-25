package com.test.test;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ITestDAO implements ITest{
	
	@Autowired
	private SqlSessionTemplate template;//애가 쿼리날림

	
	@Override
	public ITestDTO test() {
		
		return template.selectOne("test.m1");
		
	}
}
