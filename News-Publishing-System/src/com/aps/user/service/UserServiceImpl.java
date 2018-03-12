package com.aps.user.service;

import javax.annotation.Resource;
import javax.mail.MessagingException;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aps.entity.User;
import com.aps.user.dao.UserDaoImpl;
import com.framework.EmailVo;

@Service
@Transactional(readOnly = true)
public class UserServiceImpl {
	@Resource
	private UserDaoImpl userDaoImpl;

	@Transactional(readOnly = false)
	public String register(User user, String serverNameAndPort) {
		// 处理业务逻辑
		// 1.判断是否存在这个email
		if (this.userDaoImpl.findByEmail(user.getEmail()) != null) {
			// 存在这样的数据
			return "4"; // 邮箱已经存在
		}
		// 2.判断是否存在这个用户名
		// 3.若是数据库中不存在这样的数据，那么开始注册！
		String result = this.userDaoImpl.register(user);
		if (result == "0") {
			// 发送邮件
			EmailVo emailVo = new EmailVo();
			emailVo.setReceivers(new String[] { user.getEmail() });
			emailVo.setSender("news_website@163.com");
			emailVo.setSubject("欢迎注册新闻天下");
			// 邮件内容!
			String activeURL = "http://" + serverNameAndPort + "/News-Publishing-System/user/activeLoginUser?loginName="
					+ user.getUserName();
			String emailContent = "<html><head><title>欢迎注册新闻天下</title></head><body>"
					+ "<table border='0' cellpadding='0' cellspacing='0' width='100%'>" + "<tr>"
					+ "<td style='padding: 10px 0 30px 0;'>"
					+ "<table align='center' border='0' cellpadding='0' cellspacing='0' width='600' style='border: 1px solid #cccccc; border-collapse: collapse;'>"
					+ "<tr>"
					+ "<td align='center' bgcolor='#70bbd9' style='padding: 40px 0 30px 0; color: #153643; font-size: 28px; font-weight: bold; font-family: Arial, sans-serif;'>"
					+ "<img src='http://www.fengtingxin.cn/images/black_logo.png' alt='nullpointer Logo' width='300' height='230' style='display: block;' />"
					+ "</td>" + "</tr>" + "<tr>" + "<td bgcolor='#ffffff' style='padding: 40px 30px 40px 30px;'>"
					+ "<table border='0' cellpadding='0' cellspacing='0' width='100%'>" + "<tr>"
					+ "<td style='color: #153643; font-family: Arial, sans-serif; font-size: 24px;'>"
					+ "<b>Welcome to nullpointer!</b>" + "</td>" + "</tr>" + "<tr>"
					+ "<td style='padding: 20px 0 30px 0; color: #153643; font-family: Arial, sans-serif; font-size: 16px; line-height: 20px;'>"
					+ "请点击以下链接完成注册：<b><br/><a href='" + activeURL
					+ "'>http://localhost:8080/nullpointer/loginUser/activeLoginUser?loginActive=true（右键在新标签页中打开）</a></b>"
					+ "</td></tr></table></td></tr><tr>"
					+ "<td bgcolor='#ee4c50' style='padding: 30px 30px 30px 30px;'>"
					+ "<table border='0' cellpadding='0' cellspacing='0' width='100%'>" + "<tr>"
					+ "<td style='color: #ffffff; font-family: Arial, sans-serif; font-size: 14px;' width='75%'>"
					+ "<a href='#' style='color: #ffffff;'><font color='#ffffff'>hei boy!</font></a>&nbsp;Welcome you again!"
					+ "</td></tr></table></td></tr></table></td></tr></table>" + "</body></html>";
			emailVo.setEmailContent(emailContent);
			try {
				emailVo.sendOneEmail(emailVo);
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return "1";
			}
			// System.out.println("email is success to ");
		}
		return result;
	}

	/**
	 * 功能： 判断是否激活
	 * 
	 * @param loginName
	 * @param password
	 * @author Ray
	 * @return 0 表示登录成功 -1 表示验证码错误 1 表示数据连接错误 2 表示参数传递错误 14 表示用户名不存在 16 表示尚未激活
	 *         19 表示密码错误
	 * 
	 */
	public String loginVerify(String loginName, String password) {
		// 判断登录名称是否为email
		User t1 = this.userDaoImpl.findByEmail(loginName);

		if (t1 == null) {
			return "14"; // 用户名不存在返回14
		}

		//// 判断密码是否正确
		if (!t1.getPassword().equals(password)) {
			return "15";
		}
		// 判断是否激活
		if (t1.isLoginActive() == false) {
			return "16";
		}
		// 登录成功！
		return "0";

	}

	/**
	 * 功能： 通过name得到loginUser
	 * 
	 * @param loginName
	 * @return LoginUser 实体
	 * @author Ray
	 */
	public User findByEmail(String email) {
		return this.userDaoImpl.findUserByEmil(email);
	}

	/**
	 * 更新用户
	 * 
	 * @author Ray
	 * @param loginUser
	 */
	@Transactional(readOnly = false)
	public void updateUser(User loginUser) {
		this.userDaoImpl.updateUser(loginUser);
	}

}
