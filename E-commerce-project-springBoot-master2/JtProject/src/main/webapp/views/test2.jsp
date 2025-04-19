<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Test Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
          crossorigin="anonymous">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card shadow-lg border-info">
        <div class="card-body">
            <h2 class="card-title text-primary">Test Page</h2>
            <hr>
            <p class="lead">
                <strong>Name:</strong> ${name} <br>
                <strong>ID:</strong> ${id}
            </p>

            <hr>
            <h4 class="text-success">Marks List:</h4>
            <ul class="list-group mt-3">
                <c:forEach var="item" items="${marks}">
                    <li class="list-group-item">${item}</li>
                </c:forEach>
            </ul>
        </div>
    </div>
</div>

<!-- Bootstrap JS & dependencies -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        crossorigin="anonymous"></script>
</body>
</html>
