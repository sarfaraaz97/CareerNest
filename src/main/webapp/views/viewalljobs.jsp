<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CareerNest - Available Jobs</title>
    <style>
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        @keyframes slideIn {
            from { transform: translateY(20px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-5px); }
            100% { transform: translateY(0px); }
        }

        @keyframes cardHover {
            0% { transform: translateY(0) scale(1); }
            50% { transform: translateY(-5px) scale(1.02); }
            100% { transform: translateY(0) scale(1); }
        }

        :root {
            --primary-color: #6a11cb;
            --secondary-color: #2575fc;
            --accent-color: #ffd700;
            --text-color: #ffffff;
            --card-bg: rgba(255, 255, 255, 0.1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(270deg, #6a11cb, #2575fc, #11998e);
            background-size: 600% 600%;
            animation: gradientBG 15s ease infinite;
            min-height: 100vh;
            color: var(--text-color);
        }

        .navbar {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 1.2rem 0;
            backdrop-filter: blur(10px);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            transition: all 0.3s ease;
        }

        .navbar:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        .container {
            width: 90%;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 15px;
        }

        .navbar .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-brand {
            color: var(--text-color);
            font-size: 2rem;
            font-weight: bold;
            text-decoration: none;
            display: flex;
            align-items: center;
        }

        .navbar-brand::before {
            content: '🪹';
            margin-right: 10px;
            animation: float 3s ease-in-out infinite;
        }

        .navbar-nav {
            display: flex;
            gap: 2rem;
            list-style: none;
        }

        .nav-link {
            color: var(--text-color);
            text-decoration: none;
            font-size: 1.1rem;
            position: relative;
            padding: 0.5rem 0;
        }

        .nav-link::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            bottom: 0;
            left: 0;
            background-color: var(--accent-color);
            transition: width 0.3s ease;
        }

        .nav-link:hover::after {
            width: 100%;
        }

        .main-content {
            padding-top: 120px;
            padding-bottom: 60px;
        }

        .page-title {
            text-align: center;
            margin-bottom: 3rem;
            color: var(--accent-color);
            font-size: 2.5rem;
            animation: slideIn 0.5s ease-out;
        }

        .job-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(400px, 1fr));
            gap: 2rem;
            padding: 1rem;
        }

        .job-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 2rem;
            transition: all 0.3s ease;
            animation: slideIn 0.5s ease-out;
            height: 100%;
            display: flex;
            flex-direction: column;
        }

        .job-card:hover {
            animation: cardHover 3s ease-in-out infinite;
            border-color: var(--accent-color);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .job-title {
            font-size: 1.5rem;
            color: var(--accent-color);
            margin-bottom: 1rem;
        }

        .job-description {
            margin-bottom: 1.5rem;
            line-height: 1.6;
            flex-grow: 1;
        }

        .job-meta {
            background: rgba(255, 255, 255, 0.05);
            padding: 1rem;
            border-radius: 10px;
            margin-bottom: 1rem;
        }

        .tech-stack {
            display: flex;
            flex-wrap: wrap;
            gap: 0.5rem;
            margin-top: 1rem;
        }

        .tech-item {
            background: rgba(255, 215, 0, 0.2);
            padding: 0.4rem 0.8rem;
            border-radius: 15px;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }

        .tech-item:hover {
            background: rgba(255, 215, 0, 0.3);
            transform: translateY(-2px);
        }

        .label {
            color: var(--accent-color);
            font-weight: bold;
            margin-bottom: 0.5rem;
        }

        @media (max-width: 768px) {
            .job-grid {
                grid-template-columns: 1fr;
            }

            .navbar-nav {
                display: none;
            }

            .page-title {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
<nav class="navbar">
    <div class="container">
        <a class="navbar-brand" href="#">CareerNest</a>
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
        </ul>
    </div>
</nav>

<div class="main-content">
    <div class="container">
        <h1 class="page-title">Available Opportunities</h1>

        <div class="job-grid">
            <c:forEach var="jobPost" items="${jobPosts}">
                <div class="job-card">
                    <h2 class="job-title">${jobPost.postProfile}</h2>

                    <div class="job-description">
                        <div class="label">Description</div>
                        <p>${jobPost.postDesc}</p>
                    </div>

                    <div class="job-meta">
                        <div class="label">Experience Required</div>
                        <p>${jobPost.reqExperience} years</p>
                    </div>

                    <div class="tech-stack">
                        <c:forEach var="tech" items="${jobPost.postTechStack}">
                            <span class="tech-item">${tech}</span>
                        </c:forEach>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>