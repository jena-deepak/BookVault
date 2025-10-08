<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   // String errorMsg = (String) request.getAttribute("errorMsg");
   // if (errorMsg == null) {
       String errorMsg = "Registration failed. Please try again!";
   // }
%>

<!-- Error Popup -->
<div class="alert alert-danger alert-dismissible fade show error-popup" role="alert">
    <i class="bi bi-exclamation-triangle-fill me-2"></i>
    <%= errorMsg %>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<style>
    .error-popup {
        position: fixed;
        top: 20px;
        right: 20px;
        min-width: 300px;
        max-width: 400px;
        z-index: 1055; /* above navbar */
        box-shadow: 0px 4px 12px rgba(0,0,0,0.2);
        border-radius: 10px;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }
    .alert-danger {
        background: linear-gradient(45deg, #c0392b, #e74c3c);
        color: #fff;
        border: none;
    }
    .btn-close {
        filter: invert(1); /* makes close button visible on dark background */
    }
</style>
