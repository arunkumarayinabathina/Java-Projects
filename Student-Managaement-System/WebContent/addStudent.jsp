<!-- <html>
  <head>
    <title>Add Student</title>
  </head>
  <body>
    <h2>Add Student</h2>
    <form action="AddStudentServlet" method="post">
      ID : <input type="number" name="id" required /><br />
      Name : <input type="text" name="name" required /><br />
      Age : <input type="number" name="age" required /><br />
      Class : <input type="text" name="class" required /><br />
      Marks : <input type="number" name="marks" step="0.01" required /><br />
      <input type="submit" value="Add Student" />
    </form>
    <a href="viewStudents.jsp">View Students</a>
  </body>
</html> -->

<!-- Bootstrap styles -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Add Student</title>
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

    <!-- Main container -->
    <div class="container">
      <h2 class="mb-4">Add Student</h2>
      <form action="AddStudentServlet" method="post" class="row g-3">
        <div class="col-md-6">
          <label class="form-label">ID</label>
          <input type="number" name="id" class="form-control" required />
        </div>
        <div class="col-md-6">
          <label class="form-label">Name</label>
          <input type="text" name="name" class="form-control" required />
        </div>
        <div class="col-md-6">
          <label class="form-label">Age</label>
          <input type="number" name="age" class="form-control" required />
        </div>
        <div class="col-md-6">
          <label class="form-label">Class</label>
          <input type="text" name="class" class="form-control" required />
        </div>
        <div class="col-md-6">
          <label class="form-label">Marks</label>
          <input
            type="number"
            name="marks"
            class="form-control"
            step="0.01"
            required
          />
        </div>
        <div class="col-12 mt-3">
          <button type="submit" class="btn btn-primary">Add Student</button>
          <a href="viewStudents.jsp" class="btn btn-secondary">View Students</a>
        </div>
      </form>
    </div>
  </body>
</html>
