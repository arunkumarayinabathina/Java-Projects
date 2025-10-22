package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import model.Student;
import model.StudentRepository;

public class AddStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String studentClass = request.getParameter("class");
        double marks = Double.parseDouble(request.getParameter("marks"));

        Student s = new Student(id, name, age, studentClass, marks);

        StudentRepository.addStudent(s);

        response.sendRedirect("viewStudents.jsp");
    }
}