package com.ml.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.ml.entity.Admin;

public class AdminDao {

	private Connection con = null;
	private ResultSet r;
	public static boolean flag;

	public AdminDao(Connection con) {
		this.con = con;
	}

	// Admin Login Function

	public Admin adminLogin(String uid, String code) throws SQLException {
		long id = 0L;
		long _id = 0L;
		String adid = null;
		Admin a = null;
		String sql = "select * from admin where adid = '" + uid + "' and secret_code = '" + code + "';";
		PreparedStatement ps = con.prepareStatement(sql);
		r = ps.executeQuery();
		while (r != null && r.next()) {
			_id = r.getLong(1);
			adid = r.getString(2);
			String scode = r.getString(3);
			int al = r.getInt(4);
			a = new Admin(adid, scode, al);
		}
		if (a == null) {
			flag = true;
		} else {
			flag = false;
			sql = "select * from user where adid=?;";
			ps = con.prepareStatement(sql);
			ps.setString(1, adid);
			r = ps.executeQuery();
			while (r != null && r.next()) {
				id = r.getLong(1);
				String name = r.getString(2);
				Date dob = r.getDate(3);
				String ph = r.getString(4);
				String em = r.getString(5);
				String pw = r.getString(6);
				String im = r.getString(7);
				adid = r.getString(8);
				a = new Admin(name, dob, ph, em, pw, im);
			}
		}

		return a;
	}

	// User Count Function

	// Doctor Count Function

	// Appointment Count Function

	// Specialist Count Function

}
