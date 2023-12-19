package com.ml.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import com.ml.db.DatabaseConfiguration;
import com.ml.entity.Admin;

public class AdminDao {
    
    private Connection con = null;
    private int statusCode;
    private ResultSet r;
    public static boolean flag;

    public AdminDao(Connection con) {
	this.con = con;
    }
    
  //Admin Login Function

    public Admin adminLogin(String uid, String code) throws SQLException {
	long id = 0L;
	long _id = 0L;
	Admin a = null;
	String sql = "select * from admin where adid = '" + uid + "' and secret_code = '" + code + "';";
	PreparedStatement ps = con.prepareStatement(sql);
	r = ps.executeQuery();
	while (r != null && r.next()) {
	    _id = r.getLong(1);
	    int ui = r.getInt(2);
	    String adid = r.getString(3);
	    String scode = r.getString(4);
	    int al = r.getInt(5);
	    a = new Admin(ui, adid, scode, al);
	}	
	if (a==null) {
	    flag = true;
	    }else {
		flag = false;
		    while (r != null && r.next()) {
			id = r.getLong(1);
			String name = r.getString(2);
			LocalDate dob = LocalDate.parse(r.getDate(3).toString());
			String ph = r.getString(4);
			String em = r.getString(5);
			String pw = r.getString(6);
			String im = r.getString(7);
			int adid = r.getInt(8);

			a.setName(name);
			a.setDob(dob);
			a.setEmail(em);
			a.setPassword(pw);
			a.setPhone(ph);
			a.setImage(im);
		    }
		}
	
	return a;
    }
    
    //User Count Function
    
    //Doctor Count Function
    
    //Appointment Count Function
    
    //Specialist Count Function
    
}
