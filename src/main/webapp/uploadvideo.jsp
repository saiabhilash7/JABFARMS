<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.example.springboot.models.Expert"%>

<%
    HttpSession httpSession = request.getSession(); 
    Expert expert = (Expert) httpSession.getAttribute("expert"); 
%>

<%@include file="expertnavbar.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Video</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --background-color: #f4f6f9;
            --text-color: #2c3e50;
        }

        /* General styling */
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, var(--background-color) 0%, #e9ecef 100%);
            margin: 0;
            padding: 0;
        }

        /* Fix for navbar gap */
        .content {
            margin-top: 56px; /* Adjust to match navbar height */
        }

        /* Upload container styles */
        .upload-container {
            background: white;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
            padding: 40px;
            width: 100%;
            max-width: 550px;
            margin: 0 auto;
        }

        .upload-header {
            text-align: center;
            color: var(--text-color);
            margin-bottom: 30px;
            font-weight: 700;
            position: relative;
        }

        .upload-header::after {
            content: '';
            position: absolute;
            width: 80px;
            height: 4px;
            background: var(--primary-color);
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 2px;
        }

        .form-group {
            margin-bottom: 20px;
            position: relative;
        }

        .form-group label {
            font-weight: 600;
            color: var(--text-color);
            margin-bottom: 8px;
        }

        .form-control {
            border: 2px solid #e9ecef;
            border-radius: 8px;
            padding: 12px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 0.2rem rgba(52, 152, 219, 0.25);
        }

        .upload-btn {
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            border: none;
            color: white;
            padding: 12px;
            border-radius: 8px;
            width: 100%;
            font-weight: 600;
            letter-spacing: 1px;
            transition: transform 0.3s ease;
        }

        .upload-btn:hover {
            transform: scale(1.02);
            background: linear-gradient(to right, var(--secondary-color), var(--primary-color));
        }

        .file-input-label {
            background-color: #f8f9fa;
            border: 2px dashed var(--primary-color);
            color: var(--text-color);
            cursor: pointer;
            transition: all 0.3s ease;
            display: inline-block;
            padding: 10px 20px;
        }

        .file-input-label:hover {
            background-color: rgba(52, 152, 219, 0.1);
        }
    </style>
</head>
<body>
    <div class="content">
        <div class="upload-container">
            <h1 class="upload-header">Upload Video</h1>
            <form action="upload" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="title">Title</label>
                    <input type="text" class="form-control" id="title" name="title" required aria-label="Title">
                </div>

                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea class="form-control" id="description" name="description" required aria-label="Description"></textarea>
                </div>

                <div class="form-group">
                    <label for="tags">Tags</label>
                    <input type="text" class="form-control" id="tags" name="tags" required aria-label="Tags">
                </div>

                <div class="form-group">
                    <label for="category">Category</label>
                    <select class="form-control" id="category" name="category" required aria-label="Category">
                        <option value="">Select Category</option>
                        <option value="Agriculture">Agriculture</option>
                        <option value="Horticulture">Horticulture</option>
                        <option value="Farming">Farming</option>
                    </select>
                </div>

                <div class="form-group">
                    <label for="duration">Duration (seconds)</label>
                    <input type="number" class="form-control" id="duration" name="duration" required aria-label="Duration">
                </div>

                <div class="form-group">
                    <label for="uploadedByExpertId">Expert ID</label>
                    <input type="number" class="form-control" id="uploadedByExpertId" name="uploadedByExpertId"
                           value="<%= expert != null ? expert.getId() : "" %>" readonly>
                </div>

                <div class="form-group">
                    <label for="rating">Rating</label>
                    <input type="number" step="0.1" class="form-control" id="rating" name="rating" required aria-label="Rating">
                </div>

                <div class="form-group">
                    <label for="videoFile">Video File</label>
                    <div class="file-input">
                        <label for="videoFile" class="file-input-label w-100">
                            <i class="bi bi-cloud-upload me-2"></i>Choose Video File
                        </label>
                        <input type="file" class="form-control" id="videoFile" name="videoFile" accept="video/*" required style="display:none;">
                    </div>
                </div>

                <button type="submit" class="upload-btn mt-3">Upload Video</button>
            </form>
        </div>
    </div>

    <script>
        document.querySelector('.file-input-label').addEventListener('click', function () {
            document.getElementById('videoFile').click();
        });

        document.getElementById('videoFile').addEventListener('change', function (e) {
            const fileName = e.target.files.length ? e.target.files[0].name : 'Choose Video File';
            document.querySelector('.file-input-label').textContent = fileName;
        });

        document.querySelector('form').addEventListener('submit', function (e) {
            const btn = document.querySelector('.upload-btn');
            btn.disabled = true;
            btn.textContent = 'Uploading...';
        });
    </script>
</body>
</html>
