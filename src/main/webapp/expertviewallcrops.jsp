<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="expertnavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>View All Crops</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .table-custom {
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        .table-custom thead {
            background: linear-gradient(to right, #2ecc71, #27ae60);
            color: white !important;
        }
        .table-custom th {
            text-transform: uppercase;
            letter-spacing: 1px;
            font-weight: 600;
        }
        .table-custom tr:hover {
            background-color: #f1f3f5;
            transition: background-color 0.3s ease;
        }
        .table-custom td {
            vertical-align: middle !important;
        }
        .crop-details {
            font-size: 0.95rem;
            color: #495057;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">All Crops</h2>
    <table class="table table-bordered table-striped table-hover table-custom crop-details">
        <thead class="thead-dark">
        <tr>
            <th>Crop ID</th>
            <th>Crop Name</th>
            <th>Crop Type</th>
            <th>Cultivated Land</th>
            <th>Soil Type</th>
            <th>Season Type</th>
            <th>harvested Land</th>
            <th>Previous Price</th>
            <th>Today Price</th>
            <th>Fertilizer Used</th>
            <th>Irrigation Method</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="crop" items="${crop}">
        <tr>
            <td>${crop.id}</td>
            <td>${crop.name}</td>
            <td>${crop.cropType}</td>
            <td>${crop.cultivatedLand}</td>
            <td>${crop.soilType}</td>
            <td>${crop.seasionType}</td>
            <td>${crop.expectedHarvest}</td>
            <td>${crop.previousPrice}</td>
            <td>${crop.presentPrice}</td>
            <td>${crop.fertilizerUsed}</td>
            <td>${crop.irrigationMethod}</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>