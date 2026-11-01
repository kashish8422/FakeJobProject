
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard | FakeJobDetect</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f6fc;
            color: #17213a;
        }

        .sidebar {
            width: 240px;
            height: 100vh;
            background: #17213a;
            position: fixed;
            padding: 25px 18px;
            color: white;
        }

        .logo {
            font-size: 21px;
            font-weight: bold;
            margin-bottom: 45px;
            color: #7f9cff;
        }

        .sidebar a {
            display: block;
            padding: 15px;
            margin-bottom: 10px;
            color: #d4dcf1;
            text-decoration: none;
            border-radius: 8px;
        }

        .sidebar a:hover,
        .sidebar a.active {
            background: #3156d9;
            color: white;
        }

        .main {
            margin-left: 240px;
            padding: 30px;
        }

        .topbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 35px;
            gap: 15px;
        }

        .topbar h2 {
            font-size: 25px;
        }

        .user {
            background: white;
            padding: 12px 18px;
            border-radius: 8px;
            color: #3156d9;
            font-weight: bold;
        }

        .welcome {
            margin-bottom: 30px;
        }

        .welcome p {
            color: #78839a;
            margin-top: 8px;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            margin-bottom: 35px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 4px 15px #e5eaf5;
        }

        .card .icon {
            font-size: 30px;
            margin-bottom: 15px;
        }

        .card h3 {
            font-size: 28px;
            margin-bottom: 8px;
        }

        .card p {
            color: #78839a;
        }

        .blue { color: #3156d9; }
        .red { color: #e34b55; }
        .green { color: #20a46b; }

        .action {
            background: #3156d9;
            color: white;
            padding: 14px 22px;
            border-radius: 8px;
            text-decoration: none;
            display: inline-block;
            margin-bottom: 30px;
            font-weight: bold;
        }

        .recent {
            background: white;
            padding: 25px;
            border-radius: 12px;
            overflow-x: auto;
        }

        .recent h3 {
            margin-bottom: 22px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            min-width: 450px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #edf0f6;
        }

        th {
            color: #78839a;
            font-size: 14px;
        }

        .fake {
            color: #e34b55;
            font-weight: bold;
        }

        .genuine {
            color: #20a46b;
            font-weight: bold;
        }

        @media(max-width: 850px) {
            .sidebar {
                width: 180px;
            }

            .main {
                margin-left: 180px;
            }

            .cards {
                grid-template-columns: 1fr;
            }
        }

        @media(max-width: 550px) {
            .sidebar {
                position: static;
                width: 100%;
                height: auto;
            }

            .main {
                margin-left: 0;
                padding: 18px;
            }

            .cards {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>

<body>

<div class="sidebar">

    <div class="logo">🛡 FakeJobDetect</div>

    <a href="dashboard.jsp" class="active">🏠 Dashboard</a>
    <a href="analyze.jsp">🔍 Analyze Job</a>
    <a href="history.jsp">📋 Analysis History</a>
    <a href="index.jsp">🚪 Logout</a>

</div>

<div class="main">

    <div class="topbar">
        <h2>Dashboard</h2>
        <div class="user">👤 User Account</div>
    </div>

    <div class="welcome">
        <h2>Welcome to FakeJobDetect!</h2>
        <p>Monitor and analyze job advertisements to stay safe from fraud.</p>
    </div>

    <div class="cards">

        <div class="card">
            <div class="icon">📊</div>
            <h3 class="blue">120</h3>
            <p>Total Jobs Analyzed</p>
        </div>

        <div class="card">
            <div class="icon">⚠️</div>
            <h3 class="red">35</h3>
            <p>Fake Jobs Detected</p>
        </div>

        <div class="card">
            <div class="icon">✅</div>
            <h3 class="green">85</h3>
            <p>Genuine Jobs</p>
        </div>

    </div>

    <a href="analyze.jsp" class="action">
        + Analyze New Job
    </a>

    <div class="recent">

        <h3>Recent Job Analysis</h3>

        <table>
            <tr>
                <th>Job Title</th>
                <th>Company</th>
                <th>Result</th>
            </tr>

            <tr>
                <td>Data Entry Operator</td>
                <td>ABC Services</td>
                <td class="fake">Fake</td>
            </tr>

            <tr>
                <td>Software Developer</td>
                <td>Tech Solutions</td>
                <td class="genuine">Genuine</td>
            </tr>

            <tr>
                <td>Work From Home</td>
                <td>XYZ Company</td>
                <td class="fake">Fake</td>
            </tr>

        </table>

    </div>

</div>

</body>
</html>
