package com.hsp.wechat.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/shop/")
public class ShopController {

	@RequestMapping(value="/index")
	public String toIndex(HttpServletRequest request,HttpServletResponse response){
		return "app/index";
	}
}
