/**
 * @FileName com.aps.notice.controller/NoticeControllerImpl.java 
 * @Project News-Publishing-System
 * @author lenovo 
 * @date 2018年3月14日 上午10:30:46
 * @version 
 * @Description TODO
 */

package com.aps.notice.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.aps.entity.Notice;
import com.aps.notice.service.NoticeServiceImpl;
import com.framework.Page;

@Controller
@RequestMapping("notice")
public class NoticeControllerImpl {

	@Resource
	private NoticeServiceImpl noticeServiceImpl;
	
	/**
	 * @Title: listNotice
	 * @Description:分页查询所有通知,每页8个
	 * @param pageNum
	 * @param request
	 * @param session
	 * @return
	 * @author HanChen
	 * @return String
	 */
	@RequestMapping(value = "listNotice", method = RequestMethod.GET)
	public String listNotice(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum,
			@RequestParam(name = "noticeType", defaultValue = "") String noticeType,
			 HttpServletRequest request, HttpSession session) {
		Page<Notice> page = new Page<Notice>();
		page = this.noticeServiceImpl.listNotice(pageNum, 8, null);
		session.setAttribute("page", page);
		return "backstage/tongzhi";
	}
	
	
}
