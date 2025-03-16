<%-- 
    Document   : addvehicle.jsp
    Created on : Mar 16, 2025, 9:40:12 AM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | Mega City Cab</title>
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
            position: relative;
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 400px;
            text-align: center;
            border: 3px solid #b8860b;
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 10px;
            background: none;
            border: none;
            font-size: 20px;
            font-weight: bold;
            cursor: pointer;
            color: #b8860b;
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
        }
        button:hover {
            background: #a07500;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <div class="overlay"></div>

    <div class="container" id="vehicleForm">
        <button class="close-btn" onclick="closeForm()">&times;</button>
        <h2>Add Vehicle</h2>
        <form>
            <input type="text" placeholder="Vehicle Model" required>
            <input type="text" placeholder="License Plate" required>
            <select required>
                <option value="" disabled selected>Select Vehicle Type</option>
                <option value="Sedan">Sedan</option>
                <option value="SUV">SUV</option>
                <option value="Hatchback">Hatchback</option>
                <option value="Truck">Truck</option>
            </select>
            <input type="text" placeholder="Color" required>
            <input type="number" placeholder="Seating Capacity" required>
            <button type="submit">Add Vehicle</button>
        </form>
    </div>

    <script>
        function closeForm() {
            document.getElementById('vehicleForm').style.display = 'none';
        }
    </script>
</body>
</html>
