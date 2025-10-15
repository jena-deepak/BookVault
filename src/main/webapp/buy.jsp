<%@page import="bookvault.service.BookService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, bookvault.entity.Books" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Books Library</title>

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

        .books-container {
            margin-top: 40px;
        }

        .book-card {
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .book-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0,0,0,0.2);
        }

        .book-card img {
            height: 300px;
            object-fit: cover;
            border-radius: 15px 15px 0 0;
        }

        .text-gradient {
            background: linear-gradient(45deg, #4a69bd, #6a89cc);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
    </style>
</head>
<body>
    <%@ include file="header.jsp" %>

    <!-- Page Header -->
    <div class="page-header">
        <h2>Our Book Collection</h2>
        <p>Explore the library and discover amazing books.</p>
    </div>

    <!-- Books Section -->
    <div class="container books-container">
        <div class="row g-4">
            <%
            BookService service = new BookService();
            List<Books> booksList=service.fetchBooks();
               // List<Books> booksList = (List<Books>) request.getAttribute("booksList");
                if (booksList != null && !booksList.isEmpty()) {
                    for (Books book : booksList) {
            %>
            <div class="col-md-3">
                <div class="card book-card" style="height:520px!important">
                    <img src="<%=book.getBookUrl() %>" class="card-img-top img-fluid" alt="<%= book.getBookName() %>">
                    <div class="card-body text-center">
                        <h5 class="card-title text-gradient"><%= book.getBookName() %></h5>
                        <p class="card-text"><strong>Author:</strong> <%= book.getAuthor().getAuthorName() %></p>
                        <p class="card-text"><strong>Price:</strong> ₹<%= book.getPrice() %></p>
                       
                    </div>
                    <div class="card-footer text-center">
                     <form action="#">
                        <input type="submit" value="Buy now" class="btn btn-outline-primary border border-primary border-2">
                        </form>
                    </div>
                </div>
            </div>
            <%      }
                } else { %>
                    <div class="alert alert-warning text-center">No books found in the library.</div>
            <% } %>
        </div>
    </div>

    <%@ include file="footer.jsp" %>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
