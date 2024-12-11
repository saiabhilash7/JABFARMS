<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

<style>
    :root {
        --sidebar-bg-color: #2c3e50;
        --sidebar-text-color: #ecf0f1;
        --primary-color: #3498db;
        --hover-color: #2980b9;
        --active-color: #2ecc71;
        --transition-speed: 0.3s;
    }

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    .sidebar {
        width: 280px;
        height: 100vh;
        position: fixed;
        top: 0;
        left: 0;
        background: linear-gradient(135deg, var(--sidebar-bg-color) 0%, #34495e 100%);
        color: var(--sidebar-text-color);
        padding: 30px 15px;
        transition: var(--transition-speed);
        z-index: 1000;
        box-shadow: 5px 0 15px rgba(0, 0, 0, 0.2);
        overflow-y: auto;
    }

    .sidebar-header {
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px 0;
        border-bottom: 2px solid rgba(255, 255, 255, 0.1);
        margin-bottom: 30px;
    }

    .sidebar-header h2 {
        font-size: 1.8rem;
        color: var(--primary-color);
        text-transform: uppercase;
        letter-spacing: 2px;
        font-weight: 700;
        display: flex;
        align-items: center;
    }

    .sidebar-header h2 i {
        margin-right: 10px;
        color: var(--active-color);
    }

    .sidebar-menu {
        list-style: none;
        padding: 0;
    }

    .sidebar-menu li {
        margin-bottom: 10px;
    }

    .sidebar-menu li a {
        display: flex;
        align-items: center;
        padding: 12px 20px;
        color: var(--sidebar-text-color);
        text-decoration: none;
        border-radius: 10px;
        transition: var(--transition-speed);
        position: relative;
        overflow: hidden;
    }

    .sidebar-menu li a::before {
        content: '';
        position: absolute;
        top: 0;
        left: -100%;
        width: 100%;
        height: 100%;
        background: linear-gradient(120deg, transparent, rgba(255,255,255,0.1), transparent);
        transition: var(--transition-speed);
    }

    .sidebar-menu li a:hover::before {
        left: 100%;
    }

    .sidebar-menu li a:hover,
    .sidebar-menu li.active a {
        background-color: var(--hover-color);
        transform: translateX(10px);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    }

    .sidebar-menu li a i {
        margin-right: 15px;
        font-size: 1.2rem;
        width: 25px;
        text-align: center;
        color: var(--primary-color);
        transition: var(--transition-speed);
    }

    .sidebar-menu li a:hover i,
    .sidebar-menu li.active a i {
        color: var(--sidebar-text-color);
    }

    .sidebar-menu li a span {
        font-weight: 500;
        letter-spacing: 0.5px;
    }

    /* Responsive Design */
    @media (max-width: 1024px) {
        .sidebar {
            width: 80px;
            padding: 20px 10px;
        }

        .sidebar-header h2 {
            display: none;
        }

        .sidebar-menu li a {
            justify-content: center;
            padding: 15px;
        }

        .sidebar-menu li a span {
            display: none;
        }

        .sidebar-menu li a i {
            margin-right: 0;
            font-size: 1.5rem;
        }

        .sidebar-menu li a:hover {
            transform: none;
        }
    }

    /* Scrollbar Styling */
    .sidebar::-webkit-scrollbar {
        width: 8px;
    }

    .sidebar::-webkit-scrollbar-track {
        background: rgba(255, 255, 255, 0.1);
    }

    .sidebar::-webkit-scrollbar-thumb {
        background: var(--primary-color);
        border-radius: 4px;
    }
</style>

<div class="sidebar">
    <div class="sidebar-header">
        <h2>
            <i class="fas fa-leaf"></i>
            FarmTech
        </h2>
    </div>
    <ul class="sidebar-menu">
        <li>
            <a href="admindashboard">
                <i class="fas fa-tachometer-alt"></i>
                <span>Dashboard</span>
            </a>
        </li>
        <li>
            <a href="viewallusers">
                <i class="fas fa-users"></i>
                <span>Users</span>
            </a>
        </li>
        <li>
            <a href="viewallfarmers">
                <i class="fas fa-tractor"></i>
                <span>Farmers</span>
            </a>
        </li>
        <li>
            <a href="viewallexperts">
                <i class="fas fa-user-tie"></i>
                <span>Experts</span>
            </a>
        </li>
        <li>
            <a href="adminlogout">
                <i class="fas fa-sign-out-alt"></i>
                <span>Logout</span>
            </a>
        </li>
    </ul>
</div>