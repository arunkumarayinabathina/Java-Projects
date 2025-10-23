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

<%@ page import="model.StudentRepository, model.Student,java.util.*" %> <%
List<Student>
  students = (List<Student
    >) request.getAttribute("students"); if(students == null){ students =
    StudentRepository.getAllStudents(); } %>
    <html>
      <head>
        <title>View Students</title>
        <link
          rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
          integrity="sha384-tViUnnbYAV00FLIhhi3v/dWt3Jxw4gZQcNoSCxCIFNJVCx7/D55/wXsrNIRANwdD"
          crossorigin="anonymous"
        />
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
            <a class="navbar-brand" href="viewStudents.jsp"
              >Student Management</a
            >
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
          <form action="SearchStudentServlet" method="get" class="mb-3">
            <div class="input-group">
              <input type="text" name="keyword" class="form-control"
              placeholder="Search by ID or Name" value="<%=
              request.getAttribute("keyword") != null ?
              request.getAttribute("keyword") : "" %>">
              <button type="submit" class="btn btn-primary">Search</button>
            </div>
          </form>
          <br />
          <table class="table table-striped table-bordered table-hover">
            <thead class="table-dark">
              <tr>
                <th>
                  ID
                  <a href="SortStudentServlet?sortBy=idAsc"
                    ><i class="bi bi-arrow-down"></i
                  ></a>
                  <a href="SortStudentServlet?sortBy=idDesc"
                    ><i class="bi bi-arrow-up"></i
                  ></a>
                </th>
                <th>
                  Name
                  <a href="SortStudentServlet?sortBy=nameAsc"
                    ><i class="bi bi-sort-alpha-down"></i
                  ></a>
                  <a href="SortStudentServlet?sortBy=nameDesc">
                    <i class="bi bi-sort-alpha-up-alt"></i
                  ></a>
                </th>
                <th>Age</th>
                <th>Class</th>
                <th>Marks</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <% for(Student s : students) { %>
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
          <a href="addStudent.jsp" class="btn btn-success mt-3"
            >Add New Student</a
          >
        </div>
      </body>
    </html>
  </Student></Student
>
