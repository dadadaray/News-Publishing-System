package com.aps.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "website_view")
public class WebsiteView {
	private Integer websiteView;
	private Integer num; // 网站浏览量

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getWebsiteView() {
		return websiteView;
	}

	public void setWebsiteView(Integer websiteView) {
		this.websiteView = websiteView;
	}

	public Integer getNum() {
		return num;
	}

	public void setNum(Integer num) {
		this.num = num;
	}

}
