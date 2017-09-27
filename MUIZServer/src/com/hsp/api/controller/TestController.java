package com.hsp.api.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/result")
public class TestController {

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public void test(HttpServletRequest request,HttpServletResponse response){
		try {
			String data=request.getParameter("result");
			System.out.println("[接收数据]>>>>>>>"+data);
			response.getWriter().print("success");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
