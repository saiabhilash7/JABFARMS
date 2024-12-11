<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Navbar</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
        }

        /* Navbar Styling */
        .navbar {
            background-color: #fff;
            padding: 15px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            border-bottom: 2px solid #f0f0f0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        /* Logo Styling */
        .navbar-logo {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .navbar-logo svg {
            width: 40px;
            height: 40px;
        }

        .navbar-logo-text {
            font-size: 1.5rem;
            font-weight: 600;
            color: #2B8A3E;
        }

        /* Menu List Styling */
        .navbar-menu {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        .navbar-menu li {
            position: relative;
        }

        .navbar-menu a {
            text-decoration: none;
            color: #333;
            font-weight: 500;
            padding: 8px 15px;
            border-radius: 4px;
            transition: all 0.3s ease;
        }

        .navbar-menu a:hover {
            background-color: #2B8A3E;
            color: #fff;
        }

        /* Dropdown Menu Styling */
        .navbar-menu .dropdown-menu {
            position: absolute;
            top: calc(100% + 5px);
            left: 0;
            background-color: #fff;
            list-style: none;
            padding: 10px 0;
            margin: 0;
            display: none;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            border-radius: 4px;
            min-width: 150px;
        }

        .navbar-menu .dropdown-menu li {
            padding: 5px 20px;
        }

        .navbar-menu .dropdown-menu a {
            color: #333;
            text-decoration: none;
            font-weight: 400;
            padding: 5px 0;
            display: block;
            transition: all 0.3s ease;
        }

        .navbar-menu .dropdown-menu a:hover {
            background-color: #2B8A3E;
            color: #fff;
        }

        .navbar-menu .dropdown:hover .dropdown-menu {
            display: block;
        }

        /* Mobile Friendly */
        @media screen and (max-width: 768px) {
            .navbar-menu {
                flex-direction: column;
                gap: 10px;
            }

            .navbar-menu .dropdown-menu {
                position: relative;
                top: 0;
                box-shadow: none;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <div class="navbar-logo">
            <svg viewBox="0 0 24 24" fill="none" stroke="#2B8A3E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M12 2a10 10 0 0 0-7.743 16.33l-1.64 1.853A12 12 0 0 1 0 12C0 5.373 5.373 0 12 0s12 5.373 12 12c0 3.18-1.23 6.177-3.463 8.433l-1.619-1.827A10 10 0 0 0 12 2z"/>
                <path d="M12 16c-2.209 0-4-1.791-4-4s1.791-4 4-4 4 1.791 4 4-1.791 4-4 4z"/>
                <path d="M12 12v4"/>
                <path d="M12 8v4"/>
                <path d="M8 12h4"/>
                <path d="M12 12h4"/>
            </svg>
            <span class="navbar-logo-text">FarmConnect</span>
        </div>

        <ul class="navbar-menu">
            <li><a href="farmerdashboard.jsp">Dashboard</a></li>
            <li><a href="/ViewFarmerCrops">My Crops</a></li>
            <li class="dropdown">
                <a href="javascript:void(0)">Services</a>
                <ul class="dropdown-menu">
                    <li><a href="AddCrop">AddCrops</a></li>
                    <li><a href="FarmersPurchasedCrops">Purchased Crops</a></li>
                    <li><a href="weather-alerts.jsp">Weather Alerts</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="/viewAllvideos">Farming Videos</a>
                
            </li>
            <li class="dropdown">
                <a href="javascript:void(0)">Account</a>
                <ul class="dropdown-menu">
                    <li><a href="farmerprofile">Profile</a></li>
                    <li><a href="settings.jsp">Settings</a></li>
                    <li><a href="/farmerlogout">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</body>
</html>