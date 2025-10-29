package com.auth;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class SignupServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		HttpSession session = req.getSession();
		session.setAttribute("name", name);
		session.setAttribute("email", email);
		session.setAttribute("password", password);
		
//		Cookie cookie = new Cookie("name",name);
//		res.addCookie(cookie);
		
		PrintWriter out = res.getWriter();
		out.println("Signup success for the "+name+" <a href='login.html'>Login</a>");
	}
}
