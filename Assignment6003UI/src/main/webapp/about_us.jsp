<%-- 
    Document   : about_us.jsp
    Created on : Mar 15, 2025, 12:18:20 PM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | Mega City Cab</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: url('img/about-bg.jpg') no-repeat center center/cover;
        }
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: -1;
        }
        .about-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 60%;
            position: relative;
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 15px;
            font-size: 20px;
            color: #b8860b;
            cursor: pointer;
            background: none;
            border: none;
        }
        .close-btn:hover {
            color: red;
        }
        h2 {
            color: #b8860b;
            margin-bottom: 10px;
        }
        p {
            color: #333;
            margin-bottom: 15px;
            font-size: 16px;
            line-height: 1.6;
        }
        .section {
            margin-top: 20px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .section h3 {
            color: #b8860b;
            margin-bottom: 10px;
        }
    </style>
    </head>
    <body>
        <div class="overlay"></div> <!-- Background Overlay -->

    <div class="about-container">
        <!-- Close Button Redirecting to Index Page -->
        <button class="close-btn" onclick="window.location.href='index.jsp'">❌</button>
        
        <h2>About Mega City Cab</h2>
        <p>Welcome to Mega City Cab, your trusted transportation partner. We provide reliable, comfortable, and affordable rides to make your journeys smooth and enjoyable.</p>
        
        <div class="section">
            <h3>🚖 Our Mission</h3>
            <p>Our mission is to offer safe, efficient, and affordable transportation solutions while ensuring customer satisfaction and convenience.</p>
        </div>

        <div class="section">
            <h3>🌍 Our Vision</h3>
            <p>We envision a future where transportation is seamless, technology-driven, and accessible to everyone in the city.</p>
        </div>

        <div class="section">
            <h3>📌 Why Choose Us?</h3>
            <p>✔ Safe and Secure Rides</p>
            <p>✔ 24/7 Customer Support</p>
            <p>✔ Affordable Pricing</p>
            <p>✔ Easy Online Booking</p>
        </div>
    </div>
    </body>
</html>
