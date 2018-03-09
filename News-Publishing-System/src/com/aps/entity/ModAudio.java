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
@Table(name = "mod_audio")
public class ModAudio {
	private Integer ModAudioId;
	private String mAudioUrl;
	private String modAudioContent;
	private News news;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getModAudioId() {
		return ModAudioId;
	}

	public void setModAudioId(Integer modAudioId) {
		ModAudioId = modAudioId;
	}

	public String getmAudioUrl() {
		return mAudioUrl;
	}

	public void setmAudioUrl(String mAudioUrl) {
		this.mAudioUrl = mAudioUrl;
	}

	public String getModAudioContent() {
		return modAudioContent;
	}

	public void setModAudioContent(String modAudioContent) {
		this.modAudioContent = modAudioContent;
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
