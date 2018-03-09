package com.aps.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "mod_mix_center")
public class ModMixCenter {
	private Integer mMixCenterId;
	private Integer mMixCenterImgOne;
	private Integer mMixCenterContentOne;
	private Integer mMixCenterImgTwo;
	private Integer mMixCenterContentTwo;
	private Integer mMixCenterImgThree;
	private Integer mMixCenterContentThree;
	private News news;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getmMixCenterId() {
		return mMixCenterId;
	}

	public void setmMixCenterId(Integer mMixCenterId) {
		this.mMixCenterId = mMixCenterId;
	}

	public Integer getmMixCenterImgOne() {
		return mMixCenterImgOne;
	}

	public void setmMixCenterImgOne(Integer mMixCenterImgOne) {
		this.mMixCenterImgOne = mMixCenterImgOne;
	}

	public Integer getmMixCenterContentOne() {
		return mMixCenterContentOne;
	}

	public void setmMixCenterContentOne(Integer mMixCenterContentOne) {
		this.mMixCenterContentOne = mMixCenterContentOne;
	}

	public Integer getmMixCenterImgTwo() {
		return mMixCenterImgTwo;
	}

	public void setmMixCenterImgTwo(Integer mMixCenterImgTwo) {
		this.mMixCenterImgTwo = mMixCenterImgTwo;
	}

	public Integer getmMixCenterContentTwo() {
		return mMixCenterContentTwo;
	}

	public void setmMixCenterContentTwo(Integer mMixCenterContentTwo) {
		this.mMixCenterContentTwo = mMixCenterContentTwo;
	}

	public Integer getmMixCenterImgThree() {
		return mMixCenterImgThree;
	}

	public void setmMixCenterImgThree(Integer mMixCenterImgThree) {
		this.mMixCenterImgThree = mMixCenterImgThree;
	}

	public Integer getmMixCenterContentThree() {
		return mMixCenterContentThree;
	}

	public void setmMixCenterContentThree(Integer mMixCenterContentThree) {
		this.mMixCenterContentThree = mMixCenterContentThree;
	}

	public News getNews() {
		return news;
	}

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	public void setNews(News news) {
		this.news = news;
	}

}
