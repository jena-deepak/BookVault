<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home page</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .hero-section {
            background: linear-gradient(135deg, #4a69bd, #6a89cc);
            color: white;
            padding: 60px 20px;
            text-align: center;
            border-radius: 0 0 25px 25px;
        }
        .hero-section h1 {
            font-weight: bold;
        }
        .intro-text {
            font-size: 1.1rem;
            margin-top: 15px;
        }
        .services-container {
            margin-top: 50px;
        }
        .service-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            transition: transform 0.2s;
        }
        .service-card:hover {
            transform: translateY(-5px);
        }
         .header-stl{
        	position:sticky !important;
        	top:0px !important;
        	z-index:1000!important;
        	
        	
        }
        
    </style>
</head>
<body>
<header class="header-stl w-100"><%@ include file="header.jsp" %></header>
	


    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <h1>Welcome to Our Digital Library</h1>
            <p class="intro-text">
                A modern Library Management System designed to make reading and managing books easier, faster, and smarter.
                Explore our services and discover a seamless way to access knowledge.
            </p>
        </div>
    </section>

    <!-- Services Section -->
    <div class="container services-container">
        <h2 class="text-center mb-4">Our Services</h2>
        <div class="row g-4">

            <!-- Placeholder service card 1 -->
            <div class="col-md-4">
                <div class="card service-card p-3 text-center">
                    <h5 class="card-title">Service 1</h5>
                    <p class="card-text">Description of service will go here.</p>
                </div>
            </div>

            <!-- Placeholder service card 2 -->
            <div class="col-md-4">
                <div class="card service-card p-3 text-center">
                    <h5 class="card-title">Service 2</h5>
                    <p class="card-text">Description of service will go here.</p>
                </div>
            </div>

            <!-- Placeholder service card 3 -->
            <div class="col-md-4">
                <div class="card service-card p-3 text-center">
                    <h5 class="card-title">Service 3</h5>
                    <p class="card-text">Description of service will go here.</p>
                </div>
            </div>

        </div>
    </div>
    <%@ include file="footer.jsp" %>
    

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

