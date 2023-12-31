package com.ml.entity;

import java.util.Date;

public class User {

    private long id;
    private String name;
    private Date dob;
    private String phone;
    private String email;
    private String password;
    private String image;
    
    public User() {}

    public User(String name, Date dob, String phone, String email, String password, String image) {
	this.name = name;
	this.dob = dob;
	this.phone = phone;
	this.email = email;
	this.password = password;
	this.image = image;
    }

    public User(long id, String name, Date dob, String phone, String email, String password, String image) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.image = image;
	}

	public long getId() {
        return id;
    }

    public void setId(long id) {
		this.id = id;
	}

	public String getName() {
	return name;
    }

    public void setName(String name) {
	this.name = name;
    }

    public Date getDob() {
	return dob;
    }

    public void setDob(Date dob) {
	this.dob = dob;
    }

    public String getPhone() {
	return phone;
    }

    public void setPhone(String phone) {
	this.phone = phone;
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

    public String getImage() {
	return image;
    }

    public void setImage(String image) {
	this.image = image;
    }

    @Override
    public String toString() {
	return "User [id=" + id + ", name=" + name + ", dob=" + dob + ", phone=" + phone + ", email=" + email
		+ ", password=" + password + ", image=" + image + "]";
    }

}