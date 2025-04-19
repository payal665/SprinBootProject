<!doctype html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up</title>

    <!-- Bootstrap & FontAwesome -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

    <style>
        body {
            background: #f1f4f9;
            font-family: 'Segoe UI', sans-serif;
        }

        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background: #007bff;
            color: white;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            text-align: center;
        }

        .form-control {
            border-radius: 10px;
        }

        .btn-primary {
            border-radius: 10px;
            padding: 10px;
            font-weight: bold;
        }

        .linkControl {
            color: #007bff;
            text-decoration: none;
        }

        .linkControl:hover {
            text-decoration: underline;
        }

        .text-muted {
            font-size: 0.85rem;
        }
    </style>
</head>
<body>

<!-- Sign Up Form Container -->
<div class="container d-flex justify-content-center align-items-center" style="min-height: 100vh;">
    <div class="col-md-6">
        <div class="card">
            <div class="card-header">
                <h4><i class="fas fa-user-plus"></i> Sign Up Now</h4>
                <p class="mb-0">Please fill out the form to register</p>
            </div>
            <div class="card-body">
                <form action="newuserregister" method="post">
                    <div class="form-group">
                        <label for="firstName">Username</label>
                        <input type="text" name="username" id="firstName" required
                               placeholder="Your Username*" class="form-control form-control-lg">
                    </div>

                    <div class="form-group">
                        <label for="email">Email address</label>
                        <input type="email" name="email" id="email" required minlength="6"
                               placeholder="Email*" class="form-control form-control-lg">
                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" name="password" id="password" required
                               placeholder="Password*" class="form-control form-control-lg">
                    </div>

                    <div class="form-group">
                        <label for="address">Address</label>
                        <textarea name="address" rows="3" id="address"
                                  placeholder="Enter your address" class="form-control form-control-lg"></textarea>
                    </div>

                    <div class="text-center mb-2">
                        <span>Already have an account? <a class="linkControl" href="/">Login here</a></span>
                    </div>

                    <input type="submit" value="Register" class="btn btn-primary btn-block">

                    <c:if test="${not empty msg}">
                        <div class="mt-3 text-center text-danger font-weight-bold">
                            ${msg}
                        </div>
                    </c:if>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- JS Dependencies -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        crossorigin="anonymous"></script>
</body>
</html>
