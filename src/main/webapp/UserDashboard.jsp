<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AgriTech Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Reset and base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, sans-serif;
            background-color: #f5f7fb;
            color: #2d3748;
            line-height: 1.6;
        }

        /* Navigation Styles */
        .navbar {
            background-color: #ffffff;
            padding: 1rem 2rem;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .nav-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1400px;
            margin: 0 auto;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: 700;
            color: #2b6cb0;
            text-decoration: none;
        }

        .nav-links {
            display: flex;
            gap: 2rem;
            align-items: center;
        }

        .nav-links a {
            color: #4a5568;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.2s ease;
        }

        .nav-links a:hover {
            color: #2b6cb0;
        }

        /* Dashboard Container */
        .dashboard-container {
            min-height: 100vh;
            padding-bottom: 2rem;
        }

        /* Dashboard Header */
        .dashboard-header {
            background: linear-gradient(135deg, #ffffff 0%, #f0f5ff 100%);
            padding: 2rem 1.5rem;
            margin-bottom: 2rem;
            border-bottom: 1px solid rgba(0, 0, 0, 0.05);
        }

        .header-content {
            max-width: 1200px;
            margin: 0 auto;
        }

        .header-content h1 {
            font-size: 2rem;
            color: #1a365d;
            margin-bottom: 0.5rem;
            font-weight: 700;
        }

        .header-content p {
            color: #4a5568;
            font-size: 1.1rem;
        }

        /* Main Content */
        .main-content {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 1.5rem;
        }

        /* Stats Grid */
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .stat-card {
            background: #ffffff;
            border-radius: 12px;
            padding: 1.5rem;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            border: 1px solid rgba(0, 0, 0, 0.05);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .stat-card:hover {
            transform: translateY(-2px);
            box-shadow: 0 8px 12px rgba(0, 0, 0, 0.1);
        }

        .stat-card h3 {
            font-size: 2.25rem;
            font-weight: 700;
            color: #2b6cb0;
            margin-bottom: 0.5rem;
        }

        .stat-card p {
            color: #4a5568;
            font-size: 1rem;
            font-weight: 500;
        }

        /* Weather Widget */
        .weather-widget {
            background: #ffffff;
            border-radius: 12px;
            padding: 2rem;
            margin-bottom: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .weather-widget h3 {
            color: #2c5282;
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
            font-weight: 600;
        }

        .weather-details {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
        }

        .weather-item {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .weather-icon {
            font-size: 1.5rem;
            color: #2b6cb0;
        }

        /* Crop Recommendations */
        .crop-recommendations {
            background: #ffffff;
            border-radius: 12px;
            padding: 2rem;
            margin-bottom: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .crop-recommendations h3 {
            color: #2c5282;
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
            font-weight: 600;
        }

        .crop-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
        }

        .crop-item {
            padding: 1.5rem;
            background: #f8fafc;
            border-radius: 8px;
            border: 1px solid #e2e8f0;
        }

        .crop-item h4 {
            color: #2b6cb0;
            margin-bottom: 0.5rem;
            font-weight: 600;
        }

        /* Recent Activities */
        .recent-activities {
            background: #ffffff;
            border-radius: 12px;
            padding: 2rem;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }

        .recent-activities h3 {
            color: #2c5282;
            font-size: 1.5rem;
            margin-bottom: 1.5rem;
            font-weight: 600;
        }

        .activities-list {
            list-style: none;
        }

        .activities-list li {
            padding: 1rem;
            border-bottom: 1px solid #e2e8f0;
            color: #4a5568;
            display: flex;
            align-items: center;
        }

        .activities-list li:last-child {
            border-bottom: none;
        }

        .activities-list li:before {
            content: "•";
            color: #2b6cb0;
            font-weight: bold;
            margin-right: 1rem;
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .stat-card,
        .weather-widget,
        .crop-recommendations,
        .recent-activities {
            animation: fadeIn 0.5s ease-out forwards;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .nav-content {
                flex-direction: column;
                gap: 1rem;
            }

            .stats-grid {
                grid-template-columns: 1fr;
            }

            .dashboard-header {
                padding: 1.5rem 1rem;
            }

            .header-content h1 {
                font-size: 1.75rem;
            }

            .main-content {
                padding: 0 1rem;
            }

            .weather-details {
                grid-template-columns: 1fr;
            }

            .crop-list {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <%@ include file="UserNavbar.jsp"  %>

        <!-- Main Content -->
        <main>
            <div class="dashboard-header">
                <div class="header-content">
                    <h1>Welcome back, ${user.firstName} ${user.lastName}!</h1>
                    <p>Here's a quick overview of your farm's performance today.</p>
                </div>
            </div>

            <div class="main-content">
                <!-- Weather Widget -->
                <div class="weather-widget">
                    <h3>Current Weather</h3>
                    <div class="weather-details">
                        <div class="weather-item">
                            <i class="fas fa-map-marker-alt weather-icon"></i>
                            <div>
                                <p>Location</p>
                                <strong>Vijaywada</strong>
                            </div>
                        </div>
                        <div class="weather-item">
                            <i class="fas fa-temperature-high weather-icon"></i>
                            <div>
                                <p>Temperature</p>
                                <strong>28°C</strong>
                            </div>
                        </div>
                        <div class="weather-item">
                            <i class="fas fa-tint weather-icon"></i>
                            <div>
                                <p>Humidity</p>
                                <strong>60%</strong>
                            </div>
                        </div>
                        <div class="weather-item">
                            <i class="fas fa-wind weather-icon"></i>
                            <div>
                                <p>Wind Speed</p>
                                <strong>10 km/h</strong>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Farm Stats -->
                <div class="stats-grid">
                    <div class="stat-card">
                        <h3>50 Ha</h3>
                        <p>Active Farmland</p>
                    </div>
                    <div class="stat-card">
                        <h3>85%</h3>
                        <p>Soil Health</p>
                    </div>
                    <div class="stat-card">
                        <h3>5000 L</h3>
                        <p>Water Usage</p>
                    </div>
                    <div class="stat-card">
                        <h3>250 kg</h3>
                        <p>Crop Yield (This Month)</p>
                    </div>
                </div>

                <!-- Crop Recommendations -->
                <div class="crop-recommendations">
                    <h3>Recommended Crops for This Season</h3>
                    <div class="crop-list">
                        <div class="crop-item">
                            <h4>Wheat</h4>
                            <p>Ideal for current temperature and soil condition.</p>
                        </div>
                        <div class="crop-item">
                            <h4>Maize</h4>
                            <p>Suitable for high yield in this season.</p>
                        </div>
                        <div class="crop-item">
                            <h4>Rice</h4>
                            <p>Recommended for water-abundant areas.</p>
                        </div>
                    </div>
                </div>

                <!-- Recent Activities -->
                <div class="recent-activities">
                    <h3>Recent Activities</h3>
                    <ul class="activities-list">
                        <li>Checked soil health for Field A on ${currentDate}</li>
                        <li>Applied fertilizer to Crop B on ${currentDate}</li>
                        <li>Monitored pest control measures for Field C</li>
                    </ul>
                </div>
            </div>
        </main>
    </div>
</body>
</html>