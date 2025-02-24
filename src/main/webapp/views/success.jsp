<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.example.jobportal.model.JobPost" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CareerNest - Job Details</title>
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

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.02); }
            100% { transform: scale(1); }
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
            max-width: 1200px;
            margin: 0 auto;
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
            animation: slideIn 0.8s ease-out;
        }

        .page-title {
            text-align: center;
            margin-bottom: 2rem;
            color: var(--accent-color);
            font-size: 2.5rem;
            animation: slideIn 0.5s ease-out;
        }

        .job-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            border: 1px solid rgba(255, 255, 255, 0.2);
            padding: 2.5rem;
            animation: slideIn 0.8s ease-out;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        }

        .job-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
            animation: pulse 2s infinite;
        }

        .job-title {
            font-size: 2rem;
            color: var(--accent-color);
            margin-bottom: 1.5rem;
        }

        .job-detail {
            margin-bottom: 1.5rem;
            animation: slideIn 0.5s ease-out;
        }

        .detail-label {
            font-weight: bold;
            color: var(--accent-color);
            margin-bottom: 0.5rem;
            font-size: 1.1rem;
        }

        .detail-content {
            background: rgba(255, 255, 255, 0.05);
            padding: 1rem;
            border-radius: 10px;
            font-size: 1.1rem;
            line-height: 1.6;
        }

        .tech-stack-list {
            list-style: none;
            display: flex;
            flex-wrap: wrap;
            gap: 0.8rem;
            margin-top: 1rem;
        }

        .tech-item {
            background: rgba(255, 215, 0, 0.2);
            padding: 0.5rem 1rem;
            border-radius: 20px;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }

        .tech-item:hover {
            background: rgba(255, 215, 0, 0.3);
            transform: translateY(-2px);
        }

        @media (max-width: 768px) {
            .navbar-nav {
                display: none;
            }

            .job-card {
                padding: 1.5rem;
            }

            .job-title {
                font-size: 1.5rem;
            }

            .tech-stack-list {
                gap: 0.5rem;
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

<%
    JobPost myJobPost = (JobPost) request.getAttribute("jobPost");
%>

<div class="main-content">
    <div class="container">
        <h1 class="page-title">Job Details</h1>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="job-card">
                    <h2 class="job-title"><%= myJobPost.getPostProfile() %></h2>

                    <div class="job-detail">
                        <div class="detail-label">Description</div>
                        <div class="detail-content">
                            <%= myJobPost.getPostDesc() %>
                        </div>
                    </div>

                    <div class="job-detail">
                        <div class="detail-label">Experience Required</div>
                        <div class="detail-content">
                            <%= myJobPost.getReqExperience() %> years
                        </div>
                    </div>

                    <div class="job-detail">
                        <div class="detail-label">Tech Stack</div>
                        <div class="detail-content">
                            <ul class="tech-stack-list">
                                <% for (String tech : myJobPost.getPostTechStack()) { %>
                                <li class="tech-item"><%= tech %></li>
                                <% } %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>