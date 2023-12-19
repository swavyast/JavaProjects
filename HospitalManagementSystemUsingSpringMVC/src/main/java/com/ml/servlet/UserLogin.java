package com.ml.servlet;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import com.ml.dao.UserDao;
import com.ml.db.DatabaseConfiguration;
import com.ml.entity.User;

@SuppressWarnings({ "deprecation", "serial" })
@WebServlet("/user")
public class UserLogin extends HttpServlet implements HttpSession {
    
    private String success;
    private String problem;
    private HttpSession session;
    /* private Cookie c; */

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	try {
	    String em = req.getParameter("uname");
	    String ps = req.getParameter("pwd");
	    
	    UserDao dao = new UserDao(DatabaseConfiguration.getMySQLConnection());
	    
	    User user = dao.userLogin(em, ps);
	    session = req.getSession();
	    if(user!=null) {
		success = "Welcome to mediHome";
		System.out.println(success);
		System.out.println(user);
		session.setAttribute("response", success);
		session.setAttribute("userObj", user);
		resp.sendRedirect("user/index.jsp");
		
		
	    }else {
		problem = "Sorry! we couldn't find any user by the details you provided\nMake sure your login details are correct, then try again\n(Do keep in mind that login attempts may be limited)";
		System.out.println(problem);
		session.setAttribute("response", problem);
		resp.sendRedirect("user-login.jsp");
	    }
	    
	} catch (Exception e) {
	    System.out.println("Problem occured in login servlet : check-out this log below for better insights into the problem");
	    e.printStackTrace();
	}
    }

    @Override
    public long getCreationTime() {
	long t = session.getCreationTime();
	
	return t;
    }

    @Override
    public String getId() {
	String s = session.getId();
	
	return s;
    }

    @Override
    public long getLastAccessedTime() {
	long t = session.getLastAccessedTime();
	
	return t;
    }

    @Override
    public void setMaxInactiveInterval(int interval) {
	session.getMaxInactiveInterval();
	
    }

    @Override
    public int getMaxInactiveInterval() {
	int i = session.getMaxInactiveInterval();
	
	return i;
    }

    @Override
    public Object getAttribute(String name) {
	Object o = session.getAttribute(name);
	
	return o;
    }

    @Override
    public Enumeration<String> getAttributeNames() {
	Enumeration<String> e = session.getAttributeNames();
	
	return e;
    }

    @Override
    public void setAttribute(String name, Object value) {
	session.setAttribute(name, value);
	
    }

    @Override
    public void removeAttribute(String name) {
	session.removeAttribute(name);
	
    }

    @Override
    public void invalidate() {
	session.invalidate();
	
    }

    @Override
    public boolean isNew() {
	boolean isNew = session.isNew();
	
	return isNew;
    }

    @Override
    public HttpSessionContext getSessionContext() {
	
	return session.getSessionContext();
    }

    @Override
    public Object getValue(String arg0) {
	
	return session.getValue(arg0);
    }

    @Override
    public String[] getValueNames() {
	
	return session.getValueNames();
    }

    @Override
    public void putValue(String arg0, Object arg1) {
	
	session.putValue(arg0, arg1);
    }

    @Override
    public void removeValue(String name) {
	
	session.removeValue(name);
    }


    
 
}