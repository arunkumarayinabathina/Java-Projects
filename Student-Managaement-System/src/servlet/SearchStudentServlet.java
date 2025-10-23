package servlet;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;
import model.StudentRepository;

public class SearchStudentServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String keyword = request.getParameter("keyword");
        List<Student> students = StudentRepository.searchStudents(keyword);

        request.setAttribute("students", students);
        request.setAttribute("keyword", keyword);

        RequestDispatcher dispatcher = request.getRequestDispatcher("viewStudents.jsp");
        dispatcher.forward(request, response);
    }
}
