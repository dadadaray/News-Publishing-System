package com.aps.user.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aps.entity.Role;
import com.aps.entity.User;
import com.aps.entity.UserInfo;
import com.aps.role.service.RoleServiceImpl;
import com.aps.user.service.UserServiceImpl;
import com.framework.EncodingTool;

@Controller
@RequestMapping("user")
public class UserControllerImpl {
	@Resource
	private UserServiceImpl userServiceImpl;
	@Resource
	private RoleServiceImpl roleServiceImpl;

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
	@ResponseBody
	public String register(@RequestParam(name = "name") String name, @RequestParam(name = "email") String email,
			@RequestParam(name = "password") String password, HttpSession session, HttpServletRequest request) {
		// code转换
		// 判断email是否符合格式,使用java正则表达式
		if (EncodingTool.isEmail(email)) {
			User loginUser = new User();
			loginUser.setEmail(email);
			loginUser.setUserName(name);
			loginUser.setPassword(password);
			UserInfo userInfo = new UserInfo();
			// 获取用户注册时间
			Date time = new Date();// new Date()为获取当前系统时间
			// 给新注册的用户分配角色
			Role role = this.roleServiceImpl.getRole(1);
			loginUser.setRole(role);
			userInfo.setUserRegistTime(time);
			userInfo.setUser(loginUser);
			loginUser.setUserInfo(userInfo);
			String result = this.userServiceImpl.register(loginUser,
					request.getServerName() + ":" + request.getServerPort());
			if (result == "0") {
				// 这里是迫不得已才改成的自动跳转，本来想的是自动关闭页面，但是由于google浏览器的限制，没有实现该功能！
				String welcome = "您的注册邮箱为：" + email + ";快去邮箱激活账户吧！";
				session.setAttribute("regiserWelcome", welcome);
				session.setAttribute("registerTitle", "注册成功");
				session.setAttribute("registerEmail", email);
				return result;
			}
			return result;
		}
		return "5";
	}

	/**
	 * 功能： 1.激活注册账号 2.使页面跳转到登录页面 3.设置用户头像
	 * 
	 * @param active
	 * @param loginName
	 * @param session
	 * @return 跳转到注册确认界面
	 * @author Ray
	 */
	@RequestMapping(value = "activeLoginUser", method = RequestMethod.GET)
	public String activeLoginUser(@RequestParam(name = "email") String loginName, HttpSession session,
			HttpServletRequest request) {
		loginName = EncodingTool.encodeStr(loginName);
		User loginUser = this.userServiceImpl.findByEmail(loginName);
		if (loginUser == null) {
			return "error";
		}
		loginUser.setLoginActive(true); // 激活用户
		this.userServiceImpl.updateUser(loginUser); // 更新
		String content = "<h4> <small>本页面将于10秒内自动跳转到登录！<a href='" + request.getContextPath()
				+ "/font_desk/login.jsp'>立即跳转</a></small></h4>";
		session.setAttribute("regiserWelcome", "您的注册邮箱为:" + loginUser.getEmail() + ",恭喜您激活成功，快去登陆新闻天下吧");
		session.setAttribute("registerTitle", "激活成功");
		session.setAttribute("registerEmail", loginUser.getEmail());
		session.setAttribute("registerContent", content);
		return "registerSure";
	}

}
