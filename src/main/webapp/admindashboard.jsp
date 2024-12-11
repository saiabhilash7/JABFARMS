<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farm Platform Admin Dashboard</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2ecc71;
            --secondary-color: #27ae60;
            --background-color: #f8f9fa;
            --sidebar-color: #2c3e50;
            --text-color: #2c3e50;
            --card-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            --hover-transition: all 0.3s ease;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: var(--background-color);
            color: var(--text-color);
            line-height: 1.6;
        }

        .container {
            display: flex;
            min-height: 100vh;
        }

        .main-content {
            flex: 1;
            padding: 2rem;
            margin-left: 280px;
            transition: var(--hover-transition);
        }

        .page-header {
            margin-bottom: 2rem;
            padding-bottom: 1rem;
            border-bottom: 2px solid #eee;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .page-header h1 {
            font-size: 2rem;
            color: var(--text-color);
            font-weight: 600;
        }

        .stats-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .stat-card {
            background: white;
            padding: 1.5rem;
            border-radius: 12px;
            box-shadow: var(--card-shadow);
            transition: var(--hover-transition);
            position: relative;
            overflow: hidden;
        }

        .stat-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 4px;
            height: 100%;
            background: var(--primary-color);
        }

        .stat-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .search-bar {
            display: flex;
            gap: 1rem;
            margin-bottom: 1.5rem;
        }

        .search-input {
            flex: 1;
            padding: 0.8rem 1.2rem;
            border: 2px solid #eee;
            border-radius: 8px;
            font-size: 1rem;
            transition: var(--hover-transition);
        }

        .search-input:focus {
            border-color: var(--primary-color);
            outline: none;
        }

        .table-wrapper {
            overflow-x: auto;
            margin-bottom: 1.5rem;
        }

        .table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 0.5rem;
            min-width: 800px;
        }

        .status-badge {
            padding: 0.4rem 0.8rem;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: 500;
            display: inline-block;
        }

        .btn {
            padding: 0.6rem 1.2rem;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: 500;
            transition: var(--hover-transition);
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
        }

        @media (max-width: 1024px) {
            .main-content {
                margin-left: 80px;
            }
        }

        @media (max-width: 768px) {
            .main-content {
                padding: 1rem;
            }

            .stats-container {
                grid-template-columns: 1fr;
            }

            .search-bar {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <%@ include file="adminsidebar.jsp" %>
        
        <div class="main-content">
            <div class="page-header">
                <h1>Admin Dashboard</h1>
                <div class="header-actions">
                    <button class="btn btn-primary">
                        <i class="fas fa-plus"></i>
                        New Report
                    </button>
                </div>
            </div>

            <div class="search-bar">
                <input type="text" class="search-input" placeholder="Search users, content, or activities...">
                <button class="btn btn-primary">
                    <i class="fas fa-search"></i>
                    Search
                </button>
            </div>
            
            <div class="stats-container">
                <div class="stat-card">
                    <h3>Total Users</h3>
                    <p><c:out value="${totalUsers}" default="0"/></p>
                    <small><i class="fas fa-arrow-up"></i> +12% from last month</small>
                </div>
                <div class="stat-card">
                    <h3>Content Pieces</h3>
                    <p><c:out value="${totalContent}" default="0"/></p>
                    <small><i class="fas fa-plus"></i> 5 new today</small>
                </div>
                <div class="stat-card">
                    <h3>Active Discussions</h3>
                    <p><c:out value="${activeDiscussions}" default="0"/></p>
                    <small><i class="fas fa-clock"></i> 2 pending moderation</small>
                </div>
                <div class="stat-card">
                    <h3>Expert Contributors</h3>
                    <p><c:out value="${expertContributors}" default="0"/></p>
                    <small><i class="fas fa-user-plus"></i> 3 new this week</small>
                </div>
            </div>

            <div class="content-section">
                <h2>Recent Activities</h2>
                <div class="table-wrapper">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>User</th>
                                <th>Activity</th>
                                <th>Time</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${recentActivities}" var="activity">
                                <tr>
                                    <td>
                                        <div style="display: flex; align-items: center; gap: 10px;">
                                            <i class="fas fa-user-circle"></i>
                                            <c:out value="${activity.user}"/>
                                        </div>
                                    </td>
                                    <td><c:out value="${activity.description}"/></td>
                                    <td><c:out value="${activity.timestamp}"/></td>
                                    <td>
                                        <span class="status-badge status-${activity.status.toLowerCase()}">
                                            <c:out value="${activity.status}"/>
                                        </span>
                                    </td>
                                    <td>
                                        <button class="btn btn-outline">Review</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Initialize sidebar navigation
            const sidebarItems = document.querySelectorAll('.sidebar-menu li');
            const currentPath = window.location.pathname;
            
            sidebarItems.forEach(item => {
                const link = item.querySelector('a');
                if (link.getAttribute('href') === currentPath.split('/').pop()) {
                    item.classList.add('active');
                }
                
                item.addEventListener('click', function() {
                    sidebarItems.forEach(i => i.classList.remove('active'));
                    this.classList.add('active');
                });
            });

            // Initialize search functionality
            const searchInput = document.querySelector('.search-input');
            searchInput.addEventListener('input', function(e) {
                // Add your search logic here
                console.log('Searching for:', e.target.value);
            });
        });
    </script>
</body>
</html>