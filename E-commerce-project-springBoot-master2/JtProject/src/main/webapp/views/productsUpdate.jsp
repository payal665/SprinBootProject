<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Product</title>

    <!-- Bootstrap & FontAwesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

    <style>
        body {
            background-color: #f8f9fa;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
        }

        .form-group label {
            font-weight: 600;
        }

        .img-preview {
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin-top: 10px;
            border-radius: 10px;
            border: 1px solid #ccc;
        }

        .btn-primary {
            width: 100%;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <img src="../static/images/logo.png" alt="Logo" height="40">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
            <ul class="navbar-nav">
                <li class="nav-item active"><a class="nav-link" href="/dashboard">Home Page</a></li>
                <li class="nav-item active"><a class="nav-link" href="/logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container mt-4">
    <div class="card">
        <div class="card-header bg-info text-white">
            <h4><i class="fas fa-edit"></i> Update Existing Product</h4>
        </div>
        <div class="card-body">
            <form action="/admin/products/update/${product.id}" method="post" enctype="multipart/form-data">
                <div class="row">
                    <!-- Left Column -->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Product ID</label>
                            <input type="number" readonly class="form-control border border-success" name="id" value="${product.id}">
                        </div>
                        <div class="form-group">
                            <label>Product Name</label>
                            <input type="text" class="form-control border border-success" name="name" required value="${product.name}">
                        </div>
                        <div class="form-group">
                            <label>Category</label>
                            <select class="form-control border border-success" name="categoryid" readonly>
                                <option selected>Select a Category</option>
                                <c:forEach var="category" items="${categories}">
                                    <option value="${category.id}" ${category.id == product.category.id ? 'selected' : ''}>${category.name}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Price (₹)</label>
                            <input type="number" class="form-control border border-success" name="price" required value="${product.price}" min="1">
                        </div>
                        <div class="form-group">
                            <label>Weight (grams)</label>
                            <input type="number" class="form-control border border-success" name="weight" required value="${product.weight}" min="1">
                        </div>
                        <div class="form-group">
                            <label>Quantity</label>
                            <input type="number" class="form-control border border-success" name="quantity" required value="${product.quantity}" min="1">
                        </div>
                    </div>

                    <!-- Right Column -->
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Product Description</label>
                            <textarea class="form-control border border-success" name="description" rows="5">${product.description}</textarea>
                        </div>
                        <div class="form-group">
                            <label>Product Image</label>
                            <input type="file" class="form-control-file border border-success" name="productImage" accept="image/*" onchange="loadFile(event)">
                        </div>
                        <div class="form-group">
                            <img src="${product.image}" id="imgPreview" class="img-preview" alt="Product Image">
                        </div>
                        <input type="hidden" name="imgName" value="${product.image}">
                        <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Update Details</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- JS Preview Script -->
<script>
    function loadFile(event) {
        var image = document.getElementById('imgPreview');
        image.src = URL.createObjectURL(event.target.files[0]);
    }
</script>

<!-- JS Includes -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
