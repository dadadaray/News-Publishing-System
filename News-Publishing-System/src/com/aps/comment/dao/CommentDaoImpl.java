package com.aps.comment.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.aps.entity.Comment;
import com.framework.BaseDao;
import com.framework.SqlUtils;

@Repository
public class CommentDaoImpl extends BaseDao<Comment, String>{
	@Resource
	private SessionFactory sessionFactory;
	
	public Comment findCommentById(Integer commentId) {
		Query query = this.sessionFactory.getCurrentSession().createQuery("from Comment where commentId=" + commentId);
		return (Comment) query.uniqueResult();
	}

	/**
	 * @dec 批量删除用户的评论
	 * @author Ray
	 * @param userInfoIds
	 * @return
	 */
	public int deleteComments(String userInfoIds) {
		int ret = 0;
		try {
			Query query = this.sessionFactory.getCurrentSession()
					.createQuery("delete from Comment n where n.userInfo.userInfoId in" + SqlUtils.toLikeSqlForStr(userInfoIds, ","));
			ret = query.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}
	/**
	 * @function 删除评论
	 *@author Ray
	 * @param commentId
	 *            评论的id
	 */
	public void deleteComment(int commentId) {
		try {
			Query query = this.sessionFactory.getCurrentSession()
					.createQuery("delete from Comment c where c.commentId=" + commentId);
			int ret = query.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	/**
	 * @fucntion 根据commentId查询单个评论
	 * @author Ray
	 * @param commentId
	 * @return
	 */
	public Comment getComment(Integer commentId){
		try {
			return this.get(commentId);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}

}
