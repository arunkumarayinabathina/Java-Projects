package com.auth;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        res.setContentType("text/html");

        HttpSession session = req.getSession(false);
        PrintWriter out = res.getWriter();

        if (session != null) {
            session.invalidate(); 
        }

        out.println("<h3>You have been logged out successfully.</h3>");
        out.println("<a href='login.html'>Login Again</a>");
    }
}
