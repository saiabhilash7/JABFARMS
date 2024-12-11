<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.example.springboot.models.AddCrop" %>
<%@ page import="com.example.springboot.models.User" %>
<%@ include file="UserNavbar.jsp" %>
<%
    HttpSession httpsession = request.getSession();
    AddCrop crop = (AddCrop) httpsession.getAttribute("crop");
    if (crop == null) {
        out.println("<p>Error: No crop data found in the session.</p>");
        return;
    }
%>
<%
    HttpSession httpsessions = request.getSession();
    User user = (User) httpsessions.getAttribute("user");
    if (user == null) {
        out.println("<p>Error: No crop data found in the session.</p>");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Buy Crop</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .form-container {
            max-width: 600px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
<div class="container form-container">
    <h3 class="text-center">Buy Crop</h3>
    <form action="/buyCrop" method="post">
        <input type="hidden" name="cropId" value="${crop.id}">
        <input type="hidden" name="userId" value="${user.id}">
        <input type="hidden" name="farmerId" value="${crop.farmerId}">
        
        <div class="form-group">
            <label for="cropName">Crop Name:</label>
            <input type="text" class="form-control" id="cropName" name="cropName" value="${crop.name}" readonly>
        </div>
        <div class="form-group">
            <label for="presentPrice">Present Price:</label>
            <input type="text" class="form-control" id="presentPrice" name="presentPrice" value="${crop.presentPrice}" readonly>
        </div>
        <div class="form-group">
            <label for="quantity">Quantity (in kg):</label>
            <input type="number" class="form-control" id="quantity" name="quantity" required>
        </div>
        <div class="form-group">
            <label for="totalPrice">Total Price:</label>
            <input type="text" class="form-control" id="totalPrice" name="totalPrice" readonly>
        </div>
        <button type="submit" class="btn btn-success btn-block">Buy</button>
    </form>
</div>
<script>
    const quantityInput = document.getElementById('quantity');
    const priceInput = document.getElementById('presentPrice');
    const totalPriceInput = document.getElementById('totalPrice');

    quantityInput.addEventListener('input', () => {
        const quantity = parseFloat(quantityInput.value) || 0;
        const price = parseFloat(priceInput.value) || 0;
        totalPriceInput.value = (quantity * price).toFixed(2);
    });
</script>
</body>
</html>
