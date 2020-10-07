package com.test.spring.rank;

import java.util.List;

public interface IRankBatisService {

	List<RankDTO> get(String genre);
	
}
