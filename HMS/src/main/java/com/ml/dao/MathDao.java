package com.ml.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.ml.db.DatabaseConfiguration;

public class MathDao {
	
	private static Connection con = DatabaseConfiguration.getMySQLConnection();
	private static ResultSet rs;
	private static int count;
	public static String errorMsg;
	
	public static int countUsers() {
		
		try {
			
			String sql = "select count(*) from user;";
			PreparedStatement ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs!=null&&rs.next()) {
				count = rs.getInt(1);
			}
			System.out.println(count);
			return count;
			
		} catch (Exception e) {
			e.printStackTrace();
			errorMsg = e.getMessage();
			return count;
		}
	}

}
