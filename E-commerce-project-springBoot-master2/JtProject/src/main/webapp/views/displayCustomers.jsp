<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap 4 & FontAwesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">

    <style>
        body {
            background-color: #f8f9fa;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .navbar-brand img {
            height: 40px;
        }
        .card {
            border-radius: 10px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="${pageContext.request.contextPath}/images/logo.png" alt="Logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarContent" aria-controls="navbarContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item"><a class="nav-link" href="Dashboard">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Customer Table -->
<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-header bg-primary text-white">
            <h4 class="mb-0"><i class="fas fa-users"></i> Customer List</h4>
        </div>
        <div class="card-body">
            <table class="table table-bordered table-hover">
                <thead class="thead-light">
                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th class="text-center">Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="customer" items="${customers}">
                    <tr>
                        <td>${customer.username}</td>
                        <td>${customer.email}</td>
                        <td>${customer.address}</td>
                        <td class="text-center">
                            <form action="customers/delete" method="post" onsubmit="return confirm('Are you sure you want to delete this customer?');">
                                <input type="hidden" name="id" value="${customer.id}">
                                <button type="submit" class="btn btn-danger btn-sm">
                                    <i class="fas fa-trash-alt"></i> Delete
                                </button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- JS Scripts -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" crossorigin="anonymous"></script>

</body>
</html>
