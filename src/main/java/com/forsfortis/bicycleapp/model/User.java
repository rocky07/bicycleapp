package com.forsfortis.bicycleapp.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.forsfortis.bicycleapp.vo.UserRole;

@javax.persistence.Entity
@Table(name="user")
public class User {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String email;
	private String password;
	private String name;
	//@OneToMany(fetch = FetchType.LAZY, mappedBy = "id")
	private String role;
	
	public User(UserRole user){
		this.role=String.valueOf(user);
	}
	public User(){
	}
	public User(int id){
		this.id=id;
	}
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
}
