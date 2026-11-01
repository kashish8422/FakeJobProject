
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Fake Job Detection | Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f5f7fc;
            color: #17213a;
        }

        nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 22px 8%;
            background: white;
        }

        .logo {
            font-size: 23px;
            font-weight: bold;
            color: #3156d9;
        }

        nav a {
            text-decoration: none;
            color: #26334f;
            margin-left: 25px;
            font-weight: 600;
        }

        .login {
            background: #3156d9;
            color: white;
            padding: 11px 22px;
            border-radius: 7px;
        }

        .register {
            background: #17213a;
            color: white;
            padding: 11px 22px;
            border-radius: 7px;
        }

        .hero {
            min-height: 570px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 70px 8%;
            gap: 35px;
        }

        .hero-content {
            max-width: 570px;
        }

        .tag {
            color: #3156d9;
            font-weight: bold;
            margin-bottom: 20px;
        }

        h1 {
            font-size: 48px;
            line-height: 1.2;
            margin-bottom: 22px;
        }

        h1 span {
            color: #3156d9;
        }

        .description {
            color: #68748c;
            font-size: 17px;
            line-height: 1.8;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            background: #3156d9;
            color: white;
            padding: 15px 28px;
            border-radius: 8px;
            text-decoration: none;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .btn-register {
            background: #17213a;
            margin-left: 10px;
        }

        .illustration {
            background: white;
            padding: 45px;
            border-radius: 22px;
            box-shadow: 0 10px 40px #dce2f0;
            text-align: center;
            width: 330px;
        }

        .shield {
            font-size: 90px;
            margin-bottom: 20px;
        }

        .illustration h2 {
            color: #3156d9;
            margin-bottom: 12px;
        }

        .features {
            padding: 55px 8%;
            text-align: center;
            background: white;
        }

        .features h2 {
            font-size: 30px;
            margin-bottom: 35px;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
        }

        .card {
            background: #f5f7fc;
            padding: 30px;
            border-radius: 13px;
            width: 260px;
        }

        .card h3 {
            color: #3156d9;
            margin: 15px 0;
        }

        .card p {
            color: #68748c;
            line-height: 1.6;
        }

        footer {
            text-align: center;
            padding: 22px;
            background: #17213a;
            color: white;
        }

        @media(max-width: 750px) {
            .hero {
                flex-direction: column;
                text-align: center;
            }

            h1 {
                font-size: 35px;
            }

            nav {
                flex-wrap: wrap;
                gap: 15px;
            }

            .illustration {
                width: 100%;
            }
        }
    </style>
</head>

<body>

<nav>
    <div class="logo">🛡 FakeJobDetect</div>

    <div>
        <a href="index.jsp">Home</a>
        <a href="#features">Features</a>
        <a href="register.jsp" class="register">Register</a>
        <a href="login.jsp" class="login">Login</a>
    </div>
</nav>

<section class="hero">

    <div class="hero-content">

        <div class="tag">SMART JOB SECURITY SYSTEM</div>

        <h1>
            Detect Fake Jobs.
            <span>Stay Safe.</span>
        </h1>

        <p class="description">
            Protect yourself from fraudulent job advertisements.
            Our smart detection system analyzes job details and
            identifies suspicious job opportunities.
        </p>

        <a href="login.jsp" class="btn">Get Started →</a>

        <a href="register.jsp" class="btn btn-register">
            Register Now →
        </a>

    </div>

    <div class="illustration">

        <div class="shield">🛡️</div>

        <h2>Job Verification</h2>

        <p>
            Analyze job advertisements and
            identify potential fraud risks.
        </p>

        <br>

        <strong style="color:green;">
            ✔ Stay Alert. Stay Protected.
        </strong>

    </div>

</section>

<section class="features" id="features">

    <h2>Our Key Features</h2>

    <div class="cards">

        <div class="card">
            <div style="font-size:35px;">🔍</div>
            <h3>Job Analysis</h3>
            <p>Analyze job advertisements using suspicious indicators.</p>
        </div>

        <div class="card">
            <div style="font-size:35px;">🤖</div>
            <h3>Smart Detection</h3>
            <p>Identify possible fake and genuine job advertisements.</p>
        </div>

        <div class="card">
            <div style="font-size:35px;">🔒</div>
            <h3>Job Safety</h3>
            <p>Get alerts about suspicious job offers and payment demands.</p>
        </div>

    </div>

</section>

<footer>
    <p>© 2026 FakeJobDetect | AI-Based Fake Job Advertisement Detection</p>
</footer>

</body>
</html>
