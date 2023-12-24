package com.ml.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ml.dao.DoctorDao;
import com.ml.dao.SpecialityDao;
import com.ml.db.DatabaseConfiguration;
import com.ml.entity.Doctor;
import com.ml.entity.Qualification;
import com.ml.entity.Speciality;

@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {
	
	private String success;
	private String problem;
	private HttpSession session;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("addDoctor doPost()");
		Connection con = DatabaseConfiguration.getMySQLConnection();
		DoctorDao ddao = new DoctorDao(con);
		String ql = req.getParameter("qual");
		SpecialityDao sdao = new SpecialityDao(con);
		Speciality spclt = sdao.fetchSpeciality(req.getParameter("spclt"));
		Doctor doc = new Doctor();
		System.out.println("Date.valueOf(req.getParameter(\"dob\"))"+(Date)req.getAttribute("dob"));
		doc.setDob(Date.valueOf(req.getParameter("dob")));
		System.out.println(doc.getDob());
		doc.setName(req.getParameter("name"));
		doc.setEmail(req.getParameter("email"));
		doc.setPassword(req.getParameter("password"));
		doc.setPhone(req.getParameter("phone"));
		doc.setQual(Qualification.valueOf(ql));
		System.out.println("Qualification.valueOf(ql)"+Qualification.valueOf(ql));
		doc.setSpclt(spclt);
		boolean flag = ddao.addDoctor(doc);
		System.out.println(session+" before ");
		session = req.getSession();
		System.out.println(session+" after");
		if(flag) {
			success = "doctor "+doc.getName()+" has been added successfully.";
			session.setAttribute("addDoctorResponse", success);
			System.out.println(session.getAttribute("addDoctorResponse")+" session.getAttribute(\"addDoctorResponse\")");
			resp.sendRedirect("admin/doctors.jsp");
		}else {
			problem = "something didn't work";
			session.setAttribute("addDoctorResponse", problem);
			resp.sendRedirect("admin/doctors.jsp");
		}
		
	}

	
}
