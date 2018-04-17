package com.aps.backstage.loginUser.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aps.backstage.loginUser.dao.BackUserDaoImpl;
import com.aps.entity.LoginUser;
import com.aps.loginUser.dao.LoginUserDaoImpl;

@Service
@Transactional(readOnly = true)
public class BackUserServiceImpl {
	@Resource
	private LoginUserDaoImpl loginUserDaoImpl;
	@Resource
	private BackUserDaoImpl backUserDaoImpl;
	
	@Transactional(readOnly = false)
	public void bregiste(LoginUser loginUser){
		this.loginUserDaoImpl.register(loginUser);
	}
	
	@Transactional(readOnly = false)
	public LoginUser bFindUserByEmail(String  email){
		 return this.backUserDaoImpl.bfindByEmil(email);
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
	public String loginVerifys(String email, String password) {
		// 判断登录名称是否为email
		LoginUser t1 = this.backUserDaoImpl.bfindByEmil(email);

		//// 判断密码是否正确
		
		if (!t1.getLoginPassword().equals(password)) {
			System.out.print("这是错误的账号");
			return "-1";
		}
		System.out.print("正确账号。");
		// 登录成功！
		return "0";
	}

}
