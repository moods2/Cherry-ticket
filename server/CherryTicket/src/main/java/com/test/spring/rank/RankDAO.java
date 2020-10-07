package com.test.spring.rank;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RankDAO {

	@Autowired
	private SqlSessionTemplate template;

	public void getList(String genre) {
		
		String where = "and s.genre = '" + genre + "'";
		
		if(genre.equals("") || genre.equals("null")) {
			where = " ";
		}
		
		template.selectList("totalsql.rank",where);;
		
		
	}//getList()


	
	
}
