<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enhanced Navbar</title>
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
        .navbar-logo img {
            max-height: 50px;
            cursor: pointer;
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
            background-color: #007BFF;
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
            background-color: #007BFF;
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
            <a href="index.jsp">
                <img src="assets/img/logo/logo-2.png" alt="Logo">
            </a>
        </div>

        <ul class="navbar-menu">
            <li><a href="expertdashboard">Dashboard</a></li>
            <li><a href="expertviewallcrops">Crops</a></li>
            <li><a href="uploadvideo">Upload Videos</a></li>
            <li><a href="ExpertVideos">My Videos</a></li>
            <li><a href="expertprofile">My Profile</a></li>
            <li><a href="expertlogout">Logout</a></li>
        </ul>
    </nav>
</body>
</html>
