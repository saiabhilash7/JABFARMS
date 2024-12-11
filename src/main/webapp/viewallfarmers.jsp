<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="adminsidebar.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmers Management</title>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --danger-color: #e74c3c;
            --background-light: #f4f6f9;
            --text-color: #2c3e50;
            --white: #ffffff;
            --border-radius: 8px;
            --box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
            background-color: var(--background-light);
            color: var(--text-color);
            line-height: 1.6;
        }

        .container {
            max-width: 1400px;
            margin: 2rem auto;
            padding: 0 1rem;
            overflow-x: auto;
        }

        .page-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
        }

        .page-title {
            font-size: 2.25rem;
            font-weight: 700;
            color: var(--text-color);
            position: relative;
        }

        .page-title::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 0;
            width: 80px;
            height: 4px;
            background-color: var(--primary-color);
            border-radius: 2px;
        }

        .farmers-table {
            width: 100%;
            background: var(--white);
            border-radius: var(--border-radius);
            box-shadow: var(--box-shadow);
            overflow: hidden;
        }

        .farmers-table thead {
            background-color: var(--primary-color);
            color: var(--white);
        }

        .farmers-table th, .farmers-table td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid #edf1f5;
            white-space: nowrap;
        }

        .farmers-table th {
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .farmers-table tr:hover {
            background-color: #f8f9fa;
            transition: background-color 0.3s ease;
        }

        .status-badge {
            display: inline-block;
            padding: 0.375rem 0.75rem;
            border-radius: 20px;
            font-size: 0.75rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .status-verified {
            background-color: rgba(46, 204, 113, 0.1);
            color: var(--secondary-color);
            border: 1px solid var(--secondary-color);
        }

        .status-unverified {
            background-color: rgba(231, 76, 60, 0.1);
            color: var(--danger-color);
            border: 1px solid var(--danger-color);
        }

        .action-buttons {
            display: flex;
            gap: 0.5rem;
        }

        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 0.5rem 1rem;
            border-radius: var(--border-radius);
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            gap: 0.5rem;
        }

        .btn-verify {
            background-color: var(--secondary-color);
            color: var(--white);
        }

        .btn-verify:hover {
            background-color: #27ae60;
        }

        .btn-delete {
            background-color: var(--danger-color);
            color: var(--white);
        }

        .btn-delete:hover {
            background-color: #c0392b;
        }

        /* Responsive Adjustments */
        @media screen and (max-width: 768px) {
            .farmers-table {
                font-size: 0.9rem;
            }

            .farmers-table th, .farmers-table td {
                padding: 0.75rem;
            }

            .page-title {
                font-size: 1.75rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="page-header">
            <h1 class="page-title">Farmers Management</h1>
        </div>
        
        <table class="farmers-table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Location</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${farmerlist}" var="farmer">
                    <tr>
                        <td>${farmer.id}</td>
                        <td>${farmer.firstName} ${farmer.lastName}</td>
                        <td>${farmer.email}</td>
                        <td>${farmer.phone}</td>
                        <td>${farmer.state}, ${farmer.country}</td>
                        <td>
                            <c:choose>
                                <c:when test="${farmer.verified}">
                                    <span class="status-badge status-verified">Verified</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="status-badge status-unverified">Not Verified</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td class="action-buttons">
                            <c:if test="${!farmer.verified}">
                                <a href="verifyfarmer?id=${farmer.id}" class="btn btn-verify">
                                    <i class="ri-shield-check-line"></i> Verify
                                </a>
                            </c:if>
                            <a href="/deletefarmer?id=${farmer.id}" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this farmer?');">
                                <i class="ri-delete-bin-line"></i> Delete
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>