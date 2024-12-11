<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Dashboard</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #f0f2f5;
        }

        .dashboard-container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
        }

        .welcome-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .welcome-text h1 {
            color: #333;
            font-size: 24px;
        }

        .welcome-text p {
            color: #666;
        }

        .notification-icons {
            display: flex;
            gap: 15px;
        }

        .icon-button {
            background: white;
            border: none;
            padding: 10px;
            border-radius: 50%;
            cursor: pointer;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .weather-widget {
            background: white;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            margin-bottom: 20px;
        }

        .stat-card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .stat-card-header {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 10px;
        }

        .stat-card-value {
            font-size: 24px;
            font-weight: 600;
            color: #333;
        }

        .trend-up {
            color: #22c55e;
            font-size: 14px;
        }

        .main-grid {
            display: grid;
            grid-template-columns: 2fr 1fr;
            gap: 20px;
            margin-bottom: 20px;
        }

        .card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .card-title {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 18px;
            font-weight: 600;
            margin-bottom: 20px;
        }

        .event-item, .activity-item {
            padding: 15px;
            background: #f8f9fa;
            border-radius: 8px;
            margin-bottom: 10px;
        }

        .event-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .event-tag {
            background: #e0f2f1;
            color: #009688;
            padding: 5px 10px;
            border-radius: 15px;
            font-size: 12px;
        }

        .resources-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 20px;
        }

        .resource-card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            cursor: pointer;
            transition: transform 0.2s;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .resource-card:hover {
            transform: translateY(-5px);
        }

        .resource-icon {
            background: #e0f2f1;
            color: #009688;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 10px;
        }
    </style>
</head>
<body>
    <%@ include file="farmernavbar.jsp" %>
    
    <div class="dashboard-container">
        <!-- Welcome Section -->
        <div class="welcome-section">
            <div class="welcome-text">
                <h1>Welcome back, ${farmer.firstName},${farmer.lastName}!</h1>
                <p>Here's what's happening with your farm today</p>
            </div>
            <div class="notification-icons">
                <button class="icon-button"><i class="fas fa-bell"></i></button>
                <button class="icon-button"><i class="fas fa-envelope"></i></button>
            </div>
        </div>

        <!-- Weather Widget -->
        <div class="weather-widget">
            <div class="weather-info">
                <i class="fas fa-cloud fa-2x"></i>
                <h3>Today's Weather</h3>
                <p>Partly Cloudy</p>
            </div>
            <div class="weather-details">
                <h2>24°C</h2>
                <p><i class="fas fa-tint"></i> 65% Humidity</p>
            </div>
        </div>

        <!-- Stats Grid -->
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-card-header">
                    <i class="fas fa-chart-line"></i>
                    <span>Monthly Revenue</span>
                </div>
                <div class="stat-card-value">₹45,000</div>
                <span class="trend-up">+12% ↑</span>
            </div>
            <div class="stat-card">
                <div class="stat-card-header">
                    <i class="fas fa-leaf"></i>
                    <span>Crop Yield</span>
                </div>
                <div class="stat-card-value">2,450 kg</div>
                <span class="trend-up">+8% ↑</span>
            </div>
            <div class="stat-card">
                <div class="stat-card-header">
                    <i class="fas fa-users"></i>
                    <span>Active Connections</span>
                </div>
                <div class="stat-card-value">24</div>
                <span class="trend-up">+15% ↑</span>
            </div>
        </div>

        <!-- Main Grid -->
        <div class="main-grid">
            <!-- Upcoming Events -->
            <div class="card">
                <div class="card-title">
                    <i class="fas fa-calendar"></i>
                    Upcoming Events
                </div>
                <div class="events-list">
                    <div class="event-item">
                        <div>
                            <h4>Organic Farming Workshop</h4>
                            <p>Tomorrow, 10:00 AM</p>
                        </div>
                        <span class="event-tag">Workshop</span>
                    </div>
                    <div class="event-item">
                        <div>
                            <h4>Local Farmers Market</h4>
                            <p>Saturday, 8:00 AM</p>
                        </div>
                        <span class="event-tag">Market</span>
                    </div>
                    <div class="event-item">
                        <div>
                            <h4>Agricultural Tech Seminar</h4>
                            <p>Next Week</p>
                        </div>
                        <span class="event-tag">Seminar</span>
                    </div>
                </div>
            </div>

            <!-- Recent Activity -->
            <div class="card">
                <div class="card-title">
                    <i class="fas fa-clock"></i>
                    Recent Activity
                </div>
                <div class="activity-list">
                    <div class="activity-item">
                        <p><i class="fas fa-user"></i> Connected with Expert John</p>
                        <small>2h ago</small>
                    </div>
                    <div class="activity-item">
                        <p><i class="fas fa-book"></i> Completed Farming Course</p>
                        <small>1d ago</small>
                    </div>
                    <div class="activity-item">
                        <p><i class="fas fa-shopping-cart"></i> Listed 500kg produce</p>
                        <small>2d ago</small>
                    </div>
                </div>
            </div>
        </div>

        <!-- Resources Grid -->
        <div class="resources-grid">
            <div class="resource-card">
                <div class="resource-icon">
                    <i class="fas fa-book"></i>
                </div>
                <h3>Learning Resources</h3>
                <p>12 New Courses</p>
            </div>
            <div class="resource-card">
                <div class="resource-icon">
                    <i class="fas fa-users"></i>
                </div>
                <h3>Expert Connect</h3>
                <p>5 Online Experts</p>
            </div>
            <div class="resource-card">
                <div class="resource-icon">
                    <i class="fas fa-shopping-cart"></i>
                </div>
                <h3>Marketplace</h3>
                <p>3 New Orders</p>
            </div>
            <div class="resource-card">
                <div class="resource-icon">
                    <i class="fas fa-chart-bar"></i>
                </div>
                <h3>Analytics</h3>
                <p>View Reports</p>
            </div>
        </div>
    </div>

    <script>
        // Add any JavaScript functionality here
        document.addEventListener('DOMContentLoaded', function() {
            // Example: Fetch weather data
            // fetchWeatherData();

            // Example: Update notifications
            // updateNotifications();
        });
    </script>
</body>
</html>