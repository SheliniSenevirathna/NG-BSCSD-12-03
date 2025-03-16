<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
        body {
            background: url('img/cars-sport-car-orange-photography-dark-background-orange-coupe-wallpaper-preview.jpg') no-repeat center center/cover;
            background-size: contain;
            min-height: 100vh;
            position: relative;
            display: flex;
            flex-direction: column;
        }
        .header {
            background-color: rgba(51, 51, 51, 0.8);
            color: white;
            padding: 15px;
            text-align: center;
        }
        .nav {
            display: flex;
            justify-content: center;
            background: rgba(68, 68, 68, 0.8);
            padding: 10px;
        }
        .nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
        }
        .nav a:hover {
            background: #b8860b;
        }
        .hero {
            text-align: center;
            padding: 20px;
            background: rgba(221, 221, 221, 0.8);
        }
        .footer {
            text-align: center;
            padding: 20px;
            background: rgba(51, 51, 51, 0.8);
            color: white;
            position: absolute;
            width: 100%;
            bottom: 0;
        }
    </style>
    </head>
    <body>
        <div class="header">
        <h1>Welcome to Mega City Cab Service</h1>
    </div>
    <div class="nav">
        <a href="index.jsp">Home</a>
        <a href="booking.jsp">Ride</a>
        <a href="contact_us.jsp">Contact us</a>
        <a href="about_us.jsp">About us</a>
        <a href="login.jsp">Login</a>
       
    </div>
    <div class="hero">
        <h2>Explore Our Services</h2>
        <p>Your journey to excellence starts here.</p>
    </div>
    
    <div class="footer">
        <p>&copy; 2025 All Rights Reserved</p>
    </div>
    </body>
</html>
