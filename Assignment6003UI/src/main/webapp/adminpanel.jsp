<%-- 
    Document   : adminpanel.jsp
    Created on : Mar 13, 2025, 11:08:08 PM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel | Mega City Cab</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        body {
            display: flex;
            min-height: 100vh;
            background: url('img/cars-sport-car-orange-photography-dark-background-orange-coupe-wallpaper-preview.jpg') no-repeat center center/cover;
            position: relative;
            color: white;
        }
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6); /* Dark overlay for readability */
            z-index: -1;
        }
        .sidebar {
            width: 250px;
            height: 100vh;
            background: rgba(34, 34, 34, 0.9);
            color: white;
            padding-top: 20px;
            position: fixed;
        }
        .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #b8860b;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
        }
        .sidebar ul li {
            padding: 15px;
            text-align: center;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            display: block;
            transition: 0.3s;
        }
        .sidebar ul li a:hover {
            background: #b8860b;
            border-radius: 5px;
        }
        .main-content {
            margin-left: 250px;
            width: calc(100% - 250px);
            padding: 40px;
        }
        .header {
            background: rgba(184, 134, 11, 0.9);
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            border-radius: 10px;
        }
    </style>
    </head>
    <body>
        <div class="overlay"></div> <!-- Background Overlay -->

    <div class="sidebar">
        <h2>Admin Panel</h2>
        <ul>
            <li><a href="adminpanel.jsp">Dashboard</a></li>
            <li><a href="manage_cus.html">Manage Customers</a></li>
            <li><a href="manage_booking.html">Manage Bookings</a></li>
            <li><a href="manage_vehicle.html">Manage Vehicles</a></li>
            <li><a href="manage_drivers.html">Manage Drivers</a></li>
            <li><a href="payment.html">Payments</a></li>
            <li><a href="index.jsp.">Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <div class="header">
            Welcome, Admin!
        </div>
    </div>
    </body>
</html>
