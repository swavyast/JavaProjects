package com.ml.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLIntegrityConstraintViolationException;

public class DatabaseConfiguration {
    private static Connection con = null;

    static {
	try {
	    Class.forName("com.mysql.cj.jdbc.Driver");
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hmsDB", "root", "68921794");
	    System.out.println(con);
	}catch(SQLIntegrityConstraintViolationException icvException) {
		System.out.println("Refer to your database schema for more insights : ");
		icvException.printStackTrace();
	}catch (Exception e) {
	    System.out.println("Database connection could not be established : ");
	    e.printStackTrace();
	}
    }

    public static Connection getMySQLConnection() {

	return con;
    }

}