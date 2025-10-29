package com.auth;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException {
		res.setContentType("text/html");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		HttpSession session = req.getSession();
		
		String ExistedName = (String) session.getAttribute("name");
		String ExistedEmail = (String) session.getAttribute("email");
		String ExistedPassword = (String) session.getAttribute("password");
		PrintWriter out = res.getWriter();
		
		if(email.equals(ExistedEmail) && password.equals(ExistedPassword)) {
			out.println(ExistedName +" Welcome to application <a href='logout'>logout</a>");
		}
		else {
			out.println("Incorrect credentials please <a href='login.html'>re-login</a>");
		}
	}
}
