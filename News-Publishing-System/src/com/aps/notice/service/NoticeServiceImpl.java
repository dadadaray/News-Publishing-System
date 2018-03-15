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

import com.aps.entity.Notice;
import com.aps.notice.dao.NoticeDaoImpl;
import com.framework.Page;

/**
 * 
 * @ClassName NoticeServiceImpl
 * @Description TODO
 * @author lenovo 
 * @date 2018年3月14日上午10:07:01 
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
}
