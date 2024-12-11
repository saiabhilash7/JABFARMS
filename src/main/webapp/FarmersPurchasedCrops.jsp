<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="farmernavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Buyers of My Crops</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f4f6f9;
        }

        .table-custom {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            background: white;
        }

        .table-custom thead {
            background: linear-gradient(to right, #3498db, #2980b9);
            color: white !important;
            text-transform: uppercase;
        }

        .table-custom th, .table-custom td {
            text-align: center;
            vertical-align: middle;
            padding: 10px;
        }

        .table-custom tbody tr:hover {
            background-color: #ecf0f1;
            cursor: pointer;
        }

        .no-purchases {
            text-align: center;
            color: #7f8c8d;
            font-size: 18px;
            font-style: italic;
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Buyers of My Crops</h2>

    <c:choose>
        <c:when test="${empty purchases}">
            <p class="no-purchases">No one has bought your crops yet.</p>
        </c:when>
        <c:otherwise>
            <table class="table table-bordered table-hover table-custom">
                <thead>
                    <tr>
                       
                        <th>Crop Name</th>
                        <th>Quantity</th>
                        <th>Total Price</th>
                        <
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="purchase" items="${purchases}">
                        <tr>
                            <!-- Assuming the user has a 'name' property -->
                            <td>${purchase.cropName}</td>
                            <td>${purchase.quantity}</td>
                            <td>${purchase.totalPrice}</td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:otherwise>
    </c:choose>
</div>
</body>
</html>
