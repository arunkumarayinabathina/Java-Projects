package servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;
import model.StudentRepository;

public class UpdateStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
        String studentClass = request.getParameter("class");
        double marks = Double.parseDouble(request.getParameter("marks"));

        Student updateStudent = new Student(id, name, age, studentClass, marks);

        StudentRepository.updateStudent(updateStudent);

        response.sendRedirect("viewStudents.jsp");
    }
}
