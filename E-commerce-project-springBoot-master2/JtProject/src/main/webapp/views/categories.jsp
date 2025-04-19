<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Category Management</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">

    <style>
        body {
            background-color: #f4f6f9;
        }
        .navbar-brand img {
            height: 40px;
        }
        .table th, .table td {
            vertical-align: middle;
        }
        .table-hover tbody tr:hover {
            background-color: #f1f1f1;
        }
        .modal .form-control {
            border-radius: .25rem;
        }
    </style>
</head>
<body>

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

<div class="container my-5">
    <!-- Add Category Button -->
    <button type="button" class="btn btn-primary mb-4" data-toggle="modal" data-target="#addCategoryModal">
        <i class="fas fa-plus-circle"></i> Add Category
    </button>

    <!-- Add Category Modal -->
    <div class="modal fade" id="addCategoryModal" tabindex="-1" role="dialog" aria-labelledby="addCategoryLabel"
         aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form action="categories" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="addCategoryLabel">Add New Category</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <input type="text" name="categoryname" class="form-control" placeholder="Category name" required>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <input type="submit" class="btn btn-primary" value="Add Category">
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- Category Table -->
    <div class="table-responsive">
        <table class="table table-bordered table-hover shadow-sm">
            <thead class="thead-light">
            <tr>
                <th>#</th>
                <th>Category Name</th>
                <th class="text-center">Delete</th>
                <th class="text-center">Update</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="category" items="${categories}">
                <tr>
                    <td>${category.id}</td>
                    <td>${category.name}</td>
                    <td class="text-center">
                        <form action="categories/delete" method="get">
                            <input type="hidden" name="id" value="${category.id}">
                            <button class="btn btn-danger btn-sm"><i class="fas fa-trash-alt"></i> Delete</button>
                        </form>
                    </td>
                    <td class="text-center">
                        <!-- Trigger update modal with unique ID -->
                        <button type="button" class="btn btn-warning btn-sm"
                                data-toggle="modal" data-target="#updateModal${category.id}">
                            <i class="fas fa-edit"></i> Update
                        </button>

                        <!-- Update Modal -->
                        <div class="modal fade" id="updateModal${category.id}" tabindex="-1" role="dialog"
                             aria-labelledby="updateModalLabel${category.id}" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <form action="categories/update" method="get">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="updateModalLabel${category.id}">Update Category</h5>
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                            <input type="hidden" name="categoryid" value="${category.id}">
                                            <input type="text" class="form-control" name="categoryname"
                                                   value="${category.name}" required>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary"
                                                    data-dismiss="modal">Cancel</button>
                                            <button type="submit" class="btn btn-primary">Save Changes</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- JS Scripts -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"
        crossorigin="anonymous"></script>

</body>
</html>
