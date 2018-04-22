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
	
	
}
