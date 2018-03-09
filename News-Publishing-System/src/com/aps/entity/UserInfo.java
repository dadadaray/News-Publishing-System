package com.aps.entity;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.annotations.Parameter;

/**
 * 
 * @author Ray
 *
 */
@Entity
@Table(name = "userinfo")
public class UserInfo {

	public Integer userInfoId; // id
	public String phone; // 电话号码
	public String creed; // 信条
	public String info; // 个人简介
	public Integer sendpassNum; // 发送文章数量
	public String headUrl; // 头像
	public Date userRegistTime; // 用户注册时间
	public User user;

	@Id
	@GenericGenerator(name = "foreignkey", strategy = "foreign", parameters = @Parameter(value = "user", name = "property"))
	@GeneratedValue(generator = "foreignkey")
	public Integer getUserInfoId() {
		return userInfoId;
	}

	public void setUserInfoId(Integer userInfoId) {
		this.userInfoId = userInfoId;
	}
	
	@OneToOne
	@PrimaryKeyJoinColumn
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCreed() {
		return creed;
	}

	public void setCreed(String creed) {
		this.creed = creed;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public Integer getSendpassNum() {
		return sendpassNum;
	}

	public void setSendpassNum(Integer sendpassNum) {
		this.sendpassNum = sendpassNum;
	}

	public String getHeadUrl() {
		return headUrl;
	}

	public void setHeadUrl(String headUrl) {
		this.headUrl = headUrl;
	}

	public Date getUserRegistTime() {
		return userRegistTime;
	}

	public void setUserRegistTime(Date userRegistTime) {
		this.userRegistTime = userRegistTime;
	}

}
