<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CareerNest - Post a Job</title>
    <style>
        :root {
            --primary-color: #6a11cb;
            --secondary-color: #2575fc;
            --accent-color: #ffd700;
            --text-color: #ffffff;
            --form-bg: rgba(255, 255, 255, 0.1);
            --input-bg: rgba(255, 255, 255, 0.15);
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
            min-height: 100vh;
            color: var(--text-color);
        }

        .container {
            width: 90%;
            max-width: 600px;
            margin: 100px auto;
            background: var(--form-bg);
            backdrop-filter: blur(10px);
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
        }

        .form-group {
            margin-bottom: 1rem;
        }

        .form-label {
            color: var(--text-color);
            font-weight: 500;
            display: block;
            margin-bottom: 0.5rem;
        }

        .form-control, .form-select {
            width: 100%;
            padding: 0.8rem;
            background: var(--input-bg);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 8px;
            color: var(--text-color);
            font-size: 1rem;
        }

        .form-control:focus, .form-select:focus {
            background: rgba(255, 255, 255, 0.2);
            border-color: var(--accent-color);
            outline: none;
        }

        .btn-primary {
            width: 100%;
            padding: 1rem;
            background: linear-gradient(45deg, var(--accent-color), #ffea00);
            border: none;
            border-radius: 30px;
            color: #000;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
<div class="container">
    <h2 style="text-align: center; color: var(--accent-color);">Post a New Job</h2>
    <form action="handleForm" method="post">
        <div class="form-group">
            <label for="postId" class="form-label">Post ID</label>
            <input type="text" class="form-control" id="postId" name="postId" required>
        </div>

        <div class="form-group">
            <label for="postProfile" class="form-label">Post Profile</label>
            <input type="text" class="form-control" id="postProfile" name="postProfile" required>
        </div>

        <div class="form-group">
            <label for="postDesc" class="form-label">Post Description</label>
            <textarea class="form-control" id="postDesc" name="postDesc" rows="3" required></textarea>
        </div>

        <div class="form-group">
            <label for="reqExperience" class="form-label">Required Experience (Years)</label>
            <input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
        </div>

        <div class="form-group">
            <label for="postTechStack" class="form-label">Tech Stack</label>
            <select multiple class="form-select" id="postTechStack" name="postTechStack" required>
                <option value="Java">Java</option>
                <option value="JavaScript">JavaScript</option>
                <option value="Python">Python</option>
                <option value="React">React</option>
                <option value="Node.js">Node.js</option>
                <option value="Angular">Angular</option>
                <option value="Vue.js">Vue.js</option>
                <option value="Spring">Spring</option>
                <option value="Django">Django</option>
                <option value="Flask">Flask</option>
                <option value="Data Science">Data Science</option>
                <option value="Machine Learning">Machine Learning</option>
                <option value="AI">AI</option>
                <option value="Deep Learning">Deep Learning</option>
                <option value="Cybersecurity">Cybersecurity</option>
                <option value="Blockchain">Blockchain</option>
                <option value="DevOps">DevOps</option>
                <option value="Cloud Computing">Cloud Computing</option>
                <option value="Kubernetes">Kubernetes</option>
                <option value="Big Data">Big Data</option>
                <option value="TensorFlow">TensorFlow</option>
                <option value="PyTorch">PyTorch</option>
                <option value="Computer Vision">Computer Vision</option>
                <option value="Natural Language Processing">Natural Language Processing</option>
                <option value="Embedded Systems">Embedded Systems</option>
                <option value="IoT">IoT</option>
                <option value="Software Testing">Software Testing</option>
                <option value="Database Management">Database Management</option>
                <option value="Microservices">Microservices</option>
                <option value="Game Development">Game Development</option>
            </select>
        </div>

        <button type="submit" class="btn-primary">Post Job</button>
    </form>
</div>
</body>
</html>
