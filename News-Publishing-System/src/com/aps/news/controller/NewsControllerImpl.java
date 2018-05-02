package com.aps.news.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aps.entity.LoginUser;
import com.aps.entity.News;
import com.aps.news.service.NewsServiceImpl;


@Controller
@RequestMapping("newsAll")
public class NewsControllerImpl {
	
	private  NewsServiceImpl newsServiceImpl;
	
	@RequestMapping(value = "findone", method = RequestMethod.GET)
	public String getBug(@RequestParam(name = "newsId") Integer newsId, HttpServletRequest request) {
		News news = this.newsServiceImpl.getOneNews(newsId);
		LoginUser loginUser = (LoginUser) request.getSession().getAttribute("loginUser");
		Integer userInfoId;
		if (loginUser != null) {
			userInfoId = loginUser.getLoginUserId();
		}
		news.setViews(news.getViews()+1);
		this.newsServiceImpl.updateNews(news);
		request.setAttribute("OneNews",news);
		
		if(news.getModAudio()!=null){
			return "news_post_video";
		}else if(news.getModBigImgs()!=null){
			return "Bgimgshow";	
		}else if(news.getModFree()!=null){
			return "news_free";
		}else if(news.getModMixCenter()!=null){
			return "news_post_style1";
		}else if(news.getModMixLR()!=null){
			return "news_post_style2";
		}else if(news.getModMixSingle()!=null){
			return "news_post_style3";
		}else if(news.getModAudio()!=null){
			return "news_post_listen";
		}
		

		return null;
	}

}
