/**
 * @FileName com.aps.notice.service/NoticeServiceImpl.java 
 * @Project News-Publishing-System
 * @author lenovo 
 * @date 2018年3月14日 上午10:07:01
 * @version 
 * @Description TODO
 */

package com.aps.notice.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aps.entity.Notice;
import com.aps.notice.dao.NoticeDaoImpl;
import com.framework.Page;

/**
 * 
 * @ClassName NoticeServiceImpl
 * @Description 通知service
 * @author HanChen
 * @version
 *
 */
@Service
public class NoticeServiceImpl {
	
	@Resource
	private NoticeDaoImpl noticeDaoImpl;
	
	/**
	 * @Title: listNotice
	 * @Description: 分页查询所有的通知
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @return
	 * @author HanChen
	 * @return Page<Notice>
	 */
	public Page<Notice> listNotice(int pageNum, int pageSize, Object[] params) {
		return this.noticeDaoImpl.findAllNotice(pageNum, pageSize, params);
	}
	
	/**
	 * @Title: deleteNotice
	 * @Description: 删除通知
	 * @param noticeIds
	 * @author HanChen 
	 * @return int
	 */
	@Transactional(readOnly = false)
	public int deleteNotice(String noticeIds) {
		return this.noticeDaoImpl.deleteNotice(noticeIds);
	}
	
	/**
	 * @Title: getNoticeByNewsId
	 * @Description: 根据新闻id查询通知id
	 * @param newsIds
	 * @return
	 * @author HanChen 
	 * @return String
	 */
	public String getNoticeByNewsId(String newsIds){
		return this.noticeDaoImpl.getNoticeByNewsId(newsIds);
	}
	
	/**
	 * @Title: getNoticeByUserId
	 * @Description: 查询与用户相关的通知
	 * @param userIds
	 * @return
	 * @author HanChen  
	 * @return String
	 */
	public String getNoticeByUserId(String userIds){
		return this.noticeDaoImpl.getNoticeByUserId(userIds);
	}
	
}
