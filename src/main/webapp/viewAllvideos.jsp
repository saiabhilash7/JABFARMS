<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ include file="farmernavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Gallery</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Inter', sans-serif;
            background-color: #f4f6f9;
            line-height: 1.6;
            color: #333;
            padding: 20px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
            font-weight: 600;
            position: relative;
            padding-bottom: 10px;
        }

        h1::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background: linear-gradient(to right, #3498db, #2ecc71);
            border-radius: 2px;
        }

        .video-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        .video-card {
            background: white;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: 1px solid #e1e4e8;
        }

        .video-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
        }

        .video-card-content {
            padding: 25px;
        }

        .video-card h3 {
            color: #2c3e50;
            margin-bottom: 10px;
            font-weight: 600;
        }

        .video-card p {
            color: #7f8c8d;
            margin-bottom: 10px;
        }

        .video-card video {
            width: 100%;
            height: auto;
            border-bottom: 1px solid #e1e4e8;
        }

        .video-meta {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
            font-size: 0.9em;
            color: #34495e;
        }

        .video-meta span {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        @media (max-width: 768px) {
            .video-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Video Gallery</h1>
        <div class="video-grid">
            <c:forEach var="video" items="${videos}">
                <div class="video-card">
                    <video width="100%" height="auto" controls>
                        <source src="/displayVideo?id=${video.id}" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                    <div class="video-card-content">
                        <h3>${video.title}</h3>
                        <p>${video.description}</p>
                        <div class="video-meta">
                            <span><strong>Category:</strong> ${video.category}</span>
                            <span><strong>Duration:</strong> ${video.duration} mins</span>
                        </div>
                        <div class="video-meta">
                            <span><strong>Rating:</strong> ${video.rating}</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</body>
</html>