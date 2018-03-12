package com.aps.news.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import com.aps.entity.News;
import com.framework.BaseDao;;

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
			// TODO Auto-generated catch block
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
			// TODO Auto-generated catch block
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
