<%@page import="bookvault.entity.Books"%>
<%@page import="bookvault.service.BookService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, bookvault.entity.Authors , bookvault.service.BookService" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Our Authors</title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .page-header {
            background: linear-gradient(135deg, #4a69bd, #6a89cc);
            color: white;
            padding: 40px 20px;
            text-align: center;
            border-radius: 0 0 25px 25px;
        }

        .authors-container {
            margin-top: 40px;
        }

        .author-card {
            border-radius: 20px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            text-align: center;
            padding: 20px;
        }

        .author-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0,0,0,0.2);
        }

        .author-card img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 50%;
            border: 4px solid #6a89cc;
            margin-bottom: 15px;
        }

        .author-name {
            font-size: 1.25rem;
            font-weight: 600;
            background: linear-gradient(45deg, #4a69bd, #6a89cc);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .author-info {
            color: #555;
            font-size: 0.95rem;
        }

        .author-section {
            margin-top: 10px;
            font-size: 0.9rem;
        }

        .author-section h6 {
            font-weight: 600;
            color: #4a69bd;
        }

        .author-section ul {
            padding-left: 20px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>

    <!-- Page Header -->
    <div class="page-header">
        <h2>Our Authors</h2>
        <p>Discover the brilliant minds behind our books.</p>
    </div>

    <!-- Authors Section -->
    <div class="container authors-container">
        <div class="row g-4">
            <%
            	BookService service = new BookService();
                List<Authors> authorsList = service.fetchAuthors();
                if(authorsList != null && !authorsList.isEmpty()) {
                    for(Authors author : authorsList) {
            %>
            <div class="col-md-4">
                <div class="author-card shadow-sm">
                    <img src="<%= author.getAuthorPhotoUrl() %>" alt="<%= author.getAuthorName() %>">
                    <div class="author-name"><%= author.getAuthorName() %></div>
                    <div class="author-info">
                        Age: <%= author.getAge() %>
                    </div>
                    <div class="author-section">
                        <h6>Books:</h6>
                        <ul>
                            <% 
                                if(author.getBook()!= null && !author.getBook().isEmpty()) {
                                	List<Books> books=author.getBook();
                                    for(Books book :books ) {
                            %>
                                <li><%= book.getBookName()%></li>
                                
                            <%      } 
                                } else { %>
                                <li>No books listed</li>
                            <% } %>
                        </ul>
                        <h6>Awards:</h6>
                        <ul>
                            <% 
                                if(author.getAwards() != null && !author.getAwards().isEmpty()) {
                                	
                                    
                            %>
                                <li><%= author.getAwards() %></li>
                            <%      
                                } else { %>
                                <li>No awards listed</li>
                            <% } %>
                        </ul>
                    </div>
                </div>
            </div>
            <%      } 
                } else { %>
                    <div class="alert alert-warning text-center">No authors found in the database.</div>
            <% } %>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
