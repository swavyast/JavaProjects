package com.ml.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.ml.entity.User;

public class UserDao {

	public static boolean flag;
	private Connection con = null;
	private int statusCode;
	private ResultSet r;
	private long id;
	private Date dob;
	private String name;
	private String ph;
	private String eml;
	private String pas;
	private String im;
	private int count;

	public UserDao(Connection con) {
		this.con = con;
	}

	// User registration function

	public boolean createUser(User u) {

		try {
			/*
			 * String create =
			 * "create table user(id int not null primary key auto_increment,name varchar(100),dob date,phone varchar(15),email varchar(150),password varchar(250),image varchar(1000));"
			 * ; con.prepareStatement(create).execute();
			 */

			String sql = "insert into user(name, dob, phone, email, password, image) values (?,?,?,?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setDate(2, (Date) u.getDob());
			ps.setString(3, u.getPhone());
			ps.setString(4, u.getEmail());
			ps.setString(5, u.getPassword());
			ps.setString(6, u.getImage());
			statusCode = ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(
					"Database connection could not be established : For better insights go through the logs please \n");
			e.printStackTrace();
		}

		return (statusCode == 1) ? true : false;
	}

	// User Login function

	public User userLogin(String em, String ps) throws SQLException {
		User u = null;
		String sql = "select * from user where email = ? and password = ?;";
		PreparedStatement p = con.prepareStatement(sql);
		p.setString(1, em);
		p.setString(2, ps);
		System.out.println(p);
		r = p.executeQuery();
		while (r != null && r.next()) {
			id = r.getInt(1);
			name = r.getString(2);
			dob = r.getDate(3);
			ph = r.getString(4);
			eml = r.getString(5);
			pas = r.getString(6);
			im = r.getString(7);
			u = new User(name, dob, ph, eml, pas, im);
		}
		return (id > 0) ? u : null;
	}

	public int countUsers() {

		try {

			String sql = "select count(*) from user;";
			PreparedStatement ps = con.prepareStatement(sql);
			r = ps.executeQuery();
			while (r != null && r.next()) {
				count = r.getInt(1);
			}
			System.out.println(count);
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	public int countNonNullUsers() {

		try {

			String sql = "select count(*) from user where name is not null and email is not null;";
			PreparedStatement ps = con.prepareStatement(sql);
			r = ps.executeQuery();
			while (r != null && r.next()) {
				count = r.getInt(1);
			}
			System.out.println(count);
			return count;

		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	// Patient Appointment Function

}