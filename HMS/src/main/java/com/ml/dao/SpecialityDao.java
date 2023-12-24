package com.ml.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class SpecialityDao {
	
	private Connection con;
	
	public SpecialityDao(Connection con) {
		this.con = con;
		
	}
	
	public boolean addSpeciality(String spname) {
		boolean flag=false;
		try {
	    	String sql = "insert into speciality(sp_name)values(?);";
	    	PreparedStatement ps = con.prepareStatement(sql);
	    	ps.setString(1, spname);
	    	int i = ps.executeUpdate();
	    	if(i==1)
	    		flag=true;
	    	return flag;
		} catch (Exception e) {
			e.printStackTrace();
			return flag;
		}
	}

}
