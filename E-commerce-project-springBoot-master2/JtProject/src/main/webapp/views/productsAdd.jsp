<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Add Product</title>

    <!-- Bootstrap and FontAwesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">

    <style>
        body {
            background-color: #f7f8fa;
        }

        .container {
            margin-top: 30px;
        }

        .card {
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        .form-group label {
            font-weight: bold;
        }

        .img-preview {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 10px;
            margin-top: 10px;
        }

        .form-control {
            border-radius: 5px;
        }

        .btn {
            width: 100%;
        }

        .col-md-6 {
            margin-bottom: 20px;
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
                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a class="nav-link" href="/adminhome">Home Page</a></li>
                <li class="nav-item active"><a class="nav-link" href="/logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <div class="card">
        <div class="card-body">
            <h3 class="card-title text-center mb-4"><i class="fas fa-plus-circle"></i> Add a New Product</h3>
            <form action="/admin/products/add" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="id">Product ID</label>
                            <input type="number" readonly class="form-control" name="id" value="${products.size() + 1}">
                        </div>

                        <div class="form-group">
                            <label for="name">Product Name</label>
                            <input type="text" class="form-control" name="name" required placeholder="Enter product name">
                        </div>

                        <div class="form-group">
                            <label for="category">Select Category</label>
                            <select class="form-control" name="categoryid" required>
                                <option selected>Select a Category</option>
                                <c:forEach var="category" items="${categories}">
                                    <option value="${category.id}">${category.name}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="price">Price (₹)</label>
                            <input type="number" class="form-control" name="price" required min="1" placeholder="Enter price">
                        </div>

                        <div class="form-group">
                            <label for="weight">Weight (in grams)</label>
                            <input type="number" class="form-control" name="weight" required min="1" placeholder="Enter weight">
                        </div>

                        <div class="form-group">
                            <label for="quantity">Available Quantity</label>
                            <input type="number" class="form-control" name="quantity" required min="1" placeholder="Enter quantity">
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="description">Product Description</label>
                            <textarea class="form-control" name="description" rows="5" placeholder="Enter product description"></textarea>
                        </div>

                        <div class="form-group">
                            <label for="productImage">Product Image (URL)</label>
                            <input type="text" class="form-control" name="productImage" required placeholder="Enter image URL">
                        </div>

                        <div class="form-group">
                            <label for="imagePreview">Image Preview</label>
                            <img id="imgPreview" src="Product Images/one.jpg" class="img-preview" alt="Product Image">
                        </div>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Save Product</button>
            </form>
        </div>
    </div>
</div>

<!-- Image Preview Script -->
<script>
    document.querySelector('input[name="productImage"]').addEventListener('input', function () {
        var imgPreview = document.getElementById('imgPreview');
        imgPreview.src = this.value || 'Product Images/one.jpg';  // Default image if empty
    });
</script>

<!-- Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
