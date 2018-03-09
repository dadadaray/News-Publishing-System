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
@Table(name = "mod_vedio")
public class ModVedio {
	private String modVedioId;
	private String mvideoUrl;
	private String modVedioContent;
	private News news;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public String getModVedioId() {
		return modVedioId;
	}

	public void setModVedioId(String modVedioId) {
		this.modVedioId = modVedioId;
	}

	public String getMvideoUrl() {
		return mvideoUrl;
	}

	public void setMvideoUrl(String mvideoUrl) {
		this.mvideoUrl = mvideoUrl;
	}

	public String getModVedioContent() {
		return modVedioContent;
	}

	public void setModVedioContent(String modVedioContent) {
		this.modVedioContent = modVedioContent;
	}

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

}
