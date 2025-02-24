<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CareerNest - Your Career Journey Begins Here</title>
    <style>
        @keyframes gradientBG {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        @keyframes slideIn {
            from { transform: translateY(50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }

        :root {
            --primary-gradient: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            --card-bg: rgba(255, 255, 255, 0.1);
            --accent-color: #ffd700;
            --text-color: #ffffff;
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
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
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
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar-brand {
            color: var(--text-color);
            font-size: 2rem;
            font-weight: bold;
            text-decoration: none;
            position: relative;
            display: flex;
            align-items: center;
        }

        .navbar-brand::before {
            content: '🪹';
            margin-right: 10px;
            font-size: 1.5rem;
            animation: float 3s ease-in-out infinite;
        }

        .navbar-nav {
            display: flex;
            gap: 2rem;
            list-style-type: none;
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
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 8rem 2rem;
            text-align: center;
            animation: slideIn 1s ease-out;
        }

        h1 {
            font-size: 3.5rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(to right, #ffffff, #ffd700);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: pulse 3s infinite;
        }

        .subtitle {
            font-size: 1.5rem;
            margin-bottom: 3rem;
            opacity: 0.9;
        }

        .card-container {
            display: flex;
            gap: 3rem;
            margin-top: 2rem;
            perspective: 1000px;
        }

        .card {
            background-color: var(--card-bg);
            border-radius: 20px;
            padding: 2.5rem;
            text-align: center;
            backdrop-filter: blur(5px);
            border: 1px solid rgba(255, 255, 255, 0.1);
            transition: all 0.3s ease;
            width: 300px;
            position: relative;
            overflow: hidden;
        }

        .card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(
                    90deg,
                    transparent,
                    rgba(255, 255, 255, 0.2),
                    transparent
            );
            transition: 0.5s;
        }

        .card:hover::before {
            left: 100%;
        }

        .card:hover {
            transform: translateY(-10px) rotateX(5deg);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
            border-color: var(--accent-color);
        }

        .card h2 {
            font-size: 1.8rem;
            margin-bottom: 1rem;
            color: var(--accent-color);
        }

        .card p {
            margin-bottom: 2rem;
            line-height: 1.6;
        }

        .btn {
            display: inline-block;
            padding: 1rem 2rem;
            background: linear-gradient(45deg, #ffd700, #ffea00);
            color: #000000;
            text-decoration: none;
            border-radius: 30px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .btn:active {
            transform: translateY(1px);
        }

        @media (max-width: 768px) {
            .card-container {
                flex-direction: column;
                align-items: center;
            }

            .navbar-nav {
                display: none;
            }

            h1 {
                font-size: 2.5rem;
            }

            .subtitle {
                font-size: 1.2rem;
            }
        }
    </style>
</head>
<body>
<nav class="navbar">
    <div class="container">
        <a  href="#">CareerNest</a>
        <ul class="navbar-nav">
            <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
        </ul>
    </div>
</nav>

<div class="main-content">
    <h1>Welcome to CareerNest</h1>
    <p class="subtitle">Discover Your Next Career Adventure</p>
    <div class="card-container">
        <div class="card">
            <h2>Browse Jobs</h2>
            <p>Explore thousands of opportunities across industries and find the perfect role that matches your skills and aspirations.</p>
            <a href="/viewalljobs" class="btn">View All Jobs</a>
        </div>
        <div class="card">
            <h2>Post a Job</h2>
            <p>Connect with top talent by sharing your opportunity with our community of skilled professionals.</p>
            <a href="/addjob" class="btn">Add Job</a>
        </div>
    </div>
</div>
</body>
</html>