<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Login</title>
    
    <!-- Font and Icon Libraries -->
    <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    
    <style>
        /* Color Palette */
        :root {
            --primary-green: #2B8A3E;
            --secondary-green: #40C057;
            --light-green: #63E6BE;
            --background-light: #F4FCF1;
            --text-dark: #333;
            --text-light: #FFFFFF;
            --shadow-color: rgba(0, 0, 0, 0.1);
        }

        /* Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background-color: var(--background-light);
            color: var(--text-dark);
            line-height: 1.6;
        }

        /* Navbar Styling */
        .navbar {
            background-color: var(--text-light);
            padding: 15px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 2px 4px var(--shadow-color);
            position: sticky;
            top: 0;
            z-index: 1000;
            border-bottom: 2px solid var(--light-green);
        }

        .navbar-logo {
            display: flex;
            align-items: center;
            gap: 15px;
        }

        .navbar-logo svg {
            width: 40px;
            height: 40px;
            stroke: var(--primary-green);
        }

        .navbar-logo-text {
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--primary-green);
        }

        .navbar-menu {
            list-style: none;
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .navbar-menu a {
            text-decoration: none;
            color: var(--text-dark);
            font-weight: 500;
            padding: 8px 15px;
            border-radius: 6px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .navbar-menu a:hover {
            background-color: var(--primary-green);
            color: var(--text-light);
        }

        /* Login Form Styling */
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: calc(100vh - 80px);
            padding: 20px;
        }

        .login-form {
            background-color: var(--text-light);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 6px 12px var(--shadow-color);
            width: 100%;
            max-width: 450px;
            animation: form-appear 0.5s ease;
        }

        @keyframes form-appear {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .login-form h3 {
            text-align: center;
            margin-bottom: 25px;
            font-weight: 600;
            color: var(--primary-green);
            font-size: 1.8rem;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--text-dark);
        }

        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 6px;
            transition: all 0.3s ease;
        }

        .form-control:focus {
            outline: none;
            border-color: var(--primary-green);
            box-shadow: 0 0 0 3px rgba(43, 138, 62, 0.2);
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            background-color: var(--primary-green);
            color: var(--text-light);
            border: none;
            border-radius: 6px;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: var(--secondary-green);
        }

        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 20px;
            font-weight: 500;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            .navbar {
                flex-direction: column;
                gap: 15px;
            }

            .navbar-menu {
                flex-direction: column;
                align-items: center;
            }

            .login-form {
                padding: 30px 20px;
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
            <li><a href="farmerdashboard.jsp"><i class="bx bxs-dashboard"></i>Dashboard</a></li>
            <li><a href="/ViewFarmerCrops"><i class="bx bx-leaf"></i>My Crops</a></li>
            <li><a href="AddCrop"><i class="bx bx-plus-circle"></i>Add Crops</a></li>
            <li><a href="weather-alerts.jsp"><i class="bx bx-cloud-rain"></i>Weather Alerts</a></li>
            <li><a href="/farmerlogout"><i class="bx bx-log-out"></i>Logout</a></li>
        </ul>
    </nav>

    <!-- Login Container -->
    <div class="login-container">
        <div class="login-form">
            <h3>Farmer Login</h3>
            <c:if test="${not empty sessionScope.error}">
                <p class="error-message">${sessionScope.error}</p>
            </c:if>
            <form action="/checkfarmerlogin" method="post" onsubmit="validateLoginForm(event)">
                <div class="form-group">
                    <label for="email">Email <span class="required">*</span></label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password <span class="required">*</span></label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password" required>
                </div>
                <button type="submit" class="btn-submit">Login</button>
            </form>
        </div>
    </div>

    <script>
        function validateLoginForm(event) {
            const emailField = document.getElementById("email");
            const passwordField = document.getElementById("password");

            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

            let isValid = true;

            if (!emailPattern.test(emailField.value)) {
                emailField.setCustomValidity("Please enter a valid email address.");
                isValid = false;
            } else {
                emailField.setCustomValidity("");
            }

            if (passwordField.value.trim().length < 6) {
                passwordField.setCustomValidity("Password must be at least 6 characters long.");
                isValid = false;
            } else {
                passwordField.setCustomValidity("");
            }

            if (!isValid) {
                event.preventDefault(); // Prevent form submission
            }
        }
    </script>
</body>
</html>