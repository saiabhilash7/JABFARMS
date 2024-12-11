<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #007bff;
            --secondary-color: #0056b3;
            --background-color: #f8f9fa;
            --white: #ffffff;
            --text-color: #333;
            --error-color: #dc3545;
            --input-border: #ccc;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background: linear-gradient(135deg, #e9eff3 0%, #d1dae1 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            overflow-x: hidden;
        }

        /* Navbar Styles */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            background-color: var(--white);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            z-index: 1000;
            padding: 15px 5%;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-logo {
            font-size: 1.8rem;
            font-weight: 700;
            color: var(--primary-color);
            text-decoration: none;
        }

        .navbar-links {
            display: flex;
            gap: 20px;
        }

        .navbar-links a {
            text-decoration: none;
            color: var(--text-color);
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .navbar-links a:hover {
            color: var(--primary-color);
        }

        /* Form Container */
        .container {
            margin-top: 100px;
            width: 100%;
            max-width: 450px;
            padding: 40px;
            background-color: var(--white);
            border-radius: 15px;
            box-shadow: 
                0 10px 30px rgba(0, 0, 0, 0.1),
                0 5px 15px rgba(0, 0, 0, 0.05);
            animation: slide-in 0.6s ease-out;
        }

        @keyframes slide-in {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .form-title {
            text-align: center;
            margin-bottom: 20px;
            color: var(--text-color);
        }

        .form-title h3 {
            font-size: 26px;
            font-weight: 700;
            color: var(--primary-color);
        }

        .error-message {
            color: var(--error-color);
            text-align: center;
            margin-bottom: 15px;
            font-weight: 500;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--text-color);
        }

        .input-group input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid var(--input-border);
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .input-group input:focus {
            outline: none;
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.2);
        }

        .forgot-password {
            text-align: right;
            margin-bottom: 20px;
        }

        .forgot-password a {
            text-decoration: none;
            font-size: 14px;
            color: var(--primary-color);
            font-weight: 500;
            transition: color 0.3s ease;
        }

        .forgot-password a:hover {
            color: var(--secondary-color);
        }

        .button-group {
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        .btn {
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .btn-login {
            background-color: var(--primary-color);
            color: var(--white);
        }

        .btn-login:hover {
            background-color: var(--secondary-color);
        }

        .btn-reset {
            background-color: #6c757d;
            color: var(--white);
        }

        .btn-reset:hover {
            background-color: #565e64;
        }

        .social-login {
            text-align: center;
            margin-top: 20px;
        }

        .social-login a {
            text-decoration: none;
            margin: 0 10px;
            font-size: 20px;
            color: var(--text-color);
            transition: color 0.3s ease;
        }

        .social-login a:hover {
            color: var(--primary-color);
        }

        /* Footer */
        .footer {
            margin-top: auto;
            width: 100%;
            background-color: var(--background-color);
            text-align: center;
            padding: 15px;
            font-size: 14px;
            color: var(--text-color);
            box-shadow: 0 -2px 10px rgba(0, 0, 0, 0.1);
        }

        .footer a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
        }

        .footer a:hover {
            text-decoration: underline;
        }

        @media (max-width: 480px) {
            .container {
                width: 95%;
                padding: 30px 20px;
            }

            .button-group {
                flex-direction: column;
            }

            .btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar">
        <a href="/" class="navbar-logo">AdminPanel</a>
        <div class="navbar-links">
            <a href="/">Home</a>
            <a href="/about">About</a>
            <a href="/support">Support</a>
        </div>
    </nav>

    <div class="container">
        <!-- Error Message -->
        <c:if test="${not empty message}">
            <div class="error-message">
                <c:out value="${message}" />
            </div>
        </c:if>

        <!-- Form Title -->
        <div class="form-title">
            <h3>Admin Login</h3>
        </div>

        <!-- Login Form -->
        <form method="post" action="checkadminlogin">
            <div class="input-group">
                <label for="auname">Username</label>
                <input 
                    type="text" 
                    id="auname" 
                    name="auname" 
                    placeholder="Enter your username" 
                    required 
                    autocomplete="username"
                >
            </div>

            <div class="input-group">
                <label for="apwd">Password</label>
                <input 
                    type="password" 
                    id="apwd" 
                    name="apwd" 
                    placeholder="Enter your password" 
                    required 
                    autocomplete="current-password"
                >
            </div>

            <div class="forgot-password">
                <a href="/forgot-password">Forgot Password?</a>
            </div>

            <div class="button-group">
                <button type="submit" class="btn btn-login">Login</button>
                <button type="reset" class="btn btn-reset">Clear</button>
            </div>

            <div class="social-login">
                <p>Or login with</p>
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-google"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
        </form>
    </div>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 AdminPanel. All Rights Reserved. <a href="/privacy">Privacy Policy</a></p>
    </footer>
</body>
</html>
