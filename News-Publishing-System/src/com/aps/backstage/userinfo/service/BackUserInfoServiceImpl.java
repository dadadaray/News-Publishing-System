package com.aps.backstage.userinfo.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aps.userinfo.dao.UserInfoDaoImpl;

@Service
public class BackUserInfoServiceImpl {
	@Resource
	private UserInfoDaoImpl UserInfoDaoImpl;
	
	 @Transactional(readOnly = false)
		public void updateImgUrl(int id,String url) {
		 UserInfoDaoImpl.updateImgUrl(id,url);
	    }

}
