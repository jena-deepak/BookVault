<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login - BookVault</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .login-section {
            min-height: 80vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .login-card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            padding: 40px;
            width: 100%;
            max-width: 500px;
            transition: transform 0.2s;
        }
        .login-card:hover {
            transform: translateY(-5px);
        }
        .login-card h2 {
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
        .register-text {
            margin-top: 20px;
            text-align: center;
            font-size: 0.95rem;
        }
        .register-text a {
            color: #4a69bd;
            font-weight: 600;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .register-text a:hover {
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
<header class="w-100 header-stl">

<%@ include file="header.jsp" %>
</header>

    <!-- Login Form Section -->
    <div class="login-section">
        <div class="login-card">
            <h2>User Login</h2>
            <form action="login" method="post">
                
                <!-- Email or Phone -->
                <div class="mb-3">
                    <label for="identifier" class="form-label">Email</label>
                    <input type="text" class="form-control" id="identifier" name="emailid" 
                           placeholder="Enter your email" required>
                </div>

                <!-- Password -->
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>

                <!-- Submit -->
                <div class="d-grid">
                    <button type="submit" class="btn btn-gradient btn-lg">Login</button>
                </div>
            </form>

            <!-- Not Registered? -->
            <div class="register-text">
                Don't have an account? 
                <a href="register.jsp">Register here</a>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
