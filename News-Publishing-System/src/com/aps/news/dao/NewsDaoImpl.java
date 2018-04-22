package com.aps.news.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.aps.entity.News;
import com.framework.BaseDao;
import com.framework.Page;
import com.framework.SqlUtils;;

@Repository
public class NewsDaoImpl extends BaseDao<News, String> {
	@Resource
	private SessionFactory sessionFactory;

	/**
	 * 查询所有news 无序
	 * 
	 * @author Ray
	 * @return
	 */
	public List<News> getAllNews() {
		Session session = super.getSession();
		return session.createQuery("from News").list();
	}
	
	/**
	 * @Title: findPublishList
	 * @Description: 得到发布新闻的列表
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @param orderBy 排序方式 默认0：发布时间  1：分享 2：浏览 3：留言
	 * @return
	 * @author HanChen
	 * @return Page<News>
	 */
	public Page<News> findPublishList(int pageNum, int pageSize, Object[] params, int orderBy) {
		String hql,orderParam = "";
		switch(orderBy){
		case 0:
			orderParam = "publishTime";
			break;
		case 1:
			orderParam = "share";
			break;
		case 2:
			orderParam = "views";
			break;
		case 3:
			orderParam = "commentNum";
			break;
		}
		hql="from News n where n.userInfo.userInfoId = ? and n.statues = 4 order by n." + orderParam + " desc";
		params[0]=params[0];
		
		try{
			Page<News> page = new Page<News>();
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
	 * @Title: checkingNewsList
	 * @Description: 得到待审核的新闻列表
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @return
	 * @author HanChen
	 * @return Page<News>
	 */
	public Page<News> checkingNewsList(int pageNum, int pageSize, Object[] params){
		String hql;
		hql="from News n where n.userInfo.userInfoId = ? and n.statues = 1 order by n.createTime desc";
		params[0]=params[0];
		try{
			Page<News> page = new Page<News>();
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
	 * @Title: uncheckedNewsList
	 * @Description: 新闻编辑者--审核未通过新闻列表
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @return
	 * @author HanChen 
	 * @return Page<News>
	 */
	public Page<News> uncheckedNewsList(int pageNum, int pageSize, Object[] params){
		String hql;
		hql="from News n where n.userInfo.userInfoId = ? and n.statues = 3 order by n.createTime desc";
		params[0]=params[0];
		try{
			Page<News> page = new Page<News>();
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
	 * @Title: backCheckingNewsList
	 * @Description: 后台管理员待审核文章列表
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @return
	 * @author HanChen 
	 * @return Page<News>
	 */
	public Page<News> backCheckingNewsList(int pageNum, int pageSize, Object[] params){
		String hql;
		hql="from News n where n.auditorId = ? and n.statues = 1 order by n.createTime desc";
		params[0]=params[0];
		try{
			Page<News> page = new Page<News>();
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
	 * @Title: deleteNews
	 * @Description: 删除新闻
	 * @param newsIds
	 * @return
	 * @author HanChen 
	 * @return int
	 */
	public int deleteNews(String newsIds){
		int ret = 0;
		try {
			Query query = this.sessionFactory.getCurrentSession()
					.createQuery("delete from News n where n.newsId in" + SqlUtils.toLikeSqlForStr(newsIds, ","));
			ret = query.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return ret;
	}
	
	/**
	 * 根据newsId 查询news
	 * 
	 * @author Ray
	 * @param newsId
	 * @return
	 */
	public News getNewsById(int newsId) {
		News news;
		try {
			news = this.get(newsId);
			return news;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 更新新闻
	 * 
	 * @author Ray
	 * @param news
	 */
	public void updateNews(News news) {
		try {
			super.update(news);
			System.out.print("已更新");
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * 保存新闻
	 * @author Ray
	 * @param n
	 */
	public void saveNews(News n) {
		try {
			this.save(n);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
