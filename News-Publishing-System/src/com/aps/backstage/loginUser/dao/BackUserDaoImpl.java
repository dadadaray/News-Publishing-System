package com.aps.backstage.loginUser.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.aps.entity.LoginUser;
import com.framework.BaseDao;

@Repository
public class BackUserDaoImpl extends BaseDao<LoginUser, String> {
	@Resource
	private SessionFactory sessionFactory;
	/**
	 * 功能： 通过email得到loginUser 实体
	 * 
	 * @param loginName
	 * @return loginUser
	 * @author Ray
	 */
	public LoginUser bfindByEmil(String email) {
		try {
			Query query = this.sessionFactory.getCurrentSession()
					.createQuery("from LoginUser where loginEmail='" + email + "' and roleId='2'");
			return (LoginUser) query.uniqueResult();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

}
