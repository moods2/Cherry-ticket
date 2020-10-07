package com.test.spring.rank;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RankBatisService implements IRankBatisService{

	@Autowired
	private RankDAO dao;

	@Override
	public List<RankDTO> get(String genre) {
		//장르별 순위 가져오기
		
		dao.getList(genre);
		
		return null;
	}
	
	
}
