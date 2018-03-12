package com.aps.user.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.aps.entity.User;
import com.framework.BaseDao;

@Repository
public class UserDaoImpl extends BaseDao<User, String> {
	@Resource
	private SessionFactory sessionFactory;

	/**
	 * 注册页面
	 * 
	 * @author Ray
	 * @param user
	 * @return
	 */
	public String register(User user) {
		try {
			super.save(user);
			return "0";
		} catch (Exception e) {
			e.printStackTrace();
			return "1";
		}
	}

	/**
	 * 通过email 找到用户实体
	 * 
	 * @author Ray
	 * @param email
	 * @return
	 */
	public User findByEmail(String email) {
		try {
			Query query = this.sessionFactory.getCurrentSession().createQuery("from User where email='" + email + "'");
			return (User) query.uniqueResult();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 功能： 通过email得到loginUser 实体
	 * 
	 * @param loginName
	 * @return loginUser
	 * @author Ray
	 */
	public User findUserByEmil(String email) {
		try {
			Query query = this.sessionFactory.getCurrentSession().createQuery("from User where email='" + email + "'");
			return (User) query.uniqueResult();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 功能： 更新用户信息
	 * 
	 * @param loginUser
	 * @author Ray
	 * 
	 */
	public void updateUser(User loginUser) {
		try {
			User l1 = this.findByEmail(loginUser.getEmail());
			super.excuteBySql("update user set UserName=?,password=?,email=?,loginActive=? where userId=?",
					new Object[] { loginUser.getUserName(), loginUser.getPassword(), loginUser.getEmail(),
							loginUser.isLoginActive(), l1.getUserId() });
		} catch (Exception e) {
			e.printStackTrace();
			// 对错误的处理

		}
	}

}
