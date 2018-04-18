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
	
	public Page<News> publishNewsList(int pageNum, int pageSize, Object[] params) {
		return this.newsDaoImpl.findPublishList(pageNum, pageSize, params);
	}
}
