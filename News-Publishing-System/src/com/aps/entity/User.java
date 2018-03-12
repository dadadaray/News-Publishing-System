package com.aps.entity;

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

@Entity
@Table(name = "user")
public class User {
	private Integer userId;
	private String userName; // 用户名
	private String password; // 密码
	private String email; // 邮箱
	private UserInfo userInfo; // 用户详情
	private boolean loginActive; // 邮箱是否激活
	private Role role;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@OneToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@PrimaryKeyJoinColumn
	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

	public boolean isLoginActive() {
		return loginActive;
	}

	public void setLoginActive(boolean loginActive) {
		this.loginActive = loginActive;
	}

	@ManyToOne(cascade = { CascadeType.PERSIST, CascadeType.MERGE, CascadeType.REFRESH }, fetch = FetchType.LAZY)
	@JoinColumn(name = "roleId")
	public Role getRole() {
		return role;
	}

	public void setRole(Role role) {
		this.role = role;
	}

}
