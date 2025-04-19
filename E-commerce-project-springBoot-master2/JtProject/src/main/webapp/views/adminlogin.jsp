<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - Perishable Shop</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

    <style>
        body {
            height: 100vh;
            background: linear-gradient(to right, #243B55, #141E30);
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-container {
            background: #ffffff;
            border-radius: 12px;
            padding: 2rem 2.5rem;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
            max-width: 450px;
            width: 100%;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 1.5rem;
            color: #243B55;
        }

        .form-control {
            border-radius: 0.5rem;
        }

        .form-control:focus {
            box-shadow: 0 0 0 0.2rem rgba(36, 59, 85, 0.25);
            border-color: #243B55;
        }

        .input-group-text {
            background-color: #243B55;
            color: #fff;
            border: none;
            border-radius: 0.5rem 0 0 0.5rem;
        }

        .btn-primary {
            background-color: #243B55;
            border: none;
            border-radius: 0.5rem;
            padding: 0.6rem;
            font-size: 1.1rem;
        }

        .btn-primary:hover {
            background-color: #1a2e40;
        }

        .logo {
            width: 60px;
            margin-bottom: 1rem;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .error-message {
            color: red;
            font-size: 1rem;
            text-align: center;
        }
    </style>
</head>

<body>

<div class="login-container">
    <!-- Optional Logo -->
    <img src="../static/images/logo.png" alt="Logo" class="logo">

    <h2>Admin Login</h2>

    <form action="/admin/loginvalidate" method="post">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <div class="input-group">
                <span class="input-group-text"><i class="fas fa-user"></i></span>
                <input type="text" name="username" id="username" class="form-control" placeholder="Admin username" required>
            </div>
        </div>

        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <div class="input-group">
                <span class="input-group-text"><i class="fas fa-lock"></i></span>
                <input type="password" name="password" id="password" class="form-control" placeholder="Admin password" required>
            </div>
        </div>

        <button type="submit" class="btn btn-primary w-100 mt-3">Login</button>

        <div class="error-message mt-3">${msg}</div>
    </form>
</div>

<!-- Bootstrap JS (for responsive utilities) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
