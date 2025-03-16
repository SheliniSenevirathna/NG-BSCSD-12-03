<%-- 
    Document   : billing.jsp
    Created on : Mar 15, 2025, 8:57:41 PM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Billing | Mega City Cab</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        body {
            background: url('img/billing-bg.jpg') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
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
        .billing-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 900px;
            text-align: center;
            border: 3px solid #b8860b;
            position: relative;
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            font-size: 20px;
            color: #b8860b;
            cursor: pointer;
            background: none;
            border: none;
            font-weight: bold;
        }
        .close-btn:hover {
            color: red;
        }
        h2 {
            color: #b8860b;
            font-size: 24px;
            margin-bottom: 15px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            border: 2px solid #b8860b;
            padding: 10px;
            text-align: center;
        }
        th {
            background: #b8860b;
            color: white;
        }
        td {
            background: #fff;
        }
        .paid {
            color: green;
            font-weight: bold;
        }
        .pending {
            color: red;
            font-weight: bold;
        }
        .pay-btn {
            background: #b8860b;
            color: white;
            border: none;
            padding: 8px;
            font-size: 14px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
        }
        .pay-btn:hover {
            background: #a07500;
            transform: scale(1.05);
        }
    </style>
</head>
    </head>
    <body>
        <div class="overlay"></div>

    <div class="billing-container">
        <!-- Close Button to go back to Home -->
        <button class="close-btn" onclick="window.location.href='booking.jsp'">❌</button>

        <h2>Your Billing Details</h2>

        <table>
            <thead>
                <tr>
                    <th>Ride Details</th>
                    <th>Date</th>
                    <th>Start Meter</th>
                    <th>End Meter</th>
                    <th>Fare</th>
                    <th>Discount</th>
                    <th>Tax</th>
                    <th>Total Bill</th>
                    <th>Payment Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Downtown to Airport</td>
                    <td>March 10, 2025</td>
                    <td>12500</td>
                    <td>12750</td>
                    <td>$25.00</td>
                    <td>$2.00</td>
                    <td>$1.50</td>
                    <td>$24.50</td>
                    <td class="paid">Paid</td>
                    <td>✔</td>
                </tr>
                <tr>
                    <td>Main Street to Shopping Mall</td>
                    <td>March 12, 2025</td>
                    <td>12800</td>
                    <td>12950</td>
                    <td>$18.00</td>
                    <td>$0.00</td>
                    <td>$1.80</td>
                    <td>$19.80</td>
                    <td class="pending">Pending</td>
                    <td><button class="pay-btn" onclick="window.location.href='payment.html'">Pay Now</button></td>
                </tr>
                <tr>
                    <td>City Square to Hotel Grand</td>
                    <td>March 15, 2025</td>
                    <td>13000</td>
                    <td>13200</td>
                    <td>$22.00</td>
                    <td>$1.00</td>
                    <td>$2.10</td>
                    <td>$23.10</td>
                    <td class="pending">Pending</td>
                    <td><button class="pay-btn" onclick="window.location.href='payment.html'">Pay Now</button></td>
                </tr>
            </tbody>
        </table>
    </div>
    </body>
</html>
