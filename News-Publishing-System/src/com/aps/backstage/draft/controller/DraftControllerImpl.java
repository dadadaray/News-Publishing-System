/**
 * @FileName com.aps.backstage.draft.controller/DraftController.java 
 * @Project News-Publishing-System
 * @author lenovo 
 * @date 2018年4月25日 下午5:15:56
 * @version 
 * @Description TODO
 */

package com.aps.backstage.draft.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aps.entity.LoginUser;
import com.aps.entity.News;
import com.aps.entity.UserInfo;
import com.aps.news.service.NewsServiceImpl;
import com.framework.Page;

/**
 * 
 * @ClassName DraftController
 * @Description 草稿箱
 * @author HanChen
 * @version
 *
 */
@Controller
@RequestMapping("backstage/draft")
public class DraftControllerImpl {
	
	@Resource
	private NewsServiceImpl newsServiceImpl;
	
	/**
	 * @Title: draftList
	 * @Description: 草稿箱
	 * @param pageNum
	 * @param session
	 * @return
	 * @author HanChen 
	 * @return String
	 */
	@RequestMapping(value = "list", method = RequestMethod.GET)
	public String draftList(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum, HttpSession session){	
		
		// 获取用户信息
		//LoginUser loginUser = (LoginUser) session.getAttribute("loginUser");
		
		// 如果没有用户信息，需要进行登陆
		/*if (loginUser == null) {
			return "login";
		}*/
		
		UserInfo userInfo = new UserInfo();
		userInfo.setUserInfoId(29);
		LoginUser loginUser = new LoginUser();
		loginUser.setUserInfo(userInfo);
		
		Page<News> page = new Page<News>();
		page = this.newsServiceImpl.draftNewsList(pageNum, 8, new Object[] { loginUser.getUserInfo().getUserInfoId()});

		session.setAttribute("page", page);
		return "backstage/draft";
	}
}