<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="bookvault.entity.Managers, bookvault.entity.Employees, java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Show Employees</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .page-header {
            background: linear-gradient(135deg, #4a69bd, #6a89cc);
            color: white;
            padding: 40px 20px;
            text-align: center;
            border-radius: 0 0 20px 20px;
        }
        .table-container {
            margin-top: 40px;
        }
        .table thead {
            background: #4a69bd;
            color: #fff;
        }
        .table tbody tr:hover {
            background-color: #f1f3f5;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>

    <!-- Header Section -->
    <div class="page-header">
        <h2>Employees Under Manager</h2>
        <p>All employees mapped to this manager are listed below.</p>
    </div>

    <div class="container table-container">
        <%
            Managers manager = (Managers) session.getAttribute("manager");
            if (manager != null) {
                List<Employees> employees = manager.getEmployees();
        %>

        <h4 class="mb-4">Manager: <%= manager.getmName() %> (ID: <%= manager.getmId() %>)</h4>

        <%
                if (employees != null && !employees.isEmpty()) {
        %>
        <div class="table-responsive">
            <table class="table table-bordered table-striped align-middle shadow-sm">
                <thead>
                    <tr>
                        <th>Employee ID</th>
                        <th>Name</th>
                        <th>Role</th>
                        <th>Tasks Assigned</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Employees emp : employees) { %>
                        <tr>
                            <td><%= emp.getEmpId() %></td>
                            <td><%= emp.getEmpName() %></td>
                            <td><%= emp.getEmpRole() %></td>
                           <!--   <td><%= (emp.getTasks() != null) ? emp.getTasks().size() : 0 %></td>-->
                            <td><form action="showtask.jsp">
                            <input type="submit" value="show tasks"></form></td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
        <%
                } else {
        %>
            <div class="alert alert-warning">No employees found for this manager.</div>
        <%
                }
            } else {
        %>
            <div class="alert alert-danger">No manager data found in session. Please log in again.</div>
        <%
            }
        %>
    </div>

    <%@ include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
