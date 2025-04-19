<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page import="java.io.FileOutputStream" %>    
<%@page import="java.io.ObjectOutputStream" %>    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS for better styling -->
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
          crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow">
        <div class="card-body">
            <h2 class="card-title text-primary">Test Page</h2>

            <%
                String s = (String) request.getAttribute("author");
                Integer id = (Integer) request.getAttribute("id");
                List<String> friends = (List<String>) request.getAttribute("f");
            %>

            <p><strong>Author Name:</strong> <span class="text-dark"><%= s %></span></p>
            <p><strong>ID:</strong> <span class="text-dark"><%= id %></span></p>

            <h5 class="mt-4">Friends List:</h5>
            <ul class="list-group">
                <% 
                    if (friends != null && !friends.isEmpty()) {
                        for (String st : friends) {
                %>
                    <li class="list-group-item"><%= st %></li>
                <%
                        }
                    } else {
                %>
                    <li class="list-group-item text-muted">No friends found.</li>
                <% 
                    }
                %>
            </ul>
        </div>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        crossorigin="anonymous"></script>
</body>
</html>
