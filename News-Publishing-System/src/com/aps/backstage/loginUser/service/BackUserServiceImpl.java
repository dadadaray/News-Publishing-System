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
		 return this.backUserDaoImpl.findByEmil(email);
	}

}
