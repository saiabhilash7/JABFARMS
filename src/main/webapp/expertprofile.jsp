<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="expertnavbar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Profile</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4a90e2;
            --secondary-color: #2ecc71;
            --text-color: #333;
            --background-color: #f0f4f8;
            --card-background: #ffffff;
            --border-radius: 15px;
            --shadow: 0 10px 30px rgba(0,0,0,0.08);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', Arial, sans-serif;
            line-height: 1.6;
            background-color: var(--background-color);
            color: var(--text-color);
        }

        .profile-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 2rem;
        }

        .profile-container {
            width: 120%;
            max-width: 1100px;
            background-color: var(--card-background);
            border-radius: var(--border-radius);
            box-shadow: var(--shadow);
            overflow: hidden;
            display: flex;
            flex-direction: column;
            transition: all 0.3s ease;
        }

        .profile-header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 2rem;
            text-align: center;
            position: relative;
        }

        .profile-header h1 {
            font-size: 2.5rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
            letter-spacing: -1px;
        }

        .profile-header p {
            font-size: 1rem;
            opacity: 0.9;
        }

        .profile-details {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 1.5rem;
            padding: 2.5rem;
            background-color: var(--card-background);
        }

        .profile-details > div {
            background-color: #f9f9f9;
            padding: 1.25rem;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            transition: all 0.3s ease;
            border: 1px solid transparent;
        }

        .profile-details > div:hover {
            transform: translateY(-5px);
            border-color: var(--primary-color);
            box-shadow: 0 5px 15px rgba(74,144,226,0.1);
        }

        .profile-label {
            font-weight: 500;
            color: var(--primary-color);
            margin-bottom: 0.3rem;
            font-size: 0.85rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .profile-value {
            font-weight: 500;
            color: var(--text-color);
            font-size: 1.1rem;
        }

        .action-buttons {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            padding: 2rem;
            background-color: #f4f7fa;
        }

        .btn {
            display: inline-block;
            padding: 0.875rem 2rem;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: all 0.3s ease;
            text-align: center;
        }

        .btn-edit {
            background-color: var(--primary-color);
            color: white;
            border: 2px solid var(--primary-color);
            box-shadow: 0 5px 15px rgba(74,144,226,0.3);
        }

        .btn-edit:hover {
            background-color: #3a7bd5;
            transform: translateY(-3px);
        }

        @media screen and (max-width: 768px) {
            .profile-details {
                grid-template-columns: 1fr 1fr;
            }
            
            .profile-header h1 {
                font-size: 2rem;
            }

            .action-buttons {
                flex-direction: column;
                align-items: center;
                gap: 1rem;
            }
        }

        @media screen and (max-width: 480px) {
            .profile-details {
                grid-template-columns: 1fr;
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="profile-wrapper">
        <div class="profile-container">
            <div class="profile-header">
                <h1>My Profile</h1>
                
                <p>Your Personal Information at a Glance</p>
            </div>

            <div class="profile-details">
                <div>
                    <span class="profile-label"> Name</span>
                    <span class="profile-value">${user.name}</span>
                </div>
                <div>
                    <span class="profile-label">Email</span>
                    <span class="profile-value">${user.email}</span>
                </div>
                <div>
                    <span class="profile-label">Mobile Number</span>
                    <span class="profile-value">${user.phoneNumber}</span>
                </div>
                <div>
                    <span class="profile-label">Expertise</span>
                    <span class="profile-value">${user.expertise}</span>
                </div>
                <div>
                    <span class="profile-label">Qualification</span>
                    <span class="profile-value">${user.qualifications}</span>
                </div>
                <div>
                    <span class="profile-label">Experience</span>
                    <span class="profile-value">${user.Experience}</span>
                </div>
                  <div>
                    <span class="profile-label">Location</span>
                    <span class="profile-value">${user.location}</span>
                </div>
                  <div>
                    <span class="profile-label">Availability</span>
                    <span class="profile-value">${user.availability}</span>
                </div>
              <div>
    <span class="profile-label">Verification Status</span>
    <span class="profile-value">
        <c:choose>
            <c:when test="${user.verified}">
                <span style="color: var(--secondary-color); font-weight: bold;">✓ Verified</span>
            </c:when>
            <c:otherwise>
                <span style="color: #ff4d4d; font-weight: bold;">✗ Not Verified</span>
            </c:otherwise>
        </c:choose>
    </span>
</div>
            </div>

            <div class="action-buttons">
                <a href="/employee/profile/edit" class="btn btn-edit">Edit Profile</a>
            </div>
        </div>
    </div>
</body>
</html>