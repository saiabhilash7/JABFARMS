<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="mainnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <!-- CSS -->
    <style>
        :root {
            --primary-color: #4a90e2;
            --error-color: #dc3545;
            --background-color: #f0f4f8;
            --text-color: #333;
            --white: #ffffff;
            --border-radius: 12px;
            --navbar-height: 60px;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            height: 100%;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: var(--background-color);
            display: flex;
            flex-direction: column;
        }

        /* Navbar Specific Styles */
        .navbar {
            background-color: var(--white);
            height: var(--navbar-height);
            display: flex;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 1000;
        }

        .main-content {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-grow: 1;
            padding-top: var(--navbar-height);
            min-height: calc(100vh - var(--navbar-height));
        }

        .login-container {
            background-color: var(--white);
            border-radius: var(--border-radius);
            padding: 40px;
            width: 100%;
            max-width: 450px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.1);
        }

        .login-header h3 {
            text-align: center;
            color: var(--primary-color);
            margin-bottom: 10px;
        }

        .login-header p {
            text-align: center;
            color: #6c757d;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: var(--text-color);
            font-weight: 500;
        }

        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ced4da;
            border-radius: var(--border-radius);
            font-size: 0.9rem;
        }

        .form-control:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 5px rgba(74, 144, 226, 0.5);
            outline: none;
        }

        .error-message {
            color: var(--error-color);
            font-size: 0.8rem;
            margin-top: 5px;
        }

        .btn-login {
            width: 100%;
            padding: 12px;
            background-color: var(--primary-color);
            color: var(--white);
            border: none;
            border-radius: var(--border-radius);
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .btn-login:hover {
            background-color: #3a7bd5;
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .form-footer a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }

        .register-link {
            margin-top: 15px;
            font-size: 0.9rem;
            color: #6c757d;
        }
    </style>

    <!-- JavaScript -->
    <script>
        function validateForm(event) {
            const email = document.getElementById('email').value.trim();
            const password = document.getElementById('password').value.trim();
            let isValid = true;

            // Email Validation
            const emailError = document.getElementById('emailError');
            const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            if (!emailPattern.test(email)) {
                emailError.textContent = "Please enter a valid email address.";
                isValid = false;
            } else {
                emailError.textContent = "";
            }

            // Password Validation
            const passwordError = document.getElementById('passwordError');
            if (password.length < 6) {
                passwordError.textContent = "Password must be at least 6 characters long.";
                isValid = false;
            } else {
                passwordError.textContent = "";
            }

            // Prevent form submission if invalid
            if (!isValid) {
                event.preventDefault();
            }
        }
    </script>
</head>
<body>
    <!-- The navbar is already included via the <%@include file="mainnavbar.jsp" %> directive -->
    
    <div class="main-content">
        <div class="login-container">
            <div class="login-header">
                <h3>Login</h3>
                <p>Enter your credentials to access your account</p>
            </div>
            <form action="/checkuserlogin" method="post" onsubmit="validateForm(event)">
                <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email">
                    <small id="emailError" class="error-message"></small>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Enter your password">
                    <small id="passwordError" class="error-message"></small>
                </div>
                <button type="submit" class="btn-login">Login</button>
                <div class="form-footer">
                    <a href="/forgot-password">Forgot Password?</a>
                </div>
            </form>
            <div class="form-footer register-link">
                <p>Don't have an account? <a href="UserRegister">Register Here</a></p>
            </div>
        </div>
    </div>
</body>
</html>