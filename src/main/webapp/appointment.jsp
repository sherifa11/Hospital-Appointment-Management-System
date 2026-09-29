<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Book Appointment - MedCare Hospital</title>

<link rel="stylesheet" href="style.css">

<style>

/* Appointment Page */

.appointment-section {
    min-height: 100vh;
    padding: 70px 20px;
    background: linear-gradient(135deg, #e9fff8, #f4f9ff);
}

.appointment-container {
    max-width: 1100px;
    margin: auto;
    display: grid;
    grid-template-columns: 1fr 1.2fr;
    gap: 40px;
    align-items: center;
}

/* Left Side */

.appointment-info {
    padding: 30px;
}

.appointment-info .tag {
    display: inline-block;
    background: #d8f7eb;
    color: #087f5b;
    padding: 10px 18px;
    border-radius: 30px;
    font-weight: bold;
    margin-bottom: 20px;
}

.appointment-info h1 {
    font-size: 45px;
    color: #075c45;
    line-height: 1.15;
    margin-bottom: 20px;
}

.appointment-info p {
    font-size: 18px;
    color: #667085;
    line-height: 1.7;
}

.features {
    margin-top: 30px;
}

.feature {
    display: flex;
    align-items: center;
    gap: 15px;
    margin: 18px 0;
    color: #174d3b;
    font-weight: bold;
}

.feature span {
    width: 35px;
    height: 35px;
    background: #0b8055;
    color: white;
    border-radius: 50%;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Form Card */

.appointment-card {
    background: white;
    padding: 40px;
    border-radius: 25px;
    box-shadow: 0 15px 45px rgba(0,0,0,0.10);
}

.appointment-card h2 {
    text-align: center;
    color: #075c45;
    font-size: 30px;
    margin-bottom: 8px;
}

.appointment-card .subtitle {
    text-align: center;
    color: #777;
    margin-bottom: 30px;
}

.form-group {
    margin-bottom: 18px;
}

.form-group label {
    display: block;
    margin-bottom: 8px;
    color: #174d3b;
    font-weight: bold;
}

.form-group input,
.form-group select,
.form-group textarea {
    width: 100%;
    padding: 14px;
    border: 1px solid #d7e5df;
    border-radius: 12px;
    font-size: 16px;
    outline: none;
    box-sizing: border-box;
    transition: 0.3s;
}

.form-group input:focus,
.form-group select:focus,
.form-group textarea:focus {
    border-color: #0b8055;
    box-shadow: 0 0 0 3px rgba(11,128,85,0.10);
}

.form-row {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 15px;
}

.book-btn {
    width: 100%;
    padding: 16px;
    border: none;
    border-radius: 14px;
    background: linear-gradient(135deg, #087f5b, #05a66f);
    color: white;
    font-size: 18px;
    font-weight: bold;
    cursor: pointer;
    transition: 0.3s;
}

.book-btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(8,127,91,0.25);
}

/* Mobile */

@media(max-width: 800px) {

    .appointment-container {
        grid-template-columns: 1fr;
    }

    .appointment-info h1 {
        font-size: 35px;
    }

    .appointment-card {
        padding: 25px;
    }

    .form-row {
        grid-template-columns: 1fr;
    }
}

</style>
</head>

<body>

<section class="appointment-section">

    <div class="appointment-container">

        <!-- LEFT SIDE -->

        <div class="appointment-info">

            <div class="tag">
                ✦ EASY APPOINTMENT
            </div>

            <h1>
                Your Health,<br>
                Our Priority
            </h1>

            <p>
                Book an appointment with our experienced doctors
                and receive quality healthcare at MedCare Hospital.
            </p>

            <div class="features">

                <div class="feature">
                    <span>✓</span>
                    Experienced Doctors
                </div>

                <div class="feature">
                    <span>✓</span>
                    Easy Online Booking
                </div>

                <div class="feature">
                    <span>✓</span>
                    Flexible Appointment Time
                </div>

                <div class="feature">
                    <span>✓</span>
                    Patient-Centered Care
                </div>

            </div>

        </div>


        <!-- RIGHT SIDE -->

        <div class="appointment-card">

            <h2>Book Your Appointment</h2>

            <p class="subtitle">
                Fill in your details to schedule a consultation
            </p>
            <form action="appointment" method="post">
           

                <div class="form-group">
                    <label>Patient Name</label>
                    <input type="text"
                           name="patientName"
                           placeholder="Enter your full name"
                           required>
                </div>

                <div class="form-row">

                    <div class="form-group">
                        <label>Phone Number</label>
                        <input type="tel"
                               name="phone"
                               placeholder="10 digit number"
                               pattern="[0-9]{10}"
                               required>
                    </div>

                    <div class="form-group">
                        <label>Email</label>
                        <input type="email"
                               name="email"
                               placeholder="Enter your email"
                               required>
                    </div>

                </div>

                <div class="form-row">

                    <div class="form-group">
                        <label>Department</label>

                        <select name="department" required>

                            <option value="">
                                Select Department
                            </option>

                            <option>Cardiology</option>
                            <option>Neurology</option>
                            <option>Orthopedics</option>
                            <option>Dermatology</option>
                            <option>Pediatrics</option>
                            <option>General Medicine</option>

                        </select>

                    </div>


                    <div class="form-group">

                        <label>Doctor</label>

                        <select name="doctor" required>

                            <option value="">
                                Select Doctor
                            </option>

                            <option>Dr. Arun Kumar</option>
                            <option>Dr. Priya</option>
                            <option>Dr. Rahul</option>
                            <option>Dr. Divya</option>

                        </select>

                    </div>

                </div>


                <div class="form-row">

                    <div class="form-group">

                        <label>Appointment Date</label>

                        <input type="date"
                               name="appointmentDate"
                               required>

                    </div>


                    <div class="form-group">

                        <label>Appointment Time</label>

                        <select name="appointmentTime" required>

                            <option value="">
                                Select Time
                            </option>

                            <option value="09:00:00">09:00 AM</option>
                            <option value="10:00:00">10:00 AM</option>
                            <option value="11:00:00">11:00 AM</option>
                            <option value="14:00:00">02:00 PM</option>
                            <option value="15:00:00">03:00 PM</option>
                            <option value="16:00:00">04:00 PM</option>

                        </select>

                    </div>

                </div>


                <div class="form-group">

                    <label>Message / Symptoms</label>

                    <textarea name="message"
                              rows="4"
                              placeholder="Briefly describe your problem..."></textarea>

                </div>


                <button type="submit" class="book-btn">
                    📅 Book Appointment
                </button>
              
            </form>

        </div>

    </div>


</section>

</body>
</html>