<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    
      String  successMsg = "Registration successful!!";
    
%>

<!-- Success Popup -->
<div class="alert alert-success alert-dismissible fade show success-popup" role="alert">
    <i class="bi bi-check-circle-fill me-2"></i>
    <%= successMsg %>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<style>
    .success-popup {
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
    .alert-success {
       /* background: linear-gradient(45deg, #27ae60, #2ecc71); /* Green gradient */
       background:linear-gradient(45deg, #43499f, #1722dc);/*blue gradient*/
        color: #fff;
        border: none;
    }
    .btn-close {
        filter: invert(1); /* makes close button visible on dark background */
    }
</style>
