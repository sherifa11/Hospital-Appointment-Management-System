<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>MedCare - Sign Up</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f0f8ff;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .signup-box {
            width: 400px;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.15);
        }

        .logo {
            text-align: center;
            font-size: 32px;
            font-weight: bold;
            color: #168aad;
            margin-bottom: 10px;
        }

        .subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin: 15px 0 7px;
            font-weight: bold;
            color: #444;
        }

        input {
            width: 100%;
            padding: 13px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 15px;
        }

        .signup-btn {
            width: 100%;
            padding: 14px;
            margin-top: 25px;
            border: none;
            border-radius: 8px;
            background: #168aad;
            color: white;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
        }

        .signup-btn:hover {
            background: #0d6f8c;
        }

        .login {
            text-align: center;
            margin-top: 20px;
            color: #777;
        }

        .login a {
            color: #168aad;
            font-weight: bold;
            text-decoration: none;
        }

        .home {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #555;
            text-decoration: none;
        }
    </style>
</head>

<body>

<div class="signup-box">

    <div class="logo">🏥 MedCare</div>

    <div class="subtitle">
        Create your MedCare account
    </div>

    <form action="signup" method="post">

        <label>Full Name</label>
        <input type="text"
               name="name"
               placeholder="Enter your full name"
               required>

        <label>Email</label>
        <input type="email"
               name="email"
               placeholder="Enter your email"
               required>

        <label>Password</label>
        <input type="password"
               name="password"
               placeholder="Enter your password"
               required>

        <button type="submit" class="signup-btn">
            Create Account
        </button>

    </form>

    <div class="login">
        Already have an account?
        <a href="login.jsp">Login</a>
    </div>

    <a href="index.html" class="home">
        ← Back to Home
    </a>

</div>

</body>
</html>