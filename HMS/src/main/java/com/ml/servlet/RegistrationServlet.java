package com.ml.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import com.ml.dao.UserDao;
import com.ml.db.DatabaseConfiguration;
import com.ml.entity.User;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@SuppressWarnings("serial")
@WebServlet("/registration")
@MultipartConfig
public class RegistrationServlet extends HttpServlet {

	private String success = null;
	private String problem = null;
	private HttpSession session;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part part = req.getPart("image");
		String file = part.getSubmittedFileName();
		try {
			User u = new User();
			u.setName(req.getParameter("fname") + " " + req.getParameter("lname"));
			u.setDob((Date) req.getAttribute("dob"));
			u.setPhone(req.getParameter("phone"));
			u.setEmail(req.getParameter("email"));
			u.setPassword(req.getParameter("pwd"));
			u.setImage(file);
			String path = getServletContext().getRealPath("")+"images";
			File fileInstance = new File(path);
			part.write(fileInstance+File.separator+file);
			UserDao udao = new UserDao(DatabaseConfiguration.getMySQLConnection());
			boolean flag = udao.createUser(u);
			System.out.println(flag);
			session = req.getSession();
			if (flag) {
				success = "Dear " + u.getName() + "<br>You are registered successfully";
				session.setAttribute("response", success);
				session.setAttribute("userObj", u);
				resp.sendRedirect("user/index.jsp");
			} else {
				problem = "Dear user, your registration could not be completed this time\n";
				problem += "<br>Please, try again after sometimes.";
				session.setAttribute("response", problem);
				resp.sendRedirect("registration.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
			resp.sendRedirect("error.jsp");
		}
	}

}