<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Perishable Shop - Fresh Groceries Delivered</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap and FontAwesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

    <!-- AOS Animation -->
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.4/dist/aos.css" />

    <!-- Custom Styles -->
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', sans-serif;
        }

        /* Navbar */
        .navbar {
            background: #ffffff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand img {
            height: 50px;
        }

        .navbar .navbar-toggler {
            border-color: #007bff;
        }

        .navbar .navbar-nav .nav-link {
            color: #007bff;
        }

        .navbar .navbar-nav .nav-link:hover {
            color: #0056b3;
        }

        .navbar h5 {
            margin-right: 20px;
        }

        /* Hero Section */
        .hero {
            background: url('https://images.unsplash.com/photo-1585325701954-c7717af6c1df?auto=format&fit=crop&w=1400&q=80') no-repeat center center/cover;
            color: white;
            padding: 120px 0;
            text-align: center;
        }

        .hero h1 {
            font-size: 3.5rem;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.5);
        }

        .hero p {
            font-size: 1.3rem;
            margin-top: 20px;
        }

        .hero .btn {
            margin-top: 30px;
            font-size: 1.1rem;
        }

        /* Product Card */
        .card {
            border: none;
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.05);
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        }

        .card-img-top {
            height: 180px;
            object-fit: cover;
        }

        .badge-category {
            background-color: #28a745;
            color: white;
            font-size: 0.75rem;
            padding: 5px 10px;
            border-radius: 20px;
        }

        .card-body h5 {
            font-weight: bold;
        }

        .card-body .price {
            color: #dc3545;
            font-size: 1.2rem;
        }

        .btn-primary {
            background-color: #28a745;
            border: none;
        }

        /* Footer */
        footer {
            background-color: #343a40;
            color: #ddd;
            padding: 40px 0;
            text-align: center;
        }

        footer a {
            color: #ddd;
            text-decoration: none;
            margin: 0 10px;
        }

        footer a:hover {
            color: white;
        }

        /* Responsive Media Query */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }

            .hero p {
                font-size: 1rem;
            }

            .card-img-top {
                height: 150px;
            }

            .navbar h5 {
                font-size: 0.9rem;
            }
        }
    </style>
</head>

<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#"><img src="${pageContext.request.contextPath}/images/logo.png" alt="Logo"></a>
            <h5 class="ml-auto">Welcome, ${username}</h5>
            <div>
                <a href="#" class="btn btn-outline-success mr-2">Cart</a>
                <a href="profileDisplay" class="btn btn-outline-info mr-2">Profile</a>
                <a href="logout" class="btn btn-outline-danger">Logout</a>
            </div>
        </div>
    </nav>

    <!-- Hero Banner -->
    <section class="hero">
        <div class="container">
            <h1>Fresh Groceries at Your Doorstep</h1>
            <p>Handpicked quality, fast delivery, and freshness guaranteed.</p>
            <a href="#products" class="btn btn-light btn-lg">Shop Now <i class="fas fa-arrow-right"></i></a>
        </div>
    </section>

    <!-- Product Section -->
    <section class="container py-5" id="products">
        <h2 class="text-center mb-5">Explore Our Products</h2>
        <div class="row">
            <c:forEach var="product" items="${products}">
                <div class="col-md-3 mb-4" data-aos="fade-up">
                    <div class="card h-100">
                        <img class="card-img-top" src="${product.image}" alt="${product.name}">
                        <div class="card-body d-flex flex-column">
                            <span class="badge-category mb-2">${product.category.name}</span>
                            <h5 class="card-title">${product.name}</h5>
                            <p class="price">₹${product.price}</p>
                            <p class="card-text">${product.description}</p>
                            <a href="#" class="btn btn-primary mt-auto">Add to Cart</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>&copy; 2025 Perishable Shop | All rights reserved</p>
            <div>
                <a href="#">Privacy</a> |
                <a href="#">Terms</a> |
                <a href="#">Support</a>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.4/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>
</body>

</html>
