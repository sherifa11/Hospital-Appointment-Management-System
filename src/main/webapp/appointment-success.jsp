<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title> 🎉Appointment Successful 🎉</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f9f7;
            text-align: center;
            padding-top: 120px;
        }

        .success-box {
            background: white;
            width: 450px;
            margin: auto;
            padding: 40px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        }

        .check {
            font-size: 60px;
            color: #0b8055;
        }

        h1 {
            color: #075c45;
        }

        p {
            color: #666;
            font-size: 17px;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 25px;
            background: #087f5b;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }
    </style>
</head>

<body>

<div class="success-box">

    <div class="check">✓</div>

    <h1>Appointment Booked Successfully!</h1>

    <p>Your appointment has been successfully booked.</p>
    <p>Thank you for choosing MedCare Hospital.</p>

    <a href="appointment.jsp">Book Another Appointment</a>

</div>

</body>
</html>