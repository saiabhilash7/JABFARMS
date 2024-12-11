<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.example.springboot.models.AddCrop" %>

<%
    HttpSession httpsession = request.getSession();
    AddCrop crop = (AddCrop) httpsession.getAttribute("crop");
    if (crop == null) {
        out.println("<p>Error: No crop data found in the session.</p>");
        return;
    }
%>


<%@ include file="farmernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Crop</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            width: 100%;
            max-width: 600px;
            margin: 20px auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
        }
        .form-group input,
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .submit-btn {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Update Crop</h2>
        <form action="/updatecropdata" method="post">
            <!-- Hidden field for crop ID -->
            <input type="hidden" name="id" value="${crop.id}">

            <div class="form-group">
                <label for="name">Crop Name</label>
                <input type="text" id="name" name="name" value="${crop.name}" required>
            </div>

            <div class="form-group">
                <label for="cropType">Crop Type</label>
                <select id="cropType" name="cropType" required>
                    <option value="${crop.cropType}" selected>${crop.cropType}</option>
                    <option value="Cereals">Cereals</option>
                    <option value="Pulses">Pulses</option>
                    <option value="Oilseeds">Oilseeds</option>
                    <option value="Vegetables">Vegetables</option>
                    <option value="Fruits">Fruits</option>
                </select>
            </div>

            <div class="form-group">
                <label for="cultivatedLand">Cultivated Land (in acres)</label>
                <input type="number" id="cultivatedLand" name="cultivatedLand" value="${crop.cultivatedLand}" step="0.01" required>
            </div>

            <div class="form-group">
                <label for="soilType">Soil Type</label>
                <select id="soilType" name="soilType" required>
                    <option value="${crop.soilType}" selected>${crop.soilType}</option>
                    <option value="Loamy">Loamy</option>
                    <option value="Sandy">Sandy</option>
                    <option value="Clay">Clay</option>
                    <option value="Silt">Silt</option>
                </select>
            </div>

            <div class="form-group">
                <label for="seasionType">Season Type</label>
                <select id="seasionType" name="seasionType" required>
                    <option value="${crop.seasionType}" selected>${crop.seasionType}</option>
                    <option value="Rabi">Rabi</option>
                    <option value="Kharif">Kharif</option>
                    <option value="Zaid">Zaid</option>
                </select>
            </div>

            <div class="form-group">
                <label for="expectedHarvest">Expected Harvest (in months)</label>
                <input type="number" id="expectedHarvest" name="expectedHarvest" value="${crop.expectedHarvest}" min="1" max="12" required>
            </div>

            <div class="form-group">
                <label for="previousPrice">Market Price Yesterday</label>
                <input type="number" id="previousPrice" name="previousPrice" value="${crop.presentPrice}" required>
            </div>

            <div class="form-group">
                <label for="presentPrice">Market Price Today</label>
                <input type="number" id="presentPrice" name="presentPrice"  required>
            </div>

            <div class="form-group">
                <label for="fertilizerUsed">Fertilizer Used</label>
                <select id="fertilizerUsed" name="fertilizerUsed" required>
                    <option value="${crop.fertilizerUsed}" selected>${crop.fertilizerUsed}</option>
                    <option value="Organic">Organic</option>
                    <option value="Non-organic">Non-organic</option>
                </select>
            </div>

            <div class="form-group">
                <label for="irrigationMethod">Irrigation Method</label>
                <select id="irrigationMethod" name="irrigationMethod" required>
                    <option value="${crop.irrigationMethod}" selected>${crop.irrigationMethod}</option> 
                    <option value="Drip">Drip</option> 
                    <option value="Sprinkler">Sprinkler</option> 
                    <option value="Flood">Flood</option> 
                    <option value="Furrow">Furrow</option> 
                    </select>
                     </div>
              <button type="submit" class="submit-btn">Update Crop</button>
    </form>
</div>
                     
