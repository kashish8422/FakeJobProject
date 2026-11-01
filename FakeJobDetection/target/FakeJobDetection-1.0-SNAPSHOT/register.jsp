
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register | FakeJobDetect</title>
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
            padding: 30px 15px;
        }

        .register-container {
            background: white;
            width: 430px;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 8px 35px #dce3f2;
        }

        .logo {
            text-align: center;
            color: #3156d9;
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        h2 {
            text-align: center;
            color: #17213a;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #78839a;
            margin-bottom: 25px;
            font-size: 14px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #26334f;
            font-weight: bold;
            font-size: 14px;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
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

        .login {
            text-align: center;
            margin-top: 20px;
            color: #68748c;
            font-size: 14px;
        }

        .login a, .home a {
            color: #3156d9;
            text-decoration: none;
            font-weight: bold;
        }

        .home {
            text-align: center;
            margin-top: 18px;
            font-size: 14px;
        }
    </style>
</head>

<body>

<div class="register-container">

    <div class="logo">🛡 FakeJobDetect</div>

    <h2>Create Account</h2>

    <p class="subtitle">
        Join us and stay safe from fake job advertisements
    </p>

    <form action="RegisterServlet" method="post"
          onsubmit="return validatePassword()">

        <label>Full Name</label>
        <input type="text" name="fullname"
               placeholder="Enter your full name" required>

        <label>Email Address</label>
        <input type="email" name="email"
               placeholder="Enter your email" required>

        <label>Password</label>
        <input type="password" id="password" name="password"
               placeholder="Create a password" required minlength="6">

        <label>Confirm Password</label>
        <input type="password" id="confirmPassword"
               placeholder="Confirm your password" required>

        <button type="submit">Create Account</button>

    </form>

    <div class="login">
        Already have an account?
        <a href="login.jsp">Login</a>
    </div>

    <div class="home">
        <a href="index.jsp">← Back to Home</a>
    </div>

</div>

<script>
    function validatePassword() {
        var password = document.getElementById("password").value;
        var confirmPassword =
            document.getElementById("confirmPassword").value;

        if (password !== confirmPassword) {
            alert("Passwords do not match!");
            return false;
        }

        return true;
    }
</script>

</body>
</html>
