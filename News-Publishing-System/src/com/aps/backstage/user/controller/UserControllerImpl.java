/**
 * @FileName com.aps.backstage.user.controller/UserControllerImpl.java 
 * @Project News-Publishing-System
 * @author lenovo 
 * @date 2018年4月26日 下午3:53:59
 * @version 
 * @Description TODO
 */

package com.aps.backstage.user.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 
 * @ClassName UserControllerImpl
 * @Description 后台用户管理
 * @author HanChen
 * @version
 *
 */
@Controller
@RequestMapping("backstage/user")
public class UserControllerImpl {
	
	
	@RequestMapping(value = "reporter/list", method = RequestMethod.GET)
	public String reporterList(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum, HttpSession session){
		
		return "";
	}	
}
