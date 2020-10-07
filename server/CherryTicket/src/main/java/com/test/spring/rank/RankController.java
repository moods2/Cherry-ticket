package com.test.spring.rank;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RankController {

	@Autowired
	private IRankBatisService service;
	
	@RequestMapping(value = "/ranking.action", method = { RequestMethod.GET })
	public String ranking(HttpServletRequest request, HttpServletResponse response, String genre) {

		service.get(genre);

		return "ranking";
	}
	
}
