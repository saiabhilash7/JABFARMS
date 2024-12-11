<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expert Registration</title>
    <!-- Font Awesome for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f4f8fb;
            margin: 0;
            padding: 0;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #fff;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 10px 0;
        }

        .navbar-brand {
            font-weight: 600;
            color: #007bff;
            font-size: 1.6rem;
        }

        .navbar-nav .nav-link {
            color: #333;
            margin: 0 15px;
            font-weight: 500;
            transition: color 0.3s;
        }

        .navbar-nav .nav-link:hover {
            color: #007bff;
        }

        .registration-container {
            margin-top: 30px;
        }

        .registration-form {
            background-color: #fff;
            padding: 30px;
            margin: 0 auto;
            box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            max-width: 600px;
        }

        .registration-form h3 {
            text-align: center;
            margin-bottom: 20px;
            font-weight: 600;
            color: #333;
        }

        .form-group label {
            font-weight: 500;
            margin-bottom: 5px;
            display: block;
            color: #333;
        }

        .form-control {
            border-radius: 5px;
            border: 1px solid #ccc;
            padding: 10px;
            width: 100%;
            transition: border-color 0.3s;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.25);
        }

        .form-submit {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .btn-submit,
        .btn-login {
            padding: 12px 25px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 600;
            display: inline-block;
            text-align: center;
            text-decoration: none;
        }

        .btn-submit {
            background-color: #28a745;
            color: white;
            width: 48%;
        }

        .btn-submit:hover {
            background-color: #218838;
        }

        .btn-login {
            background-color: #007bff;
            color: white;
            width: 48%;
            text-align: center;
        }

        .btn-login:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            font-size: 0.9em;
        }

        .required {
            color: red;
        }

        /* Icons */
        .form-group .icon {
            position: absolute;
            right: 15px;
            top: 35px;
            color: #007bff;
        }

        .form-group {
            position: relative;
            margin-bottom: 20px;
        }
    </style>
    <script>
        function validateForm() {
            let isValid = true;

            // Validate Phone Number
            const phoneNumber = document.getElementById("phoneNumber").value;
            const phoneError = document.getElementById("phoneError");
            if (!/^\d{10}$/.test(phoneNumber)) {
                phoneError.textContent = "Phone number must be 10 digits.";
                isValid = false;
            } else {
                phoneError.textContent = "";
            }

            // Validate Password
            const password = document.getElementById("password").value;
            const passwordError = document.getElementById("passwordError");
            if (password.length < 8) {
                passwordError.textContent = "Password must be at least 8 characters.";
                isValid = false;
            } else {
                passwordError.textContent = "";
            }

            return isValid;
        }
    </script>
    <!-- Include Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">Expert Platform</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/expertlogin">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/registration">Register</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container registration-container">
        <div class="registration-form">
            <h3>Expert Registration</h3>
            <form action="/insertexpert" method="post" onsubmit="return validateForm();">
                <div class="form-group">
                    <label for="name">Full Name <span class="required">*</span></label>
                    <input type="text" id="name" name="name" class="form-control" placeholder="Enter your full name" required>
                    <i class="fas fa-user icon"></i>
                </div>
                <div class="form-group">
                    <label for="email">Email Address <span class="required">*</span></label>
                    <input type="email" id="email" name="email" class="form-control" placeholder="Enter your email address" required>
                    <i class="fas fa-envelope icon"></i>
                </div>
                <div class="form-group">
                    <label for="phoneNumber">Phone Number <span class="required">*</span></label>
                    <input type="tel" id="phoneNumber" name="phoneNumber" class="form-control" placeholder="Enter your phone number" required>
                    <small id="phoneError" class="error"></small>
                    <i class="fas fa-phone icon"></i>
                </div>
                <div class="form-group">
                    <label for="expertise">Area of Expertise <span class="required">*</span></label>
                    <input type="text" id="expertise" name="expertise" class="form-control" placeholder="Enter your expertise (e.g., Crop Science)" required>
                    <i class="fas fa-briefcase icon"></i>
                </div>
                <div class="form-group">
                    <label for="qualifications">Qualifications <span class="required">*</span></label>
                    <input type="text" id="qualifications" name="qualifications" class="form-control" placeholder="Enter your qualifications" required>
                    <i class="fas fa-certificate icon"></i>
                </div>
                <div class="form-group">
                    <label for="yearsOfExperience">Years of Experience <span class="required">*</span></label>
                    <input type="number" id="yearsOfExperience" name="yearsOfExperience" class="form-control" placeholder="Enter your years of experience" required>
                    <i class="fas fa-calendar-alt icon"></i>
                </div>
                <div class="form-group">
                    <label for="location">Location <span class="required">*</span></label>
                    <input type="text" id="location" name="location" class="form-control" placeholder="Enter your location" required>
                    <i class="fas fa-map-marker-alt icon"></i>
                </div>
                <div class="form-group">
                    <label for="availability">Availability <span class="required">*</span></label>
                    <select id="availability" name="availability" class="form-control" required>
                        <option value="">Select Availability</option>
                        <option value="Full-time">Full-time</option>
                        <option value="Part-time">Part-time</option>
                        <option value="Weekends">Weekends</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="password">Password <span class="required">*</span></label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Create a password" required>
                    <small id="passwordError" class="error"></small>
                    <i class="fas fa-lock icon"></i>
                </div>
                <div class="form-submit">
                    <button type="submit" class="btn-submit">Register</button>
                    <a href="/expertlogin" class="btn-login">Login</a>
                </div>
            </form>
        </div>
    </div>
</body>

</html>
