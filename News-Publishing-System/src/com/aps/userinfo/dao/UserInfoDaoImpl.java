package com.aps.userinfo.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.aps.entity.UserInfo;
import com.framework.BaseDao;

@Repository
public class UserInfoDaoImpl extends BaseDao<UserInfo, String> {
	@Resource
	private SessionFactory sessionFactory;
	/**
	 * @function 根据id查询单个UserInfo
	 * @author Ray
	 * @param id
	 * @return
	 */
	public UserInfo findById(Integer id) {
		try {
			return super.findOne("from UserInfo u where u.userInfoId=?", new Object[] { id });
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	

	/**
	 * @author Ray_1 更新用户的个人头像 保存到数据库
	 * @param u
	 */
	public void updateImgUrl(int id, String url) {
		UserInfo u = findById(id);
		System.out.println("url:" + url);
		u.setHeadUrl(url);
		updateUserInfo(u);
	}
	
	 /**
     * @function 更新用户信息
     * @author Ray
     * @param u
     */
	public void updateUserInfo(UserInfo u) {
		System.out.print("到了dao");
		try {
			this.excuteBySql("update userinfo set phone=?, creed=?, headUrl=?,info=?,headUrl=? where userInfoId=?",
					new Object[]{u.getPhone(),u.getCreed(),u.getHeadUrl(),u.getInfo(),u.getHeadUrl(),u.getUserInfoId()});
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

}
