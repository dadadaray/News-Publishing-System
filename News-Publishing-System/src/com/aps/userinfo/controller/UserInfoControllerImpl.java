package com.aps.userinfo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserInfoControllerImpl {
	/**
	 * @author Ray
	 * @param session
	 * @return
	 */
	@RequestMapping("index")
	public String index(HttpSession session){
		return "index";
	}

}
