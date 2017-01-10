package com.gyl.domain.privilege;

import java.io.Serializable;
import java.util.Set;

import com.gyl.domain.baseData.User;

public class Role implements Serializable{

	private static final long serialVersionUID = -5337941168759685885L;

	private Long rid;
	private Long pid;
	private String name;
	private Boolean isParent;//是否为父节点
	private Set<User> users;
	public Long getRid() {
		return rid;
	}
	public void setRid(Long rid) {
		this.rid = rid;
	}
	public Long getPid() {
		return pid;
	}
	public void setPid(Long pid) {
		this.pid = pid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Boolean getIsParent() {
		return isParent;
	}
	public void setIsParent(Boolean isParent) {
		this.isParent = isParent;
	}
	public Set<User> getUsers() {
		return users;
	}
	public void setUsers(Set<User> users) {
		this.users = users;
	}
}
