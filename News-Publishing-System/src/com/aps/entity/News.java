package com.aps.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "news")
public class News {
	private Integer newsId;
	private String newsTitle; // 新闻标题
	private String coverImgUrl; // 封面图片
	private String editor; // 文章作者
	private Date publishTime; // 发表时间
	private Date createTime; // 创作时间
	private Integer status; // 文章状态 0：草稿 1：待审核 2：审核通过 3：未通过 4：发布
    
}
