/**
 * @FileName com.aps.notice.controller/NoticeControllerImpl.java 
 * @Project News-Publishing-System
 * @author lenovo 
 * @date 2018年3月14日 上午10:30:46
 * @version 
 * @Description TODO
 */

package com.aps.backstage.notice.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aps.entity.LoginUser;
import com.aps.entity.Notice;
import com.aps.entity.UserInfo;
import com.aps.loginUser.service.UserServiceImpl;
import com.aps.notice.service.NoticeServiceImpl;
import com.framework.Page;

@Controller
@RequestMapping("backstage/notice")
public class NoticeControllerImpl {

	@Resource
	private NoticeServiceImpl noticeServiceImpl;
	
	@Resource
	private UserServiceImpl userServiceImpl;
	
	/**
	 * @Title: listNotice
	 * @Description:分页查询所有通知,每页8个
	 * @param pageNum 页码
	 * @param request
	 * @param session
	 * @return
	 * @author HanChen
	 * @return String
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String listNotice(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum,
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
		
		return "backstage/tongzhi";
	}

	/**
	 * @Title: deleteNotice
	 * @Description: 删除通知
	 * @param noticeId
	 * @param session
	 * @return
	 * @author HanChen
	 * @return String
	 */
	@RequestMapping(value = "deleteNotice", method = RequestMethod.POST)
	@ResponseBody
	public String deleteNotice(@RequestParam(name = "noticeIds") String noticeIds, HttpSession session) {
		
		int delNum =  this.noticeServiceImpl.deleteNotice(noticeIds);
		
		return delNum + "";
	}
	
	
	
}
