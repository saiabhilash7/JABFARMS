<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="farmernavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>View All Crops</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Custom table styles */
        .table-crops {
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            margin-top: 40px;
        }

        .table-crops thead {
            background-color: #4CAF50;
            color: white;
            text-transform: uppercase;
            font-weight: 700;
        }

        .table-crops th, .table-crops td {
            vertical-align: middle;
            padding: 12px 18px;
            transition: background-color 0.3s ease;
        }

        .table-crops tbody tr:nth-child(even) {
            background-color: #f8f9fa;
        }

        .table-crops tbody tr:hover {
            background-color: #e9ecef;
            transition: background-color 0.3s ease;
        }

        .table-crops .btn-update {
            background-color: #2196F3;
            border-color: #2196F3;
            color: white;
        }

        .table-crops .btn-delete {
            background-color: #f44336;
            border-color: #f44336;
            color: white;
        }

        .table-crops .btn-update:hover, 
        .table-crops .btn-delete:hover {
            opacity: 0.8;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .table-crops {
                font-size: 0.9rem;
            }

            .table-crops th, .table-crops td {
                padding: 8px 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center mb-4">All Crops</h2>
        <table class="table table-bordered table-striped table-crops">
            <thead>
                <tr>
                    <th>Crop ID</th>
                    <th>Crop Name</th>
                    <th>Crop Type</th>
                    <th>Cultivated Land</th>
                    <th>Soil Type</th>
                    <th>Season Type</th>
                    <th>Harvested Land</th>
                    <th>Previous Price</th>
                    <th>Today Price</th>
                    <th>Fertilizer Used</th>
                    <th>Irrigation Method</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="crop" items="${cropList}">
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
                        <td>
                            <a href="updateCrop?id=${crop.id}" class="btn btn-primary btn-sm btn-update">Update</a>
                        </td>
                        <td>
                            <a href="/deleteCrop?id=${crop.id}" class="btn btn-danger btn-sm btn-delete" onclick="return confirm('Are you sure you want to delete this crop?');">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Optional: Add Bootstrap JS and its dependencies if needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>