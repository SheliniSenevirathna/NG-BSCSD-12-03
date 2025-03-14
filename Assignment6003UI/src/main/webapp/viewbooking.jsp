<%-- 
    Document   : viewbooking.jsp
    Created on : Mar 14, 2025, 12:11:51 AM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bookings</h1>
    <table border="1">
        <tr>
            <th>Booking ID</th>
            <th>Customer ID</th>
            <th>Destination</th>
            <th>Distance (km)</th>
            <th>Total Fare (Rs.)</th>
        </tr>
        <c:forEach var="booking" items="${bookings}">
            <tr>
                <td>${booking.bookingId}</td>
                <td>${booking.customerId}</td>
                <td>${booking.destination}</td>
                <td>${booking.distance}</td>
                <td>${booking.totalFare}</td>
            </tr>
        </c:forEach>
    </table>
    </body>
</html>
