package com.user.servlet;

import java.io.IOException;


//import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.DAO.userDAOimpl;
import com.DB.DBconnect;
import com.entity.user;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{

	  private static final long serialVersionUID = 1L;
	  
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws /*ServletException,*/ IOException {
		
	try {
		
		String name= req.getParameter("fname");
		String email= req.getParameter("email");
		String phno= req.getParameter("phno");
		String password= req.getParameter("password");
		String check= req.getParameter("check");
		
//		System.out.println(name+" "+email+" "+phone+" "+password+" "+check);
		
	 user us=new user();
	 us.setName(name);
	 us.setEmail(email);
	 us.setPhno(phno);
	 us.setPassword(password);
	 
	 HttpSession session=req.getSession();
	 
	 if(check!=null) {
		 userDAOimpl dao =new userDAOimpl(DBconnect.getConn());
		 boolean f = dao.userRegister(us);
		 
		 if(f) {
//			 System.out.println("user Register Success...");
			 session.setAttribute("succMsg","Registration Successfully..");
			 resp.sendRedirect("register.jsp");
//			 
		 }else {
//			 System.out.println("Something wrong on Server...");
			 session.setAttribute("failedMsg","Something wrong on Server...");
			 resp.sendRedirect("register.jsp");
		 }
		 
	 }else {
//		 System.out.println("Please Check Agree & Terms Condition");
		 session.setAttribute("failedMsg","Please Check Agree & Terms Condition");
		 resp.sendRedirect("register.jsp");
		 }
	 
	
	 
	}catch(Exception e) {
		e.printStackTrace();
	}
	}
	
	
}