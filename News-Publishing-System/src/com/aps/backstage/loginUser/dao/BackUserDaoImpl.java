package com.aps.backstage.loginUser.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.aps.entity.LoginUser;
import com.framework.BaseDao;
import com.framework.Page;

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
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * @Title: reporterList
	 * @Description: 记者管理
	 * @param pageNum
	 * @param pageSize
	 * @return
	 * @author HanChen
	 * @return Page<LoginUser>
	 */
	public Page<LoginUser> reporterList(int pageNum, int pageSize){
		String hql;
		hql="from LoginUser u order by u.userInfo.userRegistTime desc";
		try{
			Page<LoginUser> page = new Page<LoginUser>();
			page.setCurrentPageNum(pageNum);
			page.setPageSize(pageSize);
			page = this.findByPage(pageNum, pageSize, hql, null);
			return page;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
