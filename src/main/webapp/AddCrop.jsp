<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.example.springboot.models.Farmer"%>
<%
    HttpSession httpSession = request.getSession();
    Farmer farmer = (Farmer) httpSession.getAttribute("farmer");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Crop</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4CAF50;
            --secondary-color: #2196F3;
            --background-color: #f4f4f4;
            --text-color: #333;
            --card-bg: #ffffff;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            background-color: var(--background-color);
            color: var(--text-color);
            line-height: 1.6;
        }

        .container {
            width: 100%;
            max-width: 700px;
            margin: 40px auto;
            padding: 20px;
            background-color: var(--card-bg);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .form-title {
            text-align: center;
            margin-bottom: 30px;
            color: var(--primary-color);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }

        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
            transition: border-color 0.3s ease;
        }

        .form-group input:focus,
        .form-group select:focus {
            outline: none;
            border-color: var(--secondary-color);
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .submit-btn:hover {
            background-color: #45a049;
        }

        .success-message {
            background-color: #dff0d8;
            color: #3c763d;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 4px;
            text-align: center;
        }

        @media (max-width: 768px) {
            .container {
                width: 95%;
                padding: 15px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="farmernavbar.jsp" %>
 
    <div class="container">
        <h2 class="form-title">Add New Crop</h2>

        <c:if test="${not empty message}">
            <div class="success-message">
                ${message}
            </div>
        </c:if>
        
        

        <form action="/insertcrop" method="post" onsubmit="return validateForm()">
        
           <div class="form-group">
            <label for="farmerId">Farmer Id:</label>
            <input type="text"  id="farmerId" name="farmerId" value="<%= farmer != null ? farmer.getId() : "" %>" readonly>
        </div>
            <div class="form-group">
                <label for="name">Crop Name</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="cropType">Crop Type</label>
                <select id="cropType" name="cropType" required>
                    <option value="">Select Crop Type</option>
                    <option value="Cereals">Cereals</option>
                    <option value="Pulses">Pulses</option>
                    <option value="Oilseeds">Oilseeds</option>
                    <option value="Vegetables">Vegetables</option>
                    <option value="Fruits">Fruits</option>
                </select>
            </div>

            <div class="form-group">
                <label for="cultivatedLand">Cultivated Land (in acres)</label>
                <input type="number" id="cultivatedLand" name="cultivatedLand" step="0.01" min="0" required>
            </div>

            <div class="form-group">
                <label for="soilType">Soil Type</label>
                <select id="soilType" name="soilType" required>
                    <option value="">Select Soil Type</option>
                    <option value="Loamy">Loamy</option>
                    <option value="Sandy">Sandy</option>
                    <option value="Clay">Clay</option>
                    <option value="Silt">Silt</option>
                </select>
            </div>

            <div class="form-group">
                <label for="seasionType">Season Type</label>
                <select id="seasionType" name="seasionType" required>
                    <option value="">Select Season</option>
                    <option value="Rabi">Rabi</option>
                    <option value="Kharif">Kharif</option>
                    <option value="Zaid">Zaid</option>
                </select>
            </div>

            <div class="form-group">
                <label for="expectedHarvest">Expected Harvest (in months)</label>
                <input type="number" id="expectedHarvest" name="expectedHarvest" min="1" max="12" required>
            </div>

            <div class="form-group">
                <label for="prevoiusPrice">Market Price Yesterday</label>
                <input type="number" id="previousPrice" name="previousPrice"  required>
            </div>
            <div class="form-group">
                <label for="presentPrice">Market Price Today</label>
                <input type="number" id="presentPrice" name="presentPrice"  required>
            </div>

            <div class="form-group">
                <label for="fertilizerUsed">Fertilizer Used</label>
                
                <select id="fertilizerUsed" name="fertilizerUsed" required>
                    <option value="">Select Fertilizers User </option>
                    <option value="Organic">Organic</option>
                    <option value="Non-organic">Non-organic</option>
                  
                </select>
            </div>

            <div class="form-group">
                <label for="irrigationMethod">Irrigation Method</label>
                <select id="irrigationMethod" name="irrigationMethod" required>
                    <option value="">Select Irrigation Method</option>
                    <option value="Drip">Drip</option>
                    <option value="Sprinkler">Sprinkler</option>
                    <option value="Flood">Flood</option>
                    <option value="Furrow">Furrow</option>
                </select>
            </div>
           

            <button type="submit" class="submit-btn">Add Crop</button>
        </form>
    </div>

   
        
</body>
</html>