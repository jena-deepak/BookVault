<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Us - BookVault</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .contact-section {
            min-height: 80vh;
            padding: 50px 15px;
        }
        .contact-card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0 6px 20px rgba(0,0,0,0.1);
            padding: 40px;
            transition: transform 0.2s;
        }
        .contact-card:hover {
            transform: translateY(-5px);
        }
        .contact-card h2 {
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
        .contact-info h5 {
            font-weight: 600;
        }
        .contact-info a {
            color: #4a69bd;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        .contact-info a:hover {
            color: #6a89cc;
            text-decoration: underline;
        }
        .placeholder-text {
            color: #999;
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

    <div class="contact-section container">
        <div class="row g-4">
            
            <!-- Contact Form -->
            <div class="col-md-7">
                <div class="contact-card">
                    <h2>Contact Us</h2>
                    <form action="ContactServlet" method="post">
                        <div class="row g-3">
                            
                            <!-- Name -->
                            <div class="col-md-6">
                                <label for="name" class="form-label">Your Name</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required>
                            </div>

                            <!-- Email -->
                            <div class="col-md-6">
                                <label for="email" class="form-label">Email Address</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email address" required>
                            </div>

                            <!-- Phone -->
                            <div class="col-md-6">
                                <label for="phone" class="form-label">Phone Number</label>
                                <input type="tel" class="form-control" id="phone" name="phone" placeholder="Enter your phone number" required>
                            </div>

                            <!-- Subject -->
                            <div class="col-md-6">
                                <label for="subject" class="form-label">Subject</label>
                                <input type="text" class="form-control" id="subject" name="subject" placeholder="Reason for contacting us" required>
                            </div>

                            <!-- Message -->
                            <div class="col-12">
                                <label for="message" class="form-label">Message / Feedback</label>
                                <textarea class="form-control" id="message" name="message" rows="5" 
                                          placeholder="Write your message or feedback here..." required></textarea>
                            </div>
                        </div>

                        <!-- Submit -->
                        <div class="d-grid mt-4">
                            <button type="submit" class="btn btn-gradient btn-lg">Send Message</button>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Contact Info -->
            <div class="col-md-5">
                <div class="contact-card contact-info">
                    <h2>Get in Touch</h2>
                    <p>You can also reach us directly via the following channels:</p>
                    <p><strong>Email:</strong> <a href="mailto:support@bookvault.com">support@bookvault.com</a></p>
                    <p><strong>Phone:</strong> <a href="tel:+919876543210">+91 6372008821</a></p>
                    <p><strong>LinkedIn:</strong> <a href="https://www.linkedin.com/in/bookvault" target="_blank">BookVault</a></p>
                    <p><strong>Address:</strong> Bengaluru, Karnatana, India</p>
                </div>
            </div>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
