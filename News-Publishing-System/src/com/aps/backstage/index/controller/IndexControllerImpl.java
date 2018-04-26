
package com.aps.backstage.index.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aps.entity.LoginUser;
import com.aps.entity.News;
import com.aps.entity.Notice;
import com.aps.entity.UserInfo;
import com.aps.news.service.NewsServiceImpl;
import com.aps.notice.service.NoticeServiceImpl;
import com.framework.Page;

@Controller
@RequestMapping("backstage")
public class IndexControllerImpl {
	
	@Resource
	private NoticeServiceImpl noticeServiceImpl;
	
	@Resource
	private NewsServiceImpl newsServiceImpl;

	/**
	 * @Title: index
	 * @Description: 后台首页的通知列表和数据统计
	 * @param pageNum
	 * @param noticeType
	 * @param request
	 * @param session
	 * @return
	 * @author HanChen 
	 * @return String
	 */
	@RequestMapping(value = "indexs")
	public String index(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum,
			@RequestParam(name = "noticeType", defaultValue = "") String noticeType,
			 HttpServletRequest request, HttpSession session) {
		
		UserInfo userInfo = new UserInfo();
		userInfo.setUserInfoId(29);
		LoginUser loginUser = new LoginUser();
		loginUser.setUserInfo(userInfo);
		
		// 获取用户信息
		//LoginUser loginUser = (LoginUser) session.getAttribute("loginUser");
		
		// 如果没有用户信息，需要进行登陆
		/*if (loginUser == null) {
			return "login";
		}*/
		
		Page<Notice> page = new Page<Notice>();
		page = this.noticeServiceImpl.listNotice(pageNum, 8, new Object[] { loginUser.getUserInfo().getUserInfoId()});
		session.setAttribute("page", page);
		
		return "backstage/index";
	}
	
	/**
	 * @Title: indexBack
	 * @Description: 后台管理员登录首页
	 * @param pageNum
	 * @param timeSlot
	 * @param request
	 * @param session
	 * @return
	 * @author HanChen  
	 * @return String
	 */
	@RequestMapping(value = "indexBack")
	public String indexBack(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum,
			@RequestParam(name = "timeSlot", defaultValue = "0") int timeSlot,
			 HttpServletRequest request, HttpSession session) {
		
		UserInfo userInfo = new UserInfo();
		userInfo.setUserInfoId(30);
		LoginUser loginUser = new LoginUser();
		loginUser.setUserInfo(userInfo);
		
		// 获取用户信息
		//LoginUser loginUser = (LoginUser) session.getAttribute("loginUser");
		
		// 如果没有用户信息，需要进行登陆
		/*if (loginUser == null) {
			return "login";
		}*/
		
		Page<News> page = new Page<News>();
		page = this.newsServiceImpl.getHotNewsList(pageNum, 5, new Object[] { loginUser.getUserInfo().getUserInfoId()}, timeSlot);

		session.setAttribute("page", page);
		
		return "backstage/index_back";
	}
	
}
