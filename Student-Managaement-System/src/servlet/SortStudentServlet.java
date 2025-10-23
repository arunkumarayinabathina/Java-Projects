package servlet;

import java.io.IOException;
import java.util.Comparator;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Student;
import model.StudentRepository;

public class SortStudentServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String sortBy = request.getParameter("sortBy");

        List<Student> students = StudentRepository.getAllStudents();

        if (sortBy != null) {
            switch (sortBy) {
                case "idAsc":
                    students.sort(Comparator.comparingInt(Student::getId));
                    break;
                case "idDesc":
                    students.sort(Comparator.comparingInt(Student::getId).reversed());
                    break;
                case "nameAsc":
                    students.sort(Comparator.comparing(Student::getName));
                    break;
                case "nameDesc":
                    students.sort(Comparator.comparing(Student::getName).reversed());
                    break;
            }
        }
        request.setAttribute("students", students);
        RequestDispatcher dispatcher = request.getRequestDispatcher("viewStudents.jsp");
        dispatcher.forward(request, response);
    }
}
