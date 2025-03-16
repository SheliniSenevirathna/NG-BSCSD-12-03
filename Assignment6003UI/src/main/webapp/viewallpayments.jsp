<%-- 
    Document   : viewallpayments.jsp
    Created on : Mar 16, 2025, 10:27:21 AM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Payments | Mega City Cab</title>
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
        .payment-table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.9);
            color: black;
            border-radius: 10px;
            overflow: hidden;
        }
        .payment-table th, .payment-table td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        .payment-table th {
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
        .view-btn {
            background: #17a2b8;
            color: white;
        }
        .refund-btn {
            background: #dc3545;
            color: white;
        }
        .view-btn:hover {
            background: #138496;
        }
        .refund-btn:hover {
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
            <li><a href="addvehicle.jsp">Manage Vehicles</a></li>
            <li><a href="adddriver.jsp">Manage Drivers</a></li>
            <li><a href="viewallpayments.jsp">Payments</a></li>
            <li><a href="index.html">Logout</a></li>
        </ul>
    </div>

    <div class="main-content">
        <div class="header">
            Manage Payments
        </div>

        <table class="payment-table">
            <thead>
                <tr>
                    <th>Payment ID</th>
                    <th>Customer</th>
                    <th>Booking ID</th>
                    <th>Amount</th>
                    <th>Payment Method</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>P001</td>
                    <td>John Doe</td>
                    <td>B1001</td>
                    <td>$50</td>
                    <td>Credit Card</td>
                    <td>Completed</td>
                    <td>
                        <button class="action-btn view-btn">View</button>
                        <button class="action-btn refund-btn">Refund</button>
                    </td>
                </tr>
                <tr>
                    <td>P002</td>
                    <td>Michael Smith</td>
                    <td>B1002</td>
                    <td>$75</td>
                    <td>PayPal</td>
                    <td>Pending</td>
                    <td>
                        <button class="action-btn view-btn">View</button>
                        <button class="action-btn refund-btn">Refund</button>
                    </td>
                </tr>
                <tr>
                    <td>P003</td>
                    <td>David Fernando</td>
                    <td>B1003</td>
                    <td>$40</td>
                    <td>Cash</td>
                    <td>Completed</td>
                    <td>
                        <button class="action-btn view-btn">View</button>
                        <button class="action-btn refund-btn">Refund</button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>

</body>
</html>
