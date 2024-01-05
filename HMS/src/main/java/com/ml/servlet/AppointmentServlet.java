package com.ml.servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.ml.dao.AddressDao;
import com.ml.dao.AppointmentDAO;
import com.ml.dao.DoctorDao;
import com.ml.db.DatabaseConfiguration;
import com.ml.entity.Address;
import com.ml.entity.Appointment;
import com.ml.entity.Disease;
import com.ml.entity.Doctor;
import com.ml.entity.Gender;

@WebServlet("/appointment")
@MultipartConfig
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Connection con = DatabaseConfiguration.getMySQLConnection();
		DoctorDao ddao = new DoctorDao(con);
		AppointmentDAO apdao = new AppointmentDAO(con);
		AddressDao adao = new AddressDao(con);
		String fullNme = req.getParameter("fullname");
		System.out.println(fullNme);
		int uid = Integer.parseInt(req.getParameter("uid"));
		System.out.println(uid);
		int age = Integer.parseInt(req.getParameter("age"));
		System.out.println(age);
		Gender gender = Gender.valueOf(req.getParameter("gender"));
		String disease = req.getParameter("disease");
		Doctor doctor = ddao.fetchDoctorByName(req.getParameter("doctor"));
		Date regDate = (Date) req.getAttribute("regDate");
		Date apptDate = (Date) req.getAttribute("apptDate");
		int patientNumber = Integer.parseInt(req.getParameter("patientNumber"));
		System.out.println(patientNumber);
		String status = req.getParameter("patientStatus");
		System.out.println("\n\n\n"+uid+age+gender.name()+disease+doctor.getId()+regDate+apptDate+patientNumber+status);
		Address address = new Address();
		address.setStreet(req.getParameter("street"));
		address.setCity(req.getParameter("city"));
		address.setState(req.getParameter("state"));
		address.setCountry(req.getParameter("country"));
		address.setPin(Integer.parseInt(req.getParameter("pin")));
		adao.addAddress(address);
		Part part = req.getPart("reportCard");
		String file = part.getSubmittedFileName();
		String path = getServletContext().getRealPath("")+"patient"+File.separator+"records";
		File fileInstance = new File(path);
		part.write(fileInstance+File.separator+file);
		Appointment ap = new Appointment();	
		ap.setUserId(uid);
		ap.setGender(gender);
		ap.setAddress(address.getId());
		ap.setDisease(Disease.valueOf(disease));
		ap.setDoapp((java.sql.Date) apptDate);
		ap.setDoreg((java.sql.Date) regDate);
		ap.setDoctorId((int) doctor.getId());
		ap.setPatientNumber(patientNumber);
		ap.setStatus(status);
		ap.setHealthCard(file);
		HttpSession session = req.getSession();
		if(apdao.scheduleAppointment(ap)) {
			session.setAttribute("apObj", ap);
			session.setAttribute("schAptResp", "You have been appointed successfully");
			session.setAttribute("schStatus", ap.getStatus());
			resp.sendRedirect("appointments.jsp");
		}else {
			session.setAttribute("problem", "something didn't work");
			resp.sendRedirect("error.jsp");
		}
	}

	// C:\Users\hkgzp\git\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\HMS\patient\records\imp queries.txt (The system cannot find the path specified)
}
