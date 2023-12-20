package com.ml.servlet;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.text.spi.DateFormatProvider;
import java.time.Instant;
import java.time.format.DateTimeFormatter;

import com.ml.dao.UserDao;
import com.ml.db.DatabaseConfiguration;
import com.ml.entity.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {

	private String success = null;
	private String problem = null;
	private HttpSession session;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			User u = new User();
			u.setName(req.getParameter("fname") + " " + req.getParameter("lname"));
			u.setDob((Date) req.getAttribute("dob"));
			u.setPhone(req.getParameter("phone"));
			u.setEmail(req.getParameter("email"));
			u.setPassword(req.getParameter("pwd"));

			u.setImage(req.getParameter("image"));
			UserDao udao = new UserDao(DatabaseConfiguration.getMySQLConnection());
			boolean flag = udao.createUser(u);
			System.out.println(flag);

			if (flag) {
				success = "Dear " + u.getName() + "<br>You are registered successfully";
				session = req.getSession();
				session.setAttribute("response", success);
				session.setAttribute("userObj", u);
				resp.sendRedirect("user/index.jsp");
			} else {
				problem = "Dear user, your registration could not be completed this time\n";
				problem += "<br>Please, try again after sometimes.";
				session = req.getSession();
				session.setAttribute("response", problem);
				resp.sendRedirect("registration.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
			resp.sendRedirect("error.jsp");
		}
	}

}