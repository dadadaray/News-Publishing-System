package com.aps.entity;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import com.sun.org.apache.xpath.internal.operations.Mod;

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
	private Integer topShow; // 推荐文章 0：不推 1：推荐
	private Integer view; // 文章浏览量
	private Integer like; // 文章点赞数
	private Integer share; // 文章分享数量
	private Integer commentNum; // 文章评论数量
	private UserInfo userInfo; // 文章的作者
	private NewsType newsType; // 文章类型
	private ModFree modFree; // 自由模板
	private ModBigImg modBigImg; // 大图模板
	private ModVedio modVedio; // 视频模板
	private ModAudio ModAudio; // 音频模板
	private ModMixCenter modMixCenter; // 图文居中
	private ModMixLR modMixLR;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getNewsId() {
		return newsId;
	}

	public void setNewsId(Integer newsId) {
		this.newsId = newsId;
	}

	public String getNewsTitle() {
		return newsTitle;
	}

	public void setNewsTitle(String newsTitle) {
		this.newsTitle = newsTitle;
	}

	public String getCoverImgUrl() {
		return coverImgUrl;
	}

	public void setCoverImgUrl(String coverImgUrl) {
		this.coverImgUrl = coverImgUrl;
	}

	public String getEditor() {
		return editor;
	}

	public void setEditor(String editor) {
		this.editor = editor;
	}

	public Date getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getTopShow() {
		return topShow;
	}

	public void setTopShow(Integer topShow) {
		this.topShow = topShow;
	}

	public Integer getView() {
		return view;
	}

	public void setView(Integer view) {
		this.view = view;
	}

	public Integer getLike() {
		return like;
	}

	public void setLike(Integer like) {
		this.like = like;
	}

	public Integer getShare() {
		return share;
	}

	public void setShare(Integer share) {
		this.share = share;
	}

	public Integer getCommentNum() {
		return commentNum;
	}

	public void setCommentNum(Integer commentNum) {
		this.commentNum = commentNum;
	}

	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH }, fetch = FetchType.LAZY)
	@JoinColumn(name = "newTypeId")
	public NewsType getNewsType() {
		return newsType;
	}

	public void setNewsType(NewsType newsType) {
		this.newsType = newsType;
	}

	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH }, fetch = FetchType.LAZY)
	@JoinColumn(name = "newsAuthorId")
	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	@OneToOne
	@PrimaryKeyJoinColumn
	public ModFree getModFree() {
		return modFree;
	}

	public void setModFree(ModFree modFree) {
		this.modFree = modFree;
	}

	@OneToOne
	@PrimaryKeyJoinColumn
	public ModBigImg getModBigImg() {
		return modBigImg;
	}

	public void setModBigImg(ModBigImg modBigImg) {
		this.modBigImg = modBigImg;
	}

	@OneToOne
	@PrimaryKeyJoinColumn
	public ModVedio getModVedio() {
		return modVedio;
	}

	public void setModVedio(ModVedio modVedio) {
		this.modVedio = modVedio;
	}

	@OneToOne
	@PrimaryKeyJoinColumn
	public ModAudio getModAudio() {
		return ModAudio;
	}

	public void setModAudio(ModAudio modAudio) {
		ModAudio = modAudio;
	}

	@OneToOne
	@PrimaryKeyJoinColumn
	public ModMixCenter getModMixCenter() {
		return modMixCenter;
	}

	public void setModMixCenter(ModMixCenter modMixCenter) {
		this.modMixCenter = modMixCenter;
	}

	@OneToOne
	@PrimaryKeyJoinColumn
	public ModMixLR getModMixLR() {
		return modMixLR;
	}

	public void setModMixLR(ModMixLR modMixLR) {
		this.modMixLR = modMixLR;
	}

}
