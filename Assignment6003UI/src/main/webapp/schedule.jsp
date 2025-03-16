<%-- 
    Document   : schedule.jsp
    Created on : Mar 15, 2025, 5:48:24 PM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Schedule | Mega City Cab</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        body {
            background: url('img/schedule-bg.jpg') no-repeat center center/cover;
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
        .schedule-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 80%;
            max-width: 800px;
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
        .book-btn {
            background: #b8860b;
            color: white;
            border: none;
            padding: 12px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 15px;
        }
        .book-btn:hover {
            background: #a07500;
            transform: scale(1.05);
        }
    </style>
    </head>
    <body>
         <div class="overlay"></div>

    <div class="schedule-container">
        <!-- Close Button to go back to Home -->
        <button class="close-btn" onclick="window.location.href='index.jsp'">❌</button>

        <h2>Your Ride Schedule</h2>

        <table>
            <thead>
                <tr>
                    <th>Pickup Location</th>
                    <th>Destination</th>
                    <th>Date & Time</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Downtown</td>
                    <td>Airport</td>
                    <td>March 10, 2025 - 10:00 AM</td>
                    <td style="color: green;">Confirmed</td>
                </tr>
                <tr>
                    <td>Main Street</td>
                    <td>Shopping Mall</td>
                    <td>March 12, 2025 - 2:30 PM</td>
                    <td style="color: orange;">Pending</td>
                </tr>
                <tr>
                    <td>City Square</td>
                    <td>Hotel Grand</td>
                    <td>March 15, 2025 - 6:00 PM</td>
                    <td style="color: red;">Cancelled</td>
                </tr>
            </tbody>
        </table>

        <button class="book-btn" onclick="window.location.href='billing.jsp'">📅 View bill</button>
    </div>

    </body>
</html>
