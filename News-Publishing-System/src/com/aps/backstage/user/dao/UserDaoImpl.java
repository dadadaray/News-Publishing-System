/**
 * @FileName com.aps.backstage.user.dao/UserDaoImpl.java 
 * @Project News-Publishing-System
 * @author lenovo 
 * @date 2018年4月26日 下午3:57:35
 * @version 
 * @Description TODO
 */

package com.aps.backstage.user.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.aps.entity.LoginUser;
import com.aps.entity.UserInfo;
import com.framework.BaseDao;
import com.framework.Page;

/**
 * 
 * @ClassName UserDaoImpl
 * @Description 后台用户管理
 * @author HanChen 
 * @version
 *
 */
@Repository
public class UserDaoImpl extends BaseDao<LoginUser, String> {
	@Resource
	private SessionFactory sessionFactory;
	
	public Page<LoginUser> reporterList(int pageNum, int pageSize, Object[] params){
		String hql;
		hql="from LoginUser u where n.userInfo.userInfoId = ? and n.statues = 1 order by n.createTime desc";
		params[0]=params[0];
		try{
			Page<LoginUser> page = new Page<LoginUser>();
			page.setCurrentPageNum(pageNum);
			page.setPageSize(pageSize);
			page = this.findByPage(pageNum, pageSize, hql, params);
			return page;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
