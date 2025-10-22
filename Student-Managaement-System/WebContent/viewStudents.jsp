<!-- <%@ page import="model.StudentRepository,model.Student"%>
<html>
  <head>
    <title>View Students</title>
  </head>
  <body>
    <h2>Students List</h2>
    <table border="1">
      <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Age</th>
        <th>Class</th>
        <th>Marks</th>
        <th>Action</th>
      </tr>
      <% for(Student s : StudentRepository.getAllStudents()){ %>
      <tr>
        <td><%= s.getId() %></td>
        <td><%= s.getName() %></td>
        <td><%= s.getAge() %></td>
        <td><%= s.getStudentClass()%></td>
        <td><%= s.getMarks()%></td>
        <td>
          <a href="updateStudent.jsp?id=<%= s.getId() %>">Update</a>
          <a href="DeleteStudentServlet?id=<%= s.getId() %>">Delete</a>
        </td>
      </tr>
      <% } %>
    </table>
    <a href="addStudent.jsp">Add New Student</a>
  </body>
</html> -->

<!-- Bootstrap styles -->

<%@ page import="model.StudentRepository, model.Student" %>
<html>
  <head>
    <title>View Students</title>
    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  </head>
  <body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
      <div class="container-fluid">
        <a class="navbar-brand" href="viewStudents.jsp">Student Management</a>
        <div>
          <a href="addStudent.jsp" class="btn btn-success btn-sm me-2"
            >Add Student</a
          >
          <a href="viewStudents.jsp" class="btn btn-primary btn-sm"
            >View Students</a
          >
        </div>
      </div>
    </nav>

    <div class="container">
      <h2 class="mb-4">Students List</h2>
      <table class="table table-striped table-bordered table-hover">
        <thead class="table-dark">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Class</th>
            <th>Marks</th>
            <th>Action</th>
          </tr>
        </thead>
        <tbody>
          <% for(Student s : StudentRepository.getAllStudents()) { %>
          <tr>
            <td><%= s.getId() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getAge() %></td>
            <td><%= s.getStudentClass() %></td>
            <td><%= s.getMarks() %></td>
            <td>
              <a
                href="updateStudent.jsp?id=<%= s.getId() %>"
                class="btn btn-warning btn-sm me-1"
                >Update</a
              >
              <a
                href="DeleteStudentServlet?id=<%= s.getId() %>"
                class="btn btn-danger btn-sm"
                >Delete</a
              >
            </td>
          </tr>
          <% } %>
        </tbody>
      </table>
      <a href="addStudent.jsp" class="btn btn-success mt-3">Add New Student</a>
    </div>
  </body>
</html>
