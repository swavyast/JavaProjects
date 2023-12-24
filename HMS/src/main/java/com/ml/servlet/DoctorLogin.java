package com.ml.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ml.dao.DoctorDao;
import com.ml.db.DatabaseConfiguration;
import com.ml.entity.Doctor;

@WebServlet("/doctor")
public class DoctorLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String em = req.getParameter("uname");
		String pwd = req.getParameter("pwd");

		DoctorDao ddao = new DoctorDao(DatabaseConfiguration.getMySQLConnection());
		Doctor doc = ddao.doctorLogin(em, pwd);
		HttpSession session = req.getSession();
		if (doc != null) {
			req.setAttribute("response", "Hello Dr. " + doc.getName() + "<br>Welcome to Doctor's Dashboard.");
			System.out.println(req.getAttribute("response"));
			session.setAttribute("doctorObj", doc);
			resp.sendRedirect("doctor/index.jsp");
		} else {
			req.setAttribute("response", "Something didn't work");
			session.setAttribute("doctorObj", doc);
			resp.sendRedirect(req.getContextPath() + "/doctor-login.jsp");
		}
	}

}
