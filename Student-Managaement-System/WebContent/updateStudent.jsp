<%@ page import="model.StudentRepository, model.Student" %> <% int id =
Integer.parseInt(request.getParameter("id")); Student s =
StudentRepository.getStudentById(id); %>
<html>
  <head>
    <title>Update Student</title>
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
      <h2 class="mb-4">Update Student</h2>
      <form action="UpdateStudentServlet" method="post" class="row g-3">
        <input type="hidden" name="id" value="<%= s.getId() %>" />

        <div class="col-md-6">
          <label class="form-label">Name</label>
          <input
            type="text"
            name="name"
            class="form-control"
            value="<%= s.getName() %>"
            required
          />
        </div>
        <div class="col-md-6">
          <label class="form-label">Age</label>
          <input
            type="number"
            name="age"
            class="form-control"
            value="<%= s.getAge() %>"
            required
          />
        </div>
        <div class="col-md-6">
          <label class="form-label">Class</label>
          <input
            type="text"
            name="class"
            class="form-control"
            value="<%= s.getStudentClass() %>"
            required
          />
        </div>
        <div class="col-md-6">
          <label class="form-label">Marks</label>
          <input
            type="number"
            name="marks"
            class="form-control"
            step="0.01"
            value="<%= s.getMarks() %>"
            required
          />
        </div>
        <div class="col-12 mt-3">
          <button type="submit" class="btn btn-primary">Update Student</button>
          <a href="viewStudents.jsp" class="btn btn-secondary">Back to List</a>
        </div>
      </form>
    </div>
  </body>
</html>
