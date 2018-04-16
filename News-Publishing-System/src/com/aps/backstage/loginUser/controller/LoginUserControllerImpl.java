package com.aps.backstage.loginUser.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aps.backstage.loginUser.service.BackUserServiceImpl;
import com.aps.entity.LoginUser;
import com.aps.entity.Role;
import com.aps.entity.UserInfo;
import com.aps.role.service.RoleServiceImpl;
import com.framework.EncodingTool;

@Controller
@RequestMapping("backstageLoginUser")
public class LoginUserControllerImpl {
	@Resource
	private RoleServiceImpl roleServiceImpl;
	@Resource
	private BackUserServiceImpl backUserServiceImpl;

	/**
	 * 功能： 实现注册功能 同时实现发送邮件的功能！
	 * 
	 * @param name
	 * @param email
	 * @param password
	 * @param session
	 * @return 0表示邮件发送成功 1 代表数据库连接失败，服务器问题 2 代表参数传递错误，网络问题，请刷新重试 3
	 *         代表用户名已经存在，请重新输入 4 代表邮箱已经存在，请重新输入 5 代表邮箱不符合格式
	 * @author Ray
	 */
	@RequestMapping(value = "register", method = RequestMethod.POST)
	public String register(@RequestParam(name = "username") String name, @RequestParam(name = "emint") String email,
			@RequestParam(name = "passone") String password, HttpSession session, HttpServletRequest request) {
		// code转换
		name = EncodingTool.encodeStr(name);
		// System.out.print("进入controller");
		// 判断email是否符合格式,使用java正则表达式
		if (EncodingTool.isEmail(email)) {
			LoginUser loginUser = new LoginUser();
			loginUser.setLoginEmail(email);
			loginUser.setLoginName(name);
			loginUser.setLoginPassword(password);
			UserInfo userInfo = new UserInfo();
			// 获取用户注册时间
			Date time = new Date();// new Date()为获取当前系统时间
			// 给新注册的用户分配角色
			Role role = this.roleServiceImpl.getRole(2);
			loginUser.setRole(role);
			userInfo.setUserRegistTime(time);
			userInfo.setLoginUser(loginUser);
			loginUser.setUserInfo(userInfo);
			this.backUserServiceImpl.bregiste(loginUser);
			
		}
		return "backstage/login";
	}


	/**
	 * 功能: 1.能够使用邮箱登录/也可以使用用户名登录 2.验证code 3.验证用户名/邮箱是否存在 4.验证密码的正确性
	 * 5.跳转到index.jsp //在js中修改
	 * 
	 * @param loginName
	 * @param password
	 * @param codeValue
	 * @param session
	 * @return 返回一个string值 0 表示登录成功 -1 表示验证码错误 1 表示数据连接错误 2 表示参数传递错误 14 表示用户名不存在
	 *         16 表示尚未激活 19 表示密码错误
	 * @author Ray
	 * 
	 */
	@RequestMapping(value = "login", method = RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam(name = "loginName") String loginName,
			@RequestParam(name = "password") String password,
			HttpSession session) {
		System.out.print(loginName+password);
		String qString=this.backUserServiceImpl.loginVerifys(loginName,password);
		System.out.print("这是返回值哦："+qString);
		LoginUser bloginUser = this.backUserServiceImpl.bFindUserByEmail(loginName);
		if (qString.equals("0")) {
			session.setAttribute("loginUser", bloginUser);
			return qString;
		}
		
		return qString;
	}
	/**
	 * @author Ray
	 * @param session
	 * @return
	 */
	@RequestMapping("index")
	public String b_index(HttpSession session){
		return "index";
	}


}
