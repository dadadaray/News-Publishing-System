package com.aps.userinfo.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aps.entity.News;
import com.aps.news.service.NewsServiceImpl;
import com.sun.jndi.toolkit.url.UrlUtil;

@Controller
public class UserInfoControllerImpl {

	@Resource
	private NewsServiceImpl newsServiceImpl;

	/**
	 * @dec 前台index
	 * @author Ray
	 * @param session
	 * @return
	 */
	@RequestMapping("index")
	public String index(HttpSession session) {
		// 查询首页3条新闻
		List<News> listNewsIndex1 = newsServiceImpl.findHonor().subList(0, 3);
		session.setAttribute("listNewsIndex1", listNewsIndex1);
		List<News> listNewsIndex2 = newsServiceImpl.findHonor().subList(3, 6);
		session.setAttribute("listNewsIndex2", listNewsIndex2);

		return "index";
	}
}
