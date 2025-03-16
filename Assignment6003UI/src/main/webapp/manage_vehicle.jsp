<%-- 
    Document   : manage_vehicle
    Created on : Mar 16, 2025, 9:33:17 AM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Vehicles | Mega City Cab</title>
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
            background: url('img/admin-bg.jpg') no-repeat center center/cover;
            position: relative;
            color: white;
        }
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6); /* Dark overlay */
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
        .vehicle-table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.9);
            color: black;
            border-radius: 10px;
            overflow: hidden;
        }
        .vehicle-table th, .vehicle-table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .vehicle-table th {
            background: #b8860b;
            color: white;
        }
        .action-btn {
            padding: 8px 12px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
        }
        .edit-btn {
            background: #28a745;
            color: white;
        }
        .delete-btn {
            background: #dc3545;
            color: white;
        }
        .edit-btn:hover {
            background: #218838;
        }
        .delete-btn:hover {
            background: #c82333;
        }
    </style>
    </head>
    <body>
        <div class="overlay"></div> <!-- Background Overlay -->

    <div class="sidebar">
        <h2>Admin Panel</h2>
        <ul>
            <li><a href="adminpanel.html">Dashboard</a></li>
            <li><a href="manage_cus.html">Manage Customers</a></li>
            <li><a href="manage_booking.html">Manage Bookings</a></li>
            <li><a href="manage_vehicle.html">Manage Vehicles</a></li>
            <li><a href="manage_drivers.html">Manage Drivers</a></li>
            <li><a href="payment.html">Payments</a></li>
            <li><a href="index.html">Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <div class="header">
            Manage Vehicles
        </div>

        <table class="vehicle-table">
            <thead>
                <tr>
                    <th>Vehicle ID</th>
                    <th>Model</th>
                    <th>Type</th>
                    <th>License Plate</th>
                    <th>Availability</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>V001</td>
                    <td>Toyota Prius</td>
                    <td>Sedan</td>
                    <td>WP ABC-1234</td>
                    <td>Available</td>
                    <td>
                        <button class="action-btn add-btn" onclick="window.location.href='addvehicle.jsp'">Add</button>
                        <button class="action-btn delete-btn">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>V002</td>
                    <td>Nissan Leaf</td>
                    <td>Electric</td>
                    <td>WP XYZ-5678</td>
                    <td>In Service</td>
                    <td>
                        <button class="action-btn add-btn" onclick="window.location.href='addvehicle.jsp'">Add</button>
                        <button class="action-btn delete-btn">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>V003</td>
                    <td>Honda Civic</td>
                    <td>Sedan</td>
                    <td>CP PQR-9876</td>
                    <td>Available</td>
                    <td>
                        <button class="action-btn add-btn" onclick="window.location.href='addvehicle.jsp'">Add</button>
                        <button class="action-btn delete-btn">Edit</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </body>
</html>
