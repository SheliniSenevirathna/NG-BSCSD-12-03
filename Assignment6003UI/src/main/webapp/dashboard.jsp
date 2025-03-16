<%-- 
    Document   : dashboard.jsp
    Created on : Mar 13, 2025, 11:33:32 PM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <style>
         * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background: url('img/cars-sport-car-orange-photography-dark-background-orange-coupe-wallpaper-preview.jpg') no-repeat center center/cover;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        .header {
            background-color: rgba(0, 0, 0, 0.8);
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
            width: 100%;
        }
        .nav {
            display: flex;
            justify-content: center;
            background: rgba(0, 0, 0, 0.8);
            padding: 12px;
            width: 100%;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5);
        }
        .nav a {
            color: white;
            text-decoration: none;
            padding: 12px 20px;
            font-size: 18px;
            font-weight: bold;
            transition: 0.3s ease-in-out;
        }
        .nav a:hover {
            background: #b8860b;
            border-radius: 5px;
        }

        /* Circular Dashboard */
        .dashboard-container {
            width: 100px;
            height: 100px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 50%;
            position: absolute;
            right: 40px;
            top: 120px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            border: 2px solid #b8860b;
            transition: transform 0.3s ease-in-out;
        }
        .dashboard-container:hover {
            transform: scale(1.05);
        }
        h1 {
            color: #b8860b;
            font-size: 20px;
            margin-bottom: 10px;
        }
        p {
            font-size: 16px;
            color: #aeaeae;
        }
        #username {
            font-weight: bold;
            color: #ff6600;
            font-size: 18px;
        }

        .hero {
            text-align: center;
            padding: 50px;
            background: rgba(0, 0, 0, 0.7);
            color: white;
            width: 80%;
            border-radius: 10px;
            margin-top: 20px;
        }
        .hero h2 {
            font-size: 32px;
            color: #ffcc00;
            margin-bottom: 15px;
        }
        .hero p {
            font-size: 20px;
            max-width: 600px;
            margin: auto;
        }
        .footer {
            text-align: center;
            padding: 15px;
            background: rgba(0, 0, 0, 0.8);
            color: white;
            width: 100%;
            position: absolute;
            bottom: 0;
        }
    </style>
    </head>
    <body>
        <div class="dashboard-container">
        <h1>Hi!</h1>
        <p>You are logged in as <span id="username"></span></p>
        
    </div>
    <div class="nav">
        <a href="index.jsp">Home</a>
        <a href="booking.jsp">Ride</a>
        <a href="contact_us.jsp">Contact us</a>
        <a href="about_us.jsp">About us</a>
        <a href="login.jsp">Login</a>
        <a href="index.jsp">Logout</a>
       
    </div>
    <div class="hero">
        <h2>Explore Our Services</h2>
        <p>Your journey to excellence starts here.</p>
    </div>
    

    <script>
        // Retrieve username from localStorage
        const username = localStorage.getItem('username');

        if (!username) {
            // Redirect to login if no username is found
            window.location.href = 'index.html';
        } else {
            // Display the username
            document.getElementById('username').textContent = username;
        }
    </script>
    <div class="footer">
        <p>&copy; 2025 All Rights Reserved</p>
    </div>
    </body>
</html>
