<%-- 
    Document   : viewbooking.jsp
    Created on : Mar 14, 2025, 12:03:01 AM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Booking</title>
         <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        body {
            background: url('img/cars-sport-car-orange-photography-dark-background-orange-coupe-wallpaper-preview.jpg') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
        }
        /* Overlay effect for readability */
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: -1;
        }
        .header {
            background: linear-gradient(to right, #333, #555);
            color: white;
            padding: 15px;
            text-align: center;
            width: 100%;
            font-size: 22px;
        }
        .nav {
            display: flex;
            justify-content: center;
            background: rgba(68, 68, 68, 0.9);
            padding: 12px;
            width: 100%;
        }
        .nav a {
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            font-size: 16px;
            transition: 0.3s;
        }
        .nav a:hover {
            background: #b8860b;
            border-radius: 5px;
        }
        .container {
            background: rgba(255, 255, 255, 0.97);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
            border: 3px solid #b8860b;
            position: relative;
        }
        h2 {
            margin-bottom: 15px;
            color: #b8860b;
            font-size: 24px;
        }
        .form-group {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
        }
        .form-group input,
        .form-group select {
            width: 100%;
        }
        input, select, button {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 2px solid #b8860b;
            border-radius: 6px;
            font-size: 16px;
        }
        button {
            background: #b8860b;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
            transition: 0.3s;
            margin-top: 10px;
        }
        button:hover {
            background: #a07500;
            transform: scale(1.05);
        }
        .footer {
            text-align: center;
            padding: 15px;
            background: rgba(51, 51, 51, 0.9);
            color: white;
            width: 100%;
            position: absolute;
            bottom: 0;
        }
        
    </style>
    </head>
    <body>
        <div class="container">
        <h2>Add New Booking</h2>
    <form action="Booking" method="post">
        <input type="hidden" name="action" value="add">
        Name: <input type="text" name="name" required><br>
        Address: <input type="text" name="address" required><br>
        NIC: <input type="text" name="nic" required><br>
        Phone: <input type="text" name="phone" required><br>
        Destination: <input type="text" name="destination" required><br>
        Distance (km): <input type="number" step="0.1" name="distance" required><br>
        <input type="submit" value="Add Booking">
        <input type="button" value="View Bill" onclick="window.location.href='billing.jsp';">
    </form>
        </div>
    </body>
</html>
