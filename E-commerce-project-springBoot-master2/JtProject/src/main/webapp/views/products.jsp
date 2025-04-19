<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin - Product List</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap 4 + FontAwesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">

    <style>
        body {
            background-color: #f5f7fa;
        }

        .navbar-brand img {
            height: 40px;
        }

        .card {
            border-radius: 10px;
        }

        .table th, .table td {
            vertical-align: middle;
        }

        .product-img {
            border-radius: 10px;
            object-fit: cover;
        }

        .btn i {
            margin-right: 5px;
        }

        .table-wrapper {
            overflow-x: auto;
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

<!-- Content -->
<div class="container mt-5">
    <div class="d-flex justify-content-between align-items-center mb-3">
        <h3><i class="fas fa-boxes"></i> Product List</h3>
        <a href="/admin/products/add" class="btn btn-primary">
            <i class="fas fa-plus-circle"></i> Add Product
        </a>
    </div>

    <div class="card shadow-sm">
        <div class="card-body table-wrapper">
            <table class="table table-hover table-bordered text-center">
                <thead class="thead-dark">
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Preview</th>
                        <th>Qty</th>
                        <th>Price</th>
                        <th>Weight</th>
                        <th>Description</th>
                        <th>Delete</th>
                        <th>Update</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${products}">
                        <tr>
                            <td>${product.id}</td>
                            <td>${product.name}</td>
                            <td>${product.category.name}</td>
                            <td>
                                <img src="${product.image}" class="product-img" width="100" height="100" alt="Product Image">
                            </td>
                            <td>${product.quantity}</td>
                            <td>₹ ${product.price}</td>
                            <td>${product.weight}</td>
                            <td>${product.description}</td>
                            <td>
                                <form action="products/delete" method="get" onsubmit="return confirm('Are you sure you want to delete this product?');">
                                    <input type="hidden" name="id" value="${product.id}">
                                    <button class="btn btn-danger btn-sm" type="submit">
                                        <i class="fas fa-trash-alt"></i> Delete
                                    </button>
                                </form>
                            </td>
                            <td>
                                <form action="products/update/${product.id}" method="get">
                                    <button class="btn btn-warning btn-sm" type="submit">
                                        <i class="fas fa-edit"></i> Update
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

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" crossorigin="anonymous"></script>

</body>
</html>
