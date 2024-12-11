<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="expertnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Videos</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
       
      * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
    font-family: 'Roboto', Arial, sans-serif;
}

body {
    background-color: #0f0f0f;
    color: #ffffff;
    line-height: 1.6;
}

.container {
    max-width: 1920px; /* Increased max-width for wider layout */
    margin: 0 auto;
    padding: 40px 20px;
}

.page-header {
    display: flex;
    align-items: center;
    margin-bottom: 32px;
    padding: 0 16px;
}

.page-header i {
    margin-right: 16px;
    color: #ffffff;
    font-size: 28px;
}

.page-header h1 {
    font-size: 2.2rem;
    font-weight: 600;
    color: #ffffff;
}

.video-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(320px, 1fr)); /* Increased minimum width */
    gap: 24px; /* Increased gap between videos */
    padding: 0 16px;
}

.video-item {
    background-color: #1f1f1f;
    border-radius: 16px;
    overflow: hidden;
    transition: 
        transform 0.3s ease,
        box-shadow 0.3s ease,
        background-color 0.3s ease;
    cursor: pointer;
    position: relative;
    box-shadow: 0 6px 12px rgba(0,0,0,0.15);
}

.video-thumbnail {
    position: relative;
    width: 100%;
    padding-top: 56.25%; /* 16:9 aspect ratio */
    background-color: #000;
    overflow: hidden;
}

.video-player {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.video-duration {
    position: absolute;
    bottom: 10px;
    right: 10px;
    background-color: rgba(0,0,0,0.8);
    color: #fff;
    padding: 4px 8px;
    border-radius: 6px;
    font-size: 0.9rem;
}

.video-details {
    padding: 16px;
}

.video-title {
    font-size: 1.1rem;
    font-weight: 500;
    color: #f1f1f1;
    margin-bottom: 10px;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    overflow: hidden;
    text-overflow: ellipsis;
}

.video-metadata {
    display: flex;
    align-items: center;
    color: #aaaaaa;
    font-size: 0.9rem;
}

.video-metadata span {
    margin-right: 8px;
}

.no-videos {
    text-align: center;
    padding: 80px 20px;
    background-color: #1f1f1f;
    border-radius: 16px;
}

.no-videos p {
    color: #aaaaaa;
    font-size: 1.2rem;
}

@media screen and (max-width: 1200px) {
    .video-grid {
        grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
    }
}

@media screen and (max-width: 768px) {
    .video-grid {
        grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
    }
    
    .page-header h1 {
        font-size: 1.8rem;
    }
}
    </style>
</head>
<body>
    <div class="container">
        <div class="page-header">
            <i class="fas fa-video"></i>
            <h1>My Videos</h1>
        </div>
        <c:choose>
            <c:when test="${not empty videos}">
                <div class="video-grid">
                    <c:forEach var="video" items="${videos}">
                        <div class="video-item">
                            <div class="video-thumbnail">
                                <video class="video-player" controls>
                                    <source src="/displayVideos?uploadedByExpertId=${video.uploadedByExpertId}" type="video/mp4">
                                    Your browser does not support video playback.
                                </video>
                                <div class="video-duration">${video.duration}</div>
                            </div>
                            <div class="video-details">
                                <div class="video-title">${video.title}</div>
                                <div class="video-metadata">
                                    <span>${video.category}</span>
                                    <span>•</span>
                                    <span>${video.rating} <i class="fas fa-star"></i></span>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </c:when>
            <c:otherwise>
                <div class="no-videos">
                    <p>${message}</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>