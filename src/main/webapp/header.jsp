<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-sm nav-stl">
    <div class="container-fluid">
        <!-- Website Name -->
        <a class="navbar-brand fw-bold text-gradient" href="home.jsp">
            BookVault
        </a>

        <!-- Toggle for mobile view -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar Items -->
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto me-3">
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contact.jsp">Contact Us</a>
                </li>
                <%if (session.getAttribute("user")!=null){%>
                
                
                
               <%  }else{
            	   %>
                <li class="nav-item">
                    <a class="nav-link" href="login.jsp">Login</a>
                </li>
            	   <%
               }
                	%>
                
            </ul>

            <!-- Profile Section with Dropdown -->
            <div class="dropdown">
                <a class="d-flex align-items-center profile-section dropdown-toggle" 
                   href="#" role="button" id="profileDropdown" 
                   data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://cdn-icons-png.flaticon.com/512/5951/5951752.png" 
                         alt="Profile" class="profile-pic">
                    <span class="username ms-2"><%if(session.getAttribute("user")==null) { %>
                    <%="Guest" %><%}else{ %>
                    <%=session.getAttribute("user") %>
                    <%} %></span>
                </a>
                <ul class="dropdown-menu dropdown-menu-end dropdown-custom" aria-labelledby="profileDropdown">
                    <li>
                        <form action="profile.jsp">
                            <button class="dropdown-item" type="submit">Profile</button>
                        </form>
                    </li>
                  <!--    <li>
                        <form action="settings.jsp">
                            <button class="dropdown-item" type="submit">Settings</button>
                        </form>
                    </li>-->
                    <li>
                        <form action="logout" method="post">
                            <button class="dropdown-item text-danger" type="submit">Logout</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>

<!-- Custom Styles -->
<style>
    .navbar {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .text-gradient {
        background: linear-gradient(45deg, #4a69bd, #6a89cc);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        font-size: 1.5rem;
        letter-spacing: 1px;
    }
    .nav-link {
        color: #ddd !important;
        transition: color 0.3s ease;
    }
    .nav-link:hover {
        color: #ffffff !important;
        text-decoration: underline;
    }
    .profile-section {
        background: rgba(255,255,255,0.05);
        padding: 5px 10px;
        border-radius: 25px;
        cursor: pointer;
    }
    .profile-pic {
        width: 35px;
        height: 35px;
        border-radius: 50%;
        object-fit: cover;
        border: 2px solid #6a89cc;
    }
    .username {
        color: #f1f1f1;
        font-weight: 500;
    }
    /* Dropdown custom style */
    .dropdown-custom {
        background-color: #2c3e50;
        border-radius: 10px;
        padding: 5px;
        min-width: 150px;
    }
    .dropdown-item {
        color: #f1f1f1;
        transition: background 0.3s ease, color 0.3s ease;
        border-radius: 5px;
    }
    .dropdown-item:hover {
        background-color: #4a69bd;
        color: #fff;
    }
    /* Remove the default caret arrow */
.dropdown-toggle::after {
    display: none !important;
}

/* Remove underline or link style */
.dropdown-toggle {
    text-decoration: none !important;
    color: inherit !important;   /* keeps your custom color */
    background: none !important; /* removes background hover effect */
   /* border: none !important;     /* removes border if applied */
    box-shadow: none !important; /* removes focus shadow */
}
    
</style>
