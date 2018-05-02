package com.aps.news.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aps.entity.LoginUser;
import com.aps.entity.News;
import com.aps.news.service.NewsServiceImpl;

@Controller
@RequestMapping("newsFront")
public class NewsFrontControllerImpl {

	@Resource
	private NewsServiceImpl newsServiceImpl;

	/**
	 * @dec 显示一条新闻
	 * @author Ray
	 * @param newsId
	 * @param request
	 * @return
	 */
	@RequestMapping(value = "findoneNews", method = RequestMethod.GET)
	public String getNews(@RequestParam(name = "newsId") Integer newsId, HttpServletRequest request) {
		News news = this.newsServiceImpl.getOneNews(newsId);
		// LoginUser loginUser = (LoginUser)
		// request.getSession().getAttribute("loginUser");
		System.out.print(newsId);
//		news.setViews(news.getViews() + 1);
//		this.newsServiceImpl.updateNews(news);
		request.setAttribute("OneNews", news);
		
		System.out.print(news.getNewsTitle() + news.getModMixCenter() + news.getModMixLR() + news.getModMixSingle());
		if (news.getModAudio() != null) {
			System.out.print("视频");
			return "news_post_video";
		}
		if (news.getModFree()!= null) {
			System.out.print("1");
			return "news_free";
		}
		if (news.getModMixCenter() != null) {
			System.out.print("2");
			return "news_post_style1";
		}
		if (news.getModMixLR() != null) {
			System.out.print("3");
			return "news_post_style2";
		}
		if (news.getModMixSingle() != null) {
			System.out.print("4");

			return "news_post_style3";
		}
		if (news.getModAudio() != null) {
			System.out.print("5");
			return "news_post_listen";
		}
		if (news.getBigImgContent() != null) {
			System.out.print(news.getBigImgContent());
			return "Bgimgshow";
		}
		return null;

	}

}
