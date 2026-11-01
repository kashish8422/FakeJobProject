
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Job Analysis Result - FakeJobDetect</title>
    <style>
        * {
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            margin: 0;
            background: #f4f7fb;
            color: #263247;
        }

        nav {
            background: #172554;
            color: white;
            padding: 20px 8%;
            font-size: 23px;
            font-weight: bold;
        }

        .container {
            max-width: 750px;
            margin: 55px auto;
            padding: 35px;
            background: white;
            border-radius: 14px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        h1 {
            text-align: center;
            color: #172554;
        }

        .result {
            margin: 25px 0;
            padding: 22px;
            background: #eef2ff;
            border-radius: 10px;
            text-align: center;
        }

        .result h2 {
            color: #b91c1c;
        }

        .details {
            line-height: 2;
            margin-top: 20px;
        }

        .reasons {
            background: #fff7ed;
            padding: 18px;
            border-radius: 8px;
            line-height: 1.7;
            margin-top: 15px;
        }

        a {
            display: inline-block;
            margin-top: 25px;
            padding: 12px 22px;
            background: #2563eb;
            color: white;
            text-decoration: none;
            border-radius: 7px;
        }

        .center {
            text-align: center;
        }
    </style>
</head>

<body>

<nav>FakeJobDetect</nav>

<div class="container">

    <h1>Job Analysis Result</h1>

    <div class="result">
        <h2><%= request.getAttribute("riskLevel") %></h2>
        <p><%= request.getAttribute("riskMessage") %></p>
    </div>

    <div class="details">
        <p><b>Job Title:</b>
            <%= request.getAttribute("jobTitle") %></p>

        <p><b>Company:</b>
            <%= request.getAttribute("company") %></p>

        <p><b>Risk Score:</b>
            <%= request.getAttribute("score") %></p>
    </div>

    <div class="reasons">
        <b>Analysis Details:</b>
        <p><%= request.getAttribute("reasons") %></p>
    </div>

    <div class="center">
        <a href="analyze.jsp">Analyze Another Job</a>
        <a href="dashboard.jsp">Dashboard</a>
    </div>

</div>

</body>
</html>
