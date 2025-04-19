<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Your Cart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

<!-- Cart Section -->
<div class="container py-5">
    <h2>Your Cart</h2>
    <div class="row">
        <c:forEach var="product" items="${sessionScope.cart}">
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img class="card-img-top" src="${product.image}" alt="${product.name}">
                    <div class="card-body">
                        <h5 class="card-title">${product.name}</h5>
                        <p class="price">₹${product.price}</p>
                        <p class="card-text">${product.description}</p>
                        <form action="/removeFromCart" method="POST">
                            <input type="hidden" name="productId" value="${product.id}">
                            <button type="submit" class="btn btn-danger">Remove</button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <a href="checkout.jsp" class="btn btn-primary">Proceed to Checkout</a>
</div>

</body>
</html>
