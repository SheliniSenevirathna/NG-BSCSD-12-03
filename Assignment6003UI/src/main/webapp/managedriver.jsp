<%-- 
    Document   : managedrvier.jsp
    Created on : Mar 16, 2025, 9:57:18 AM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Drivers | Mega City Cab</title>
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
        .container {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 500px;
            text-align: center;
            border: 3px solid #b8860b;
            margin: 20px;
        }
        h2 {
            color: #b8860b;
            font-size: 24px;
            margin-bottom: 15px;
        }
        input, select {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 2px solid #b8860b;
            border-radius: 6px;
            font-size: 16px;
        }
        button {
            width: 100%;
            background: #b8860b;
            color: white;
            border: none;
            padding: 12px;
            font-size: 18px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }
        button:hover {
            background: #a07500;
            transform: scale(1.05);
        }
        .driver-list {
            margin-top: 20px;
        }
        .driver-item {
            display: flex;
            justify-content: space-between;
            background: #fff;
            padding: 10px;
            border-radius: 6px;
            margin: 5px 0;
            border: 2px solid #b8860b;
        }
        .actions button {
            background: #ff6347;
            margin-left: 5px;
        }
        .actions button:hover {
            background: #d9534f;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>

    <div class="container" id="driverForm">
        <h2>Manage Drivers</h2>
        <input type="text" id="searchDriver" placeholder="Search Driver" onkeyup="searchDriver()">
        <form id="driverForm">
            <input type="text" id="driverName" placeholder="Driver Name" required>
            <input type="text" id="licenseNumber" placeholder="License Number" required>
            <input type="text" id="phoneNumber" placeholder="Phone Number" required>
            <input type="email" id="emailAddress" placeholder="Email Address" required>
            <select id="vehicleType" required>
                <option value="" disabled selected>Select Vehicle Type</option>
                <option value="Sedan">Sedan</option>
                <option value="SUV">SUV</option>
                <option value="Hatchback">Hatchback</option>
                <option value="Truck">Truck</option>
            </select>
            <button type="button" onclick="addDriver()">Add Driver</button>
        </form>
    </div>

    <div class="container driver-list" id="driverList">
        <h2>Driver List</h2>
        <div id="drivers"></div>
    </div>

    <script>
        let drivers = [];

        function addDriver() {
            const name = document.getElementById('driverName').value;
            const license = document.getElementById('licenseNumber').value;
            const phone = document.getElementById('phoneNumber').value;
            const email = document.getElementById('emailAddress').value;
            const vehicle = document.getElementById('vehicleType').value;
            
            if (name && license && phone && email && vehicle) {
                const driver = { name, license, phone, email, vehicle };
                drivers.push(driver);
                displayDrivers();
                document.getElementById('driverForm').reset();
            }
        }

        function deleteDriver(index) {
            drivers.splice(index, 1);
            displayDrivers();
        }

        function searchDriver() {
            const searchValue = document.getElementById('searchDriver').value.toLowerCase();
            displayDrivers(searchValue);
        }

        function displayDrivers(filter = "") {
            const driverContainer = document.getElementById('drivers');
            driverContainer.innerHTML = "";
            drivers.forEach((driver, index) => {
                if (driver.name.toLowerCase().includes(filter)) {
                    driverContainer.innerHTML += `
                        <div class="driver-item">
                            <div>
                                <strong>${driver.name}</strong><br>
                                License: ${driver.license} | Phone: ${driver.phone}
                            </div>
                            <div class="actions">
                                <button onclick="deleteDriver(${index})">Delete</button>
                            </div>
                        </div>`;
                }
            });
        }
    </script>
</body>
</html>

