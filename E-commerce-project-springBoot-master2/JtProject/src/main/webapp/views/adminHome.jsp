<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Admin Dashboard - Perishable Shop</title>

  <!-- Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- FontAwesome -->
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

  <style>
    body {
      background: linear-gradient(to right, #141e30, #243b55);
      color: #fff;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .navbar {
      background-color: #1f2b37 !important;
    }

    .jumbotron {
      background-color: transparent;
      padding: 60px 20px;
      color: #f8f9fa;
    }

    .card {
      background: #ffffff;
      border: none;
      border-radius: 12px;
      transition: transform 0.3s ease-in-out, box-shadow 0.3s;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    }

    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 12px 30px rgba(0, 0, 0, 0.25);
    }

    .card-body h4 {
      font-weight: bold;
      color: #333;
    }

    .card-body p {
      font-size: 14px;
      color: #555;
    }

    .btn-primary {
      background-color: #243b55;
      border: none;
    }

    .btn-primary:hover {
      background-color: #1d2d44;
    }

    .section-title {
      margin-top: 20px;
      text-align: center;
      font-size: 2.5rem;
      font-weight: bold;
    }
  </style>
</head>

<body>
  <!-- Navbar -->
  <nav class="navbar navbar-expand-lg navbar-dark shadow-sm">
    <div class="container-fluid">
      <a class="navbar-brand" href="#">
        <img src="../static/images/logo.png" height="40" alt="Logo" />
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item"><a class="nav-link active" href="/admin/"><i class="fas fa-home me-1"></i>Home</a></li>
          <li class="nav-item"><a class="nav-link" href="/admin/logout"><i class="fas fa-sign-out-alt me-1"></i>Logout</a></li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Welcome Message -->
  <div class="jumbotron text-center">
    <h1 class="display-5 fw-bold">Welcome Back, Admin</h1>
    <p class="lead">Manage your data efficiently with this intuitive panel</p>
    <hr style="background-color: #fff; height: 2px; width: 50px; margin: auto;">
  </div>

  <!-- Cards -->
  <div class="container py-5">
    <div class="row g-4 justify-content-center">
      <!-- Categories -->
      <div class="col-md-4 col-sm-6">
        <div class="card text-center">
          <div class="card-body">
            <i class="fas fa-tags fa-2x mb-3 text-primary"></i>
            <h4>Categories</h4>
            <p>Manage product categories efficiently.</p>
            <a href="/admin/categories" class="btn btn-primary w-100">Manage Categories</a>
          </div>
        </div>
      </div>

      <!-- Products -->
      <div class="col-md-4 col-sm-6">
        <div class="card text-center">
          <div class="card-body">
            <i class="fas fa-boxes fa-2x mb-3 text-success"></i>
            <h4>Products</h4>
            <p>View, edit, or add new products to your shop.</p>
            <a href="/admin/products" class="btn btn-primary w-100">Manage Products</a>
          </div>
        </div>
      </div>

      <!-- Customers -->
      <div class="col-md-4 col-sm-6">
        <div class="card text-center">
          <div class="card-body">
            <i class="fas fa-users fa-2x mb-3 text-warning"></i>
            <h4>Customers</h4>
            <p>Access and manage all registered customers.</p>
            <a href="/admin/customers" class="btn btn-primary w-100">Manage Customers</a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
