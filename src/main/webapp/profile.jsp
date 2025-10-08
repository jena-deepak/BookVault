<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="bookvault.entity.users" %> <!-- replace with your package -->
<%
    List<users> userList = (List<users>) session.getAttribute("userDetails");
    users userObj = null;
    if (userList != null && !userList.isEmpty()) {
        userObj = userList.get(0);
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile - BookVault</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f4f6f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .profile-container {
            max-width: 800px;
            margin: 40px auto;
        }
        .profile-card {
            background: #fff;
            border-radius: 15px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
            overflow: hidden;
        }
        .profile-header {
            background: linear-gradient(45deg, #4a69bd, #6a89cc);
            color: #fff;
            padding: 30px;
            text-align: center;
        }
        .profile-header img {
            width: 110px;
            height: 110px;
            border-radius: 50%;
            border: 3px solid #fff;
            object-fit: cover;
        }
        .profile-header h3 {
            margin-top: 15px;
            font-weight: 600;
        }
        .profile-body {
            padding: 30px;
        }
        .info-row {
            display: flex;
            justify-content: space-between;
            padding: 15px 0;
            border-bottom: 1px solid #eaeaea;
        }
        .info-row:last-child {
            border-bottom: none;
        }
        .info-label {
            font-weight: bold;
            color: #4a69bd;
            font-size: 1rem;
        }
        .info-value {
            font-size: 1rem;
            color: #333;
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

<jsp:include page="header.jsp" />
</header>

<div class="container profile-container">
    <div class="profile-card">
        <!-- Profile Header -->
        <div class="profile-header">
            <img src="https://cdn-icons-png.flaticon.com/512/5951/5951752.png" alt="Profile Picture">
            <h3><%= (userObj != null) ? userObj.getUserName() : "Guest" %></h3>
        </div>

        <!-- Profile Details -->
        <div class="profile-body">
            <% if (userObj != null) { %>
                <div class="info-row">
                    <div class="info-label">Full Name</div>
                    <div class="info-value"><%= userObj.getUserName() %></div>
                </div>
                <div class="info-row">
                    <div class="info-label">Email Address</div>
                    <div class="info-value"><%= userObj.getEmail() %></div>
                </div>
                <div class="info-row">
                    <div class="info-label">Phone Number</div>
                    <div class="info-value"><%= userObj.getNumber() %></div>
                </div>
            <% } else { %>
                <p class="text-center">No profile details found. Please <a href="login.jsp">login</a> again.</p>
            <% } %>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
