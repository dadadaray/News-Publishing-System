/**
 * @FileName com.aps.backstage.user.service/UserServiceImpl.java 
 * @Project News-Publishing-System
 * @author lenovo 
 * @date 2018年4月26日 下午3:59:30
 * @version 
 * @Description TODO
 */

package com.aps.backstage.user.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aps.backstage.user.dao.UserDaoImpl;

/**
 * 
 * @ClassName UserServiceImpl
 * @Description 后台用户管理
 * @author HanChen
 * @version
 *
 */

@Service
@Transactional(readOnly = true)
public class UserServiceImpl {
	
	@Resource
	private UserDaoImpl userDaoImpl;
	
	

}
