/**
 * @FileName com.aps.news.service/NewsServiceImpl.java 
 * @Project News-Publishing-System
 * @author Hanchen 
 * @version 
 * @Description TODO
 */

package com.aps.news.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aps.entity.News;
import com.aps.news.dao.NewsDaoImpl;
import com.framework.Page;

/**
 * 
 * @ClassName NewsServiceImpl
 * @Description 新闻Service实现
 * @author HanChen
 * @version
 *
 */
@Service
public class NewsServiceImpl {
	@Resource
	private NewsDaoImpl newsDaoImpl;
	
	/**
	 * @Title: publishNewsList
	 * @Description: 得到新闻发布列表
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @param orderBy 排序方式 默认：发布时间  1：分享 2：浏览 3：留言
	 * @return
	 * @author HanChen
	 * @return Page<News>
	 */
	public Page<News> publishNewsList(int pageNum, int pageSize, Object[] params, int orderBy) {
		return this.newsDaoImpl.findPublishList(pageNum, pageSize, params, orderBy);
	}
	
	/**
	 * @Title: checkingNewsList
	 * @Description: 得到新闻编辑者正在审核的新闻列表
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @return
	 * @author HanChen 
	 * @return Page<News>
	 */
	public Page<News> checkingNewsList(int pageNum, int pageSize, Object[] params){
		return this.newsDaoImpl.checkingNewsList(pageNum, pageSize, params);
	}
	
	/**
	 * @Title: uncheckedNewsList
	 * @Description: 新闻编辑者--审核未通过新闻列表
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @return HanChen
	 * @author  
	 * @return Page<News>
	 */
	public Page<News> uncheckedNewsList(int pageNum, int pageSize, Object[] params){
		return this.newsDaoImpl.uncheckedNewsList(pageNum, pageSize, params);
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
		return this.newsDaoImpl.backCheckingNewsList(pageNum, pageSize, params);
	}
	
	/**
	 * @Title: backPublishNewsList
	 * @Description: 后台管理员已发布文章列表
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @param orderBy
	 * @return
	 * @author HanChen 
	 * @return Page<News>
	 */
	public Page<News> backPublishNewsList(int pageNum, int pageSize, Object[] params, int orderBy){
		return this.newsDaoImpl.backPublishList(pageNum, pageSize, params, orderBy);
	}
	
	/**
	 * @Title: backUncheckedNewsList
	 * @Description: 后台管理员审核未通过文章列表
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @return HanChen
	 * @author 
	 * @return Page<News>
	 */
	public Page<News> backUncheckedNewsList(int pageNum, int pageSize, Object[] params){
		return this.newsDaoImpl.backUncheckingNewsList(pageNum, pageSize, params);
	}
	
	/**
	 * @Title: getHotNewsList
	 * @Description: 后台管理员首页文章排行
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @param timeSlot 排序时间段 默认0：昨天； 1：前天； 2：本周 ；
	 * @return
	 * @author HanChen 
	 * @return Page<News>
	 */
	public Page<News> getHotNewsList(int pageNum, int pageSize, Object[] params, int timeSlot){
		return this.newsDaoImpl.getHotNewsList(pageNum, pageSize, params, timeSlot);
	}

	/**
	 * @Title: draftNewsList
	 * @Description: 草稿箱
	 * @param pageNum
	 * @param pageSize
	 * @param params
	 * @return
	 * @author HanChen  
	 * @return Page<News>
	 */
	public Page<News> draftNewsList(int pageNum, int pageSize, Object[] params){
		return this.newsDaoImpl.draftNewsList(pageNum, pageSize, params);
	}
	
	/**
	 * @Title: deleteNews
	 * @Description: 删除新闻
	 * @param newsIds
	 * @return
	 * @author HanChen 
	 * @return int
	 */
	@Transactional(readOnly = false)
	public int deleteNews(String newsIds) {
		return this.newsDaoImpl.deleteNews(newsIds);	
	}
	/**
	 * @dec 保存新闻
	 * @author Ray
	 * @param news
	 */
	@Transactional(readOnly = false)
	public void saveNews(News news){
		this.newsDaoImpl.saveNews(news);
	}
	
}
