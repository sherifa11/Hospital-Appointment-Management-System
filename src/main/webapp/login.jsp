<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>



<head>
    <meta charset="UTF-8">
    <title>MedCare Hospital - Login</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(135deg, #e8f8f2, #ffffff);
        }

        .login-container {
            width: 400px;
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.12);
        }

        .logo {
            text-align: center;
            color: #075c42;
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 8px;
        }

        .subtitle {
            text-align: center;
            color: #777;
            margin-bottom: 30px;
        }

        label {
            display: block;
            margin-bottom: 7px;
            color: #333;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 13px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 15px;
        }

        input:focus {
            outline: none;
            border-color: #07865c;
        }

        .login-btn {
            width: 100%;
            padding: 14px;
            border: none;
            border-radius: 8px;
            background: #07865c;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .login-btn:hover {
            background: #075c42;
        }

        .signup {
            text-align: center;
            margin-top: 22px;
            color: #666;
        }

        .signup a {
            color: #07865c;
            text-decoration: none;
            font-weight: bold;
        }

        .home {
            display: block;
            text-align: center;
            margin-top: 20px;
            color: #075c42;
            text-decoration: none;
        }
    </style>
</head>

<body>

    <div class="login-container">

        <div class="logo">🏥 MedCare</div>

        <p class="subtitle">
            Welcome back! Please login to your account.
        </p>

        <form action="login" method="post">

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

            <button type="submit" class="login-btn">
                🔐 Login
            </button>

        </form>

        <div class="signup">
            Don't have an account?
            <a href="signup.jsp">Sign Up</a>
        </div>

        <a href="index.html" class="home">
            ← Back to Home
        </a>

    </div>

</body>
</html>