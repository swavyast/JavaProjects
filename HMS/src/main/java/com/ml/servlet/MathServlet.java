package com.ml.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ml.dao.MathDao;

@WebServlet("/countUsers")
public class MathServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int result = MathDao.countUsers();
		if(result>0) {
		req.setAttribute("countResult", result);
		resp.sendRedirect("user/admin-panel.jsp");
		}else {
			req.setAttribute("countResult", MathDao.errorMsg);
			resp.sendRedirect("user/admin-panel.jsp");
		}
	}
	
	
}
