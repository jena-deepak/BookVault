<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Manager Services</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Custom Styles -->
    <style>
        .service-card {
            border-radius: 15px;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }
        .service-card:hover {
            transform: translateY(-5px);
            box-shadow: 0px 6px 16px rgba(0,0,0,0.2);
        }
        .text-gradient {
            background: linear-gradient(45deg, #4a69bd, #6a89cc);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <%@ include file="header.jsp" %>

    <!-- Page Content -->
    <div class="container py-5">
        <div class="text-center mb-5">
            <h2 class="fw-bold text-gradient">Manager Services</h2>
            <p class="text-muted">Manage and oversee system operations from here. Select a service below to proceed.</p>
        </div>

        <div class="row g-4 justify-content-center">
            <!-- Service 1 -->
            <div class="col-md-4">
                <div class="card shadow-sm service-card h-100 text-center">
                    <div class="card-body">
                        <i class="bi bi-people-fill display-4 text-gradient mb-3"></i>
                        <h5 class="card-title mb-2">View Employees</h5>
                        <p class="card-text text-muted">Check all employee details and manage them.</p>
                       <!--   <a href="viewEmployees.jsp" class="btn btn-primary mt-3">Go</a>-->
                        <form action="showemp.jsp" >
                        <input type="submit" value="Go" ></form>
                    </div>
                </div>
            </div>

            <!-- Service 2 -->
            <div class="col-md-4">
                <div class="card shadow-sm service-card h-100 text-center">
                    <div class="card-body">
                        <i class="bi bi-clipboard-check display-4 text-gradient mb-3"></i>
                        <h5 class="card-title mb-2">Manage Tasks</h5>
                        <p class="card-text text-muted">Assign, track, and update tasks for employees.</p>
                        <a href="manageTasks.jsp" class="btn btn-primary mt-3">Go</a>
                    </div>
                </div>
            </div>

            <!-- Service 3 -->
            <div class="col-md-4">
                <div class="card shadow-sm service-card h-100 text-center">
                    <div class="card-body">
                        <i class="bi bi-bar-chart-line-fill display-4 text-gradient mb-3"></i>
                        <h5 class="card-title mb-2">Reports</h5>
                        <p class="card-text text-muted">View system reports and performance insights.</p>
                        <a href="reports.jsp" class="btn btn-primary mt-3">Go</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <%@ include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
