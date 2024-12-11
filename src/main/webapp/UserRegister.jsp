<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <!-- CSS Links -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('assets/images/background.jpg');
            background-size: cover;
            background-position: center;
            margin: 0;
            padding: 0;
        }

        .registration-form {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 40px;
            margin: 80px auto;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            max-width: 600px;
            text-align: center;
        }

        .registration-form h3 {
            margin-bottom: 30px;
            font-weight: bold;
            color: #333;
        }

        .form-group {
            position: relative;
            margin-bottom: 20px;
        }

        .form-group input {
            padding-left: 40px;
            font-size: 16px;
            height: 50px;
            border-radius: 5px;
            border: 1px solid #ddd;
            width: 100%;
            margin-bottom: 20px;
        }

        .form-group i {
            position: absolute;
            top: 15px;
            left: 15px;
            color: #555;
        }

        .btn-submit {
            width: 100%;
            padding: 15px;
            font-size: 18px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-submit:hover {
            background-color: #0056b3;
        }

        .btn-login {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 10px;
            transition: background-color 0.3s ease;
        }

        .btn-login:hover {
            background-color: #218838;
        }

        .required {
            color: red;
        }
    </style>
    <script>
        function validateForm() {
            const firstName = document.getElementById('firstName').value.trim();
            const lastName = document.getElementById('lastName').value.trim();
            const email = document.getElementById('email').value.trim();
            const phone = document.getElementById('phone').value.trim();
            const password = document.getElementById('password').value.trim();

            // Regular expressions
            const nameRegex = /^[a-zA-Z\s]+$/;
            const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            const phoneRegex = /^\d{10}$/;

            if (!nameRegex.test(firstName)) {
                alert("Please enter a valid first name (only alphabets).");
                return false;
            }
            if (!nameRegex.test(lastName)) {
                alert("Please enter a valid last name (only alphabets).");
                return false;
            }
            if (!emailRegex.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }
            if (phone && !phoneRegex.test(phone)) {
                alert("Please enter a valid 10-digit phone number.");
                return false;
            }
            if (password.length < 8) {
                alert("Password must be at least 8 characters long.");
                return false;
            }
            return true;
        }
    </script>
</head>

<body>
    <%@ include file="mainnavbar.jsp" %>
    <!-- User Registration Form -->
    <div class="registration-form">
        <h3>User Registration</h3>
        <form action="<%= request.getContextPath() %>/insertuser" method="post" onsubmit="return validateForm();">
            <div class="form-group">
                <i class="fas fa-user"></i>
                <input type="text" id="firstName" name="firstName" class="form-control" placeholder="Enter your first name" required>
            </div>
            <div class="form-group">
                <i class="fas fa-user"></i>
                <input type="text" id="lastName" name="lastName" class="form-control" placeholder="Enter your last name" required>
            </div>
            <div class="form-group">
                <i class="fas fa-envelope"></i>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email address" required>
            </div>
            <div class="form-group">
                <i class="fas fa-phone"></i>
                <input type="text" id="phone" name="phone" class="form-control" placeholder="Enter your phone number">
            </div>
            <div class="form-group">
                <i class="fas fa-globe"></i>
                <input type="text" id="country" name="country" class="form-control" placeholder="Enter your country">
            </div>
            <div class="form-group">
                <i class="fas fa-map-marker-alt"></i>
                <input type="text" id="state" name="state" class="form-control" placeholder="Enter your state">
            </div>
            <div class="form-group">
                <i class="fas fa-home"></i>
                <input type="text" id="address" name="address" class="form-control" placeholder="Enter your address">
            </div>
            <div class="form-group">
                <i class="fas fa-lock"></i>
                <input type="password" id="password" name="password" class="form-control" placeholder="Create a password" required>
            </div>
            <button type="submit" class="btn-submit">Register</button>
            <a href="UserLogin" class="btn-login">Login</a>
        </form>
    </div>
</body>

</html>
