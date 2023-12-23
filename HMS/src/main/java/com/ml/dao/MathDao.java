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
	


}
