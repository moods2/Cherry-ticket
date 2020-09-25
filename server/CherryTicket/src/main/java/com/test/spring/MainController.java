package com.test.spring;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.test.test.ITestDAO;
import com.test.test.ITestDTO;

@Controller
public class MainController {
	
	@Autowired
	private ITestDAO dao;
	
	@RequestMapping(value = "/viewtest.action", method = { RequestMethod.GET })
	public String test(HttpServletRequest request, HttpServletResponse response) {
		
		ITestDTO dto = dao.test();
		
		System.out.println(dto.toString());
		
		request.setAttribute("dto",dto);
		
		//return "test/content/viewtest";
		return "viewtest";
	}
	
	
	
}

