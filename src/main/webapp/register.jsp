<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register - BookVault</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .register-section {
            min-height: 80vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .register-card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            padding: 40px;
            width: 100%;
            max-width: 800px;
            transition: transform 0.2s;
        }
        .register-card:hover {
            transform: translateY(-5px);
        }
        .register-card h2 {
            text-align: center;
            background: linear-gradient(45deg, #4a69bd, #6a89cc);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-weight: bold;
            margin-bottom: 25px;
        }
        .form-control:focus {
            border-color: #6a89cc;
            box-shadow: 0 0 0 0.2rem rgba(74, 105, 189, 0.25);
        }
        .btn-gradient {
            background: linear-gradient(45deg, #4a69bd, #6a89cc);
            border: none;
            color: white;
            font-weight: 500;
            transition: opacity 0.3s ease;
        }
        .btn-gradient:hover {
            opacity: 0.9;
        }
        .login-text {
            margin-top: 20px;
            text-align: center;
            font-size: 0.95rem;
        }
        .login-text a {
            color: #4a69bd;
            font-weight: 600;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .login-text a:hover {
            color: #6a89cc;
            text-decoration: underline;
        }
          .header-stl{
        	position:sticky !important;
        	top:0px !important;
        	        	z-index:1000!important;
        	
        	
        }
    </style>
</head>
<body>
<header class="header-stl w-100">

<%@ include file="header.jsp" %>
</header>

    <!-- Register Form Section -->
    <div class="register-section">
        <div class="register-card">
            <h2>User Registration</h2>
            <form action="register" method="post">
                <div class="row g-3">
                    
                    <!-- User ID -->
                    <div class="col-md-6">
                        <label for="userId" class="form-label">User ID</label>
                        <input type="number" class="form-control" id="userId" name="userId" required>
                    </div>

                    <!-- User Name -->
                    <div class="col-md-6">
                        <label for="userName" class="form-label">User Name</label>
                        <input type="text" class="form-control" id="userName" name="userName" required>
                    </div>

                    <!-- Email -->
                    <div class="col-md-6">
                        <label for="email" class="form-label">Email Address</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>

                    <!-- Phone Number -->
                    <div class="col-md-6">
                        <label for="number" class="form-label">Phone Number</label>
                        <input type="tel" class="form-control" id="number" name="number" required>
                    </div>

                    <!-- Age -->
                    <div class="col-md-6">
                        <label for="age" class="form-label">Age</label>
                        <input type="number" class="form-control" id="age" name="age" required>
                    </div>

                    <!-- Password -->
                    <div class="col-md-6">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>

                    <!-- Confirm Password -->
                    <div class="col-md-6">
                        <label for="confirmPassword" class="form-label">Confirm Password</label>
                        <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                    </div>
                </div>

                <!-- Submit -->
                <div class="d-grid mt-4">
                    <button type="submit" class="btn btn-gradient btn-lg">Register</button>
                </div>
            </form>

            <!-- Already Registered? -->
            <div class="login-text">
                Already have an account? 
                <a href="login.jsp">Login here</a>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>
    
    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
