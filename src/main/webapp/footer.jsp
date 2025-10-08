<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Footer -->
<footer class="footer bg-dark text-light pt-4 mt-5">
    <div class="container">
        <div class="row">

            <!-- About -->
            <div class="col-md-4">
                <h5 class="text-gradient">BookVault</h5>
                <p>
                    Your trusted digital library solution. Organize, borrow, and explore books seamlessly.
                    Powered by modern technology for readers and institutions.
                </p>
            </div>

            <!-- Quick Links -->
            <div class="col-md-4">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="about.jsp" class="footer-link">About Us</a></li>
                    <li><a href="services.jsp" class="footer-link">Services</a></li>
                    <li><a href="contact.jsp" class="footer-link">Contact</a></li>
                    <li><a href="faq.jsp" class="footer-link">FAQ</a></li>
                </ul>
            </div>

            <!-- Contact -->
            <div class="col-md-4">
                <h5>Contact</h5>
                <p>Email: support@bookvault.com</p>
                <p>Phone: +91 6372008821</p>
            </div>
        </div>

        <hr class="my-3">

        <div class="text-center pb-3">
            <small>© 2025 BookVault. All rights reserved.</small>
        </div>
    </div>
</footer>

<!-- Footer Styles -->
<style>
    .footer {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .footer h5 {
        font-weight: 600;
    }
    .footer-link {
        color: #bbb;
        text-decoration: none;
        transition: color 0.3s ease;
    }
    .footer-link:hover {
        color: #ffffff;
        text-decoration: underline;
    }
    .text-gradient {
        background: linear-gradient(45deg, #4a69bd, #6a89cc);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        font-weight: bold;
    }
</style>
