package com.ml.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ml.dao.AdminDao;
import com.ml.db.DatabaseConfiguration;
import com.ml.entity.Speciality;

@WebServlet("/addSpeciality")
public class AddSpecialityServlet extends HttpServlet{
	
	private String success;
	private String problem;
	private HttpSession session;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Speciality sp = new Speciality();
		String sp1 = (String) req.getAttribute("sp_name");
		sp.setSp_name(sp1);
		AdminDao adao = new AdminDao(DatabaseConfiguration.getMySQLConnection());
		session = req.getSession();
		try {
			sp = adao.addSpeciality(sp);
			if(sp==null) {
				problem = "something's wrong";
				req.setAttribute("response", problem);
				session.setAttribute("response", problem);
				resp.sendRedirect("user/admin-panel.jsp");			
			}else {
				success = sp.getSp_name()+" has been added successfully";
				req.setAttribute("response", success);
				session.setAttribute("response", success);
				resp.sendRedirect("user/admin-panel.jsp");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			req.setAttribute("response", problem);
			session.setAttribute("response", "exception in main thread");
			resp.sendRedirect("user/admin-panel.jsp");
		}
	}

	
}
