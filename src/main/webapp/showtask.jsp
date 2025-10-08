<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookvault.entity.Managers, bookvault.entity.Employees, bookvault.entity.Tasks, java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Show Tasks</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .page-header {
            background: linear-gradient(135deg, #38ada9, #60a3bc);
            color: white;
            padding: 40px 20px;
            text-align: center;
            border-radius: 0 0 20px 20px;
        }
        .employee-card {
            margin-bottom: 30px;
        }
        .employee-header {
            background: #4a69bd;
            color: white;
            padding: 15px;
            border-radius: 10px 10px 0 0;
        }
        .table thead {
            background: #38ada9;
            color: #fff;
        }
        .table tbody tr:hover {
            background-color: #f1f3f5;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>

    <!-- Page Header -->
    <div class="page-header">
        <h2>All Tasks Under Manager</h2>
        <p>Tasks assigned to each employee managed by you are listed below.</p>
    </div>

    <div class="container py-4">
        <%
            Managers manager = (Managers) session.getAttribute("manager");
            if(manager != null) {
                List<Employees> employees = manager.getEmployees();
                if(employees != null && !employees.isEmpty()) {
                    for(Employees emp : employees) {
                        List<Tasks> tasks = emp.getTasks();
        %>
        <div class="card employee-card shadow-sm">
            <div class="employee-header">
                <h5 class="mb-0">Employee: <%= emp.getEmpName() %> (ID: <%= emp.getEmpId() %>, Role: <%= emp.getEmpRole() %>)</h5>
            </div>
            <div class="card-body">
                <%
                    if(tasks != null && !tasks.isEmpty()) {
                %>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped align-middle">
                        <thead>
                            <tr>
                                <th>Task ID</th>
                                <th>Task Name</th>
                                <th>Duration (hrs)</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(Tasks t : tasks) { %>
                            <tr>
                                <td><%= t.gettId() %></td>
                                <td><%= t.gettName() %></td>
                                <td><%= t.getDuration() %></td>
                                <td><%= t.getStatus() %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
                <%
                    } else {
                %>
                <div class="alert alert-warning">No tasks assigned to this employee.</div>
                <%
                    }
                %>
            </div>
        </div>
        <%      } // end for employees
                } else { %>
                    <div class="alert alert-warning">No employees found under this manager.</div>
        <%      }
            } else { %>
                <div class="alert alert-danger">No manager data found in session. Please log in again.</div>
        <% } %>
    </div>

    <%@ include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
