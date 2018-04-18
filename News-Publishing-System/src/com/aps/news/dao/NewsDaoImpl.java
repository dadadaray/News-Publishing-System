package com.aps.news.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.aps.entity.News;
import com.framework.BaseDao;
import com.framework.Page;;

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
	 * @return
	 * @author HanChen
	 * @return Page<News>
	 */
	public Page<News> findPublishList(int pageNum, int pageSize, Object[] params) {
		String hql;
		
		hql="from News n where n.userInfo.userInfoId = ? and n.statues == 4 order by n.publishTime desc";
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
