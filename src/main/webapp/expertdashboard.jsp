<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="expertnavbar.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agricultural Expert Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body { 
            font-family: 'Arial', sans-serif; 
            background: #f4f6f7; 
            margin: 0; 
        }
        .dashboard-container { 
            max-width: 1200px; 
            margin: 40px auto; 
            padding: 0 20px; 
        }
        .dashboard-grid { 
            display: grid; 
            grid-template-columns: repeat(3, 1fr); 
            gap: 30px; 
        }
        .dashboard-card { 
            background: white; 
            border-radius: 10px; 
            box-shadow: 0 4px 6px rgba(0,0,0,0.1); 
            padding: 30px; 
            transition: transform 0.3s ease;
        }
        .dashboard-card:hover {
            transform: translateY(-10px);
        }
        .card-title {
            color: #2c3e50; 
            font-size: 24px; 
            margin-bottom: 20px; 
            display: flex; 
            align-items: center;
        }
        .card-icon {
            margin-right: 15px; 
            height: 32px; 
            width: 32px;
        }
        .card-content {
            color: #333; 
            font-size: 16px; 
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <h1 class="text-center mb-5">Agricultural Expert Dashboard</h1>
        <div class="dashboard-grid">
            <div class="dashboard-card">
                <h2 class="card-title">
                    <svg class="card-icon" viewBox="0 0 24 24" fill="none" stroke="#2ecc71" stroke-width="2">
                        <circle cx="12" cy="12" r="10"/>
                        <line x1="12" y1="8" x2="12" y2="16"/>
                        <line x1="8" y1="12" x2="16" y2="12"/>
                    </svg>
                    Farming Trends
                </h2>
                <div class="card-content">
                    <p>Analyze the latest farming data and insights.</p>
                    <ul class="list-unstyled">
                        <li>• View charts and graphs</li>
                        <li>• Track crop yields</li>
                        <li>• Monitor weather patterns</li>
                    </ul>
                </div>
            </div>
            
            <div class="dashboard-card">
                <h2 class="card-title">
                    <svg class="card-icon" viewBox="0 0 24 24" fill="none" stroke="#3498db" stroke-width="2">
                        <path d="M12 22c5.523 0 10-4.477 10-10S17.523 2 12 2 2 6.477 2 12s4.477 10 10 10z"/>
                        <path d="M9 11l3 3 8-8"/>
                    </svg>
                    Educational Content
                </h2>
                <div class="card-content">
                    <p>Manage and share resources for farmers.</p>
                    <ul class="list-unstyled">
                        <li>• Upload educational materials</li>
                        <li>• Schedule webinars</li>
                        <li>• Distribute guides</li>
                    </ul>
                </div>
            </div>
            
            <div class="dashboard-card">
                <h2 class="card-title">
                    <svg class="card-icon" viewBox="0 0 24 24" fill="none" stroke="#e67e22" stroke-width="2">
                        <path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/>
                    </svg>
                    Farmer Discussions
                </h2>
                <div class="card-content">
                    <p>Facilitate discussions and Q&A.</p>
                    <ul class="list-unstyled">
                        <li>• Host online forums</li>
                        <li>• Moderate chat sessions</li>
                        <li>• Answer questions</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
</html>