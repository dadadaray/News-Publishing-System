package com.aps.notice.dao;

import org.springframework.stereotype.Repository;

import com.aps.entity.Notice;
import com.framework.BaseDao;
import com.framework.Page;

@Repository
public class NoticeDaoImpl extends BaseDao<Notice, String> {
	
	/**
	 * @Title: findAllNotice
	 * @Description: 获取所有的通知   分页
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @return
	 * @author HanChen
	 * @return Page<Notice>
	 */
	public Page<Notice> findAllNotice(int pageNum, int pageSize, Object[] params) {
		
		String hql;
		if(params!=null && params.length>0){
			hql="from Notice n where n.noticeContent like ? and n.noticeType != 3 order by n.noticeCreatTime desc";
			params[0]="%"+params[0]+"%";
		}else{
			hql="from Notice n where n.noticeType != 3  order by n.noticeCreatTime desc";
		}
		try{
			Page<Notice> page = new Page<Notice>();
			page.setCurrentPageNum(pageNum);
			page.setPageSize(pageSize);
			page = this.findByPage(pageNum, pageSize, hql, params);
			return page;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	/**
	 * @Title: getNoticeById
	 * @Description: 根据noticeId 查询Notice
	 * @param noticeId
	 * @return
	 * @author HanChen
	 * @return Notice
	 */
	public Notice getNoticeById(int noticeId){
		Notice notice;
		try {
			notice = this.get(noticeId);
			return notice;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}
	
	/**
	 * @Title: saveNotice
	 * @Description: 创建通知
	 * @param notice
	 * @return
	 * @author HanChen
	 * @return String
	 */
	public String saveNotice(Notice notice){
		try {
			this.save(notice);
			return "1";
		} catch (Exception e) {
			e.printStackTrace();
			return "0";
		}
	}
	
}
