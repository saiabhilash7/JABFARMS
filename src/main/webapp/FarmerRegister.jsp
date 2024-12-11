<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmer Registration</title>
    <!-- CSS Links -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"> <!-- Material Icons -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        .registration-form {
            background-color: #fff;
            padding: 40px;
            margin: 50px auto;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            max-width: 600px;
            border: 2px solid #eee;
            background: #fafafa url('https://www.transparenttextures.com/patterns/45-degree-fabric-dark.png') repeat;
        }

        .registration-form h3 {
            text-align: center;
            margin-bottom: 30px;
            font-weight: 700;
            color: #333;
        }

        .form-group label {
            font-weight: 500;
            margin-bottom: 8px;
            color: #555;
            display: flex;
            align-items: center;
        }

        .form-group label .material-icons {
            margin-right: 10px;
            color: #007bff;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ccc;
            padding: 12px;
            width: 100%;
            margin-top: 5px;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
        }

        .error-message {
            color: #dc3545;
            font-size: 0.85rem;
            margin-top: 5px;
        }

        .form-submit {
            text-align: center;
            margin-top: 20px;
        }

        .btn-submit, .btn-login {
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            color: white;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .btn-submit {
            background-color: #28a745;
        }

        .btn-submit:hover {
            background-color: #218838;
        }

        .btn-login {
            background-color: #007bff;
            margin-top: 15px;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }

        .required {
            color: #dc3545;
        }

        /* Icon styling */
        .form-group .material-icons {
            font-size: 18px;
        }

        /* Add media queries for responsiveness */
        @media (max-width: 768px) {
            .registration-form {
                padding: 25px;
                margin: 20px;
            }
        }

    </style>

    <!-- JavaScript -->
    <script>
        function validateForm(event) {
            let isValid = true;

            // Clear all previous error messages
            const errorMessages = document.querySelectorAll('.error-message');
            errorMessages.forEach((msg) => (msg.textContent = ''));

            // Validate First Name
            const firstName = document.getElementById('firstName').value.trim();
            if (firstName === '') {
                document.getElementById('firstNameError').textContent = 'First Name is required.';
                isValid = false;
            }

            // Validate Last Name
            const lastName = document.getElementById('lastName').value.trim();
            if (lastName === '') {
                document.getElementById('lastNameError').textContent = 'Last Name is required.';
                isValid = false;
            }

            // Validate Email
            const email = document.getElementById('email').value.trim();
            const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            if (!emailPattern.test(email)) {
                document.getElementById('emailError').textContent = 'Invalid email address.';
                isValid = false;
            }

            // Validate Phone Number
            const phone = document.getElementById('phone').value.trim();
            const phonePattern = /^[0-9]{10}$/;
            if (!phonePattern.test(phone)) {
                document.getElementById('phoneError').textContent = 'Enter a valid 10-digit phone number.';
                isValid = false;
            }

            // Validate State
            const state = document.getElementById('state').value.trim();
            if (state === '') {
                document.getElementById('stateError').textContent = 'State is required.';
                isValid = false;
            }
            // Validate State
            const state = document.getElementById('country').value.trim();
            if (state === '') {
                document.getElementById('countryError').textContent = 'Country is required.';
                isValid = false;
            }

            // Validate Address
            const address = document.getElementById('address').value.trim();
            if (address === '') {
                document.getElementById('addressError').textContent = 'Address is required.';
                isValid = false;
            }

            // Validate Password
            const password = document.getElementById('password').value.trim();
            if (password.length < 6) {
                document.getElementById('passwordError').textContent = 'Password must be at least 6 characters.';
                isValid = false;
            }

            // Prevent form submission if validation fails
            if (!isValid) {
                event.preventDefault();
            }
        }
    </script>
</head>

<body>

<%@ include file="mainnavbar.jsp" %>
    <!-- Farmer Registration Form -->
    <div class="registration-form">
        <h3>Farmer Registration</h3>
        <form action="/insertfarmer" method="post" onsubmit="validateForm(event)">
            <div class="form-group">
                <label for="firstName"><i class="material-icons">person</i> First Name <span class="required">*</span></label>
                <input type="text" id="firstName" name="firstName" class="form-control" placeholder="Enter your first name">
                <small id="firstNameError" class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="lastName"><i class="material-icons">person_outline</i> Last Name <span class="required">*</span></label>
                <input type="text" id="lastName" name="lastName" class="form-control" placeholder="Enter your last name">
                <small id="lastNameError" class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="email"><i class="material-icons">email</i> Email Address <span class="required">*</span></label>
                <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email address">
                <small id="emailError" class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="phone"><i class="material-icons">phone</i> Phone Number <span class="required">*</span></label>
                <input type="text" id="phone" name="phone" class="form-control" placeholder="Enter your phone number">
                <small id="phoneError" class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="state"><i class="material-icons">location_city</i> State <span class="required">*</span></label>
                <input type="text" id="state" name="state" class="form-control" placeholder="Enter your state">
                <small id="stateError" class="error-message"></small>
            </div>
            
              <div class="form-group">
                <label for="country">Country <span class="required">*</span></label>
                <input type="text" id="country" name="country" class="form-control" placeholder="Enter your Country">
                <small id= "countryError" class="error-message"></small>
            </div>
            
            <div class="form-group">
                <label for="address"><i class="material-icons">home</i> Address <span class="required">*</span></label>
                <input type="text" id="address" name="address" class="form-control" placeholder="Enter your address">
                <small id="addressError" class="error-message"></small>
            </div>
            <div class="form-group">
                <label for="password"><i class="material-icons">lock</i> Password <span class="required">*</span></label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Create a password">
                <small id="passwordError" class="error-message"></small>
            </div>
            <div class="form-submit">
                <button type="submit" class="btn-submit">Register</button>
                <a href="/farmerlogin" class="btn-login">Login</a>
            </div>
        </form>
    </div>
</body>

</html>
