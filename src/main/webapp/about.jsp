<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - BookVault</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .about-section {
            padding: 60px 15px;
        }
        .about-card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            padding: 40px;
            margin-bottom: 40px;
            transition: transform 0.2s;
        }
        .about-card:hover {
            transform: translateY(-5px);
        }
        .about-card h2 {
            text-align: center;
            background: linear-gradient(45deg, #4a69bd, #6a89cc);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            font-weight: bold;
            margin-bottom: 25px;
        }
        .about-card p {
            font-size: 1rem;
            line-height: 1.6;
            color: #555;
        }
        .features {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }
        .feature-item {
            flex: 1 1 250px;
            background: #f1f4f8;
            border-radius: 12px;
            padding: 20px;
            text-align: center;
            transition: transform 0.2s;
        }
        .feature-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        .feature-item h5 {
            font-weight: 600;
            margin-bottom: 10px;
            color: #4a69bd;
        }
        .feature-item p {
            font-size: 0.95rem;
            color: #555;
        }
        .team-section img {
            width: 100%;
            border-radius: 15px;
            margin-bottom: 15px;
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

    <div class="about-section container">

        <!-- Our Goal / Mission -->
        <div class="about-card">
            <h2>Our Goal</h2>
            <p>
                At BookVault, our goal is to create a seamless digital library experience for readers and institutions alike. 
                We aim to make managing books, borrowing, and discovering knowledge easier, faster, and smarter with a modern web-based system.
            </p>
        </div>

        <!-- About Us / Story -->
        <div class="about-card">
            <h2>About Us</h2>
            <p>
                BookVault was founded with the vision to revolutionize how libraries and readers interact in the digital age. 
                Our team consists of passionate developers and bibliophiles who understand the value of knowledge and organization. 
                We strive to provide an intuitive, secure, and efficient platform that caters to both individual readers and library administrators.
            </p>
        </div>

        <!-- Why Choose Us / Key Features -->
        <div class="about-card">
            <h2>Why Choose BookVault?</h2>
            <div class="features">
                <div class="feature-item">
                    <h5>Easy Access</h5>
                    <p>Access your favorite books anytime, anywhere with our user-friendly interface.</p>
                </div>
                <div class="feature-item">
                    <h5>Secure System</h5>
                    <p>We ensure all user data and library information is protected with top-notch security measures.</p>
                </div>
                <div class="feature-item">
                    <h5>Efficient Management</h5>
                    <p>Our system helps librarians manage books, users, and feedback with minimal effort.</p>
                </div>
                <div class="feature-item">
                    <h5>Support & Feedback</h5>
                    <p>Users can provide feedback and reach out directly to our support team for assistance.</p>
                </div>
            </div>
        </div>

        <!-- Team / Optional Image Section -->
      <!--    <div class="about-card team-section">
            <h2>Meet Our Team</h2>
            <div class="row g-4">
                <div class="col-md-4 text-center">
                    <img src=".//utility-imgs/My passphoto .png" alt="Team Member 1" class="img-fluid" style="height:500px!important">
                    <h5>Deepak Jena</h5>
                    <p>Backend Developer/Team Leader</p>
                </div>
                <div class="col-md-4 text-center">
                    <img src=".//utility-imgs/ashish(backend dev) img.jpg" alt="Team Member 2" class="img-fluid" style="height:500px!important">
                    <h5>Asish Khuntia</h5>
                    <p>Associate Software Developer</p>
                </div>
               <div class="col-md-4 text-center">
                    <img src=".//utility-imgs/Pinki(frontend dev) img.jpg" alt="Team Member 3" class="img-fluid" style="height:500px!important">
                    <h5>Pinki Pradhan</h5>
                    <p>Frontend Developer</p>
                </div>
            </div>
        </div>-->

    </div>

    <%@ include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
