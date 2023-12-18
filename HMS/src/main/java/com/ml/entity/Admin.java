package com.ml.entity;

import java.time.LocalDate;

public class Admin extends User {
    
    private long _id;
    private int uid;
    private String adid;
    private String secret_code;
    private int auth_level;

    public Admin() {
	
    }

    public Admin(String name, LocalDate dob, String phone, String email, String password, String image) {
	super(name, dob, phone, email, password, image);
	
    }
    
    

    public Admin(int uid, String adid, String secret_code, int auth_level) {
	this.uid = uid;
	this.adid = adid;
	this.secret_code = secret_code;
	this.auth_level = auth_level;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getAdid() {
        return adid;
    }

    public void setAdid(String adid) {
        this.adid = adid;
    }

    public String getSecret_code() {
        return secret_code;
    }

    public void setSecret_code(String secret_code) {
        this.secret_code = secret_code;
    }

    public int getAuth_level() {
        return auth_level;
    }

    public void setAuth_level(int auth_level) {
        this.auth_level = auth_level;
    }

    @Override
    public String toString() {
	return "Admin [_id=" + _id + ", uid=" + uid + ", adid=" + adid + ", secret_code=" + secret_code
		+ ", auth_level=" + auth_level + "]";
    }
    
}
