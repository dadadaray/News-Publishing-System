package com.aps.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "mod_mix_single")
public class ModMixSingle {
	private Integer modMixSingle;
	private String mMixSingleImgOne;
	private String mMixSingleContentOne;
	private News news;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getModMixSingle() {
		return modMixSingle;
	}

	public void setModMixSingle(Integer modMixSingle) {
		this.modMixSingle = modMixSingle;
	}

	public String getmMixSingleImgOne() {
		return mMixSingleImgOne;
	}

	public void setmMixSingleImgOne(String mMixSingleImgOne) {
		this.mMixSingleImgOne = mMixSingleImgOne;
	}

	public String getmMixSingleContentOne() {
		return mMixSingleContentOne;
	}

	public void setmMixSingleContentOne(String mMixSingleContentOne) {
		this.mMixSingleContentOne = mMixSingleContentOne;
	}

	@OneToOne(mappedBy = "modMixSingle", fetch = FetchType.EAGER)
	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

}
