package com.ml.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ml.entity.Doctor;

public class DoctorDao {
	private Connection con;

    public DoctorDao(Connection con) {
    	this.con = con;
    }
    
    public boolean addDoctor(Doctor d) {
    	Doctor doc = null;
    	boolean flag=false;
    	String sql = "insert into doctor(dob, name, email, spclt, qual, phone, password)values(?,?,?,?,?,?,?);";
    	try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setDate(1, d.getDob());
			ps.setString(2, d.getName());
			ps.setString(3, d.getEmail());
			ps.setInt(4, d.getSpclt().getId());
			ps.setObject(5, d.getQual());
			ps.setString(6, d.getPhone());
			ps.setString(7, d.getPassword());
			flag = ps.execute();
			
			return flag;
		} catch (SQLException e) {
			e.printStackTrace();
			return flag;
		}
    }
    
    //Doctor Login Function
    private Doctor doctorLogin() {
    	Doctor doc = null;
    	
    	return doc;
    }

}
