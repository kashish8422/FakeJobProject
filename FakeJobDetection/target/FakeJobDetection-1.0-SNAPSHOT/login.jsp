
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | FakeJobDetect</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f3f6fc;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background: white;
            width: 400px;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 35px #dce3f2;
        }

        .logo {
            text-align: center;
            color: #3156d9;
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 25px;
        }

        h2 {
            text-align: center;
            color: #17213a;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #78839a;
            margin-bottom: 30px;
            font-size: 14px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #26334f;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 13px;
            margin-bottom: 20px;
            border: 1px solid #d7deeb;
            border-radius: 7px;
            outline: none;
            font-size: 14px;
        }

        input:focus {
            border-color: #3156d9;
        }

        button {
            width: 100%;
            padding: 14px;
            background: #3156d9;
            color: white;
            border: none;
            border-radius: 7px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        button:hover {
            background: #2444b5;
        }

        .register {
            text-align: center;
            margin-top: 22px;
            color: #68748c;
            font-size: 14px;
        }

        .register a, .home a {
            color: #3156d9;
            text-decoration: none;
            font-weight: bold;
        }

        .home {
            text-align: center;
            margin-top: 22px;
            font-size: 14px;
        }

    </style>
</head>

<body>

<div class="login-container">

    <div class="logo">🛡 FakeJobDetect</div>

    <h2>Welcome Back!</h2>

    <p class="subtitle">
        Login to verify job advertisements
    </p>

    <form action="dasboard.jsp" method="post">

        <label>Email Address</label>
        <input type="email" name="email"
               placeholder="Enter your email" required>

        <label>Password</label>
        <input type="password" name="password"
               placeholder="Enter your password" required>

        <button type="submit">Login</button>

    </form>

    <div class="register">
        Don't have an account?
        <a href="register.jsp">Create Account</a>
    </div>

    <div class="home">
        <a href="index.jsp">← Back to Home</a>
    </div>

</div>

</body>
</html>
