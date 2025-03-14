<%-- 
    Document   : login
    Created on : Mar 5, 2025, 10:36:44 AM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
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
        .login-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width: 350px;
            /* text-align: center; */
            border: 3px solid #b8860b;
        }
        .close-btn {
            position: inherit;
            top: 10px;
            right: 15px;
            font-size: 20px;
            color: #b8860b;
            cursor: pointer;
            background: none;
            border: none;
            text-align: right;
           
        }
        .close-btn:hover {
            color: red;
        }
        h2 {
            color: #b8860b;
            font-size: 24px;
            margin-bottom: 15px;
        }
        input {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 2px solid #b8860b;
            border-radius: 6px;
            font-size: 16px;
        }
        .forgot-password {
            text-align: right;
            font-size: 14px;
            margin-bottom: 10px;
        }
        .forgot-password a {
            color: #b8860b;
            text-decoration: none;
        }
        .forgot-password a:hover {
            text-decoration: underline;
        }
        .buttonx {
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
        .signup-link {
            margin-top: 15px;
            font-size: 14px;
        }
        .signup-link a {
            color: #b8860b;
            text-decoration: none;
            font-weight: bold;
        }
        .signup-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <div id="error-message" class="error-message" style="display: none;"></div>
        <form id="login-form" name="login-form">
            <input type="text" id="username" placeholder="Username" required value="admin">
            <input type="password" id="password" placeholder="Password" required value="a123">
            <button class="buttonx" type="submit">Login</button>
        </form>
        <div class="signup-link">
            Don't have an account? <a href="register.jsp">Sign Up</a>
        </div>
    </div>

    <script>
        // When the DOM is ready
        document.addEventListener('DOMContentLoaded', function() {
            // Handle form submission
            document.getElementById('login-form').addEventListener('submit', function(e) {
                e.preventDefault(); // Prevent default form submission
    
                // Get the username and password values
                const username = document.getElementById('username').value;
                const password = document.getElementById('password').value;
    
                // Validate inputs
                if (!username || !password) {
                    document.getElementById('error-message').innerText = 'Please enter both username and password.';
                    document.getElementById('error-message').style.display = 'block';
                    return;
                }
    
                // Prepare payload
                const payload = { username, password };
    
                // Make API call using Axios
                axios.post('http://localhost:8080/megacitycab-1.0-SNAPSHOT/api/users/authenticate', payload, {
                    headers: {
                        'Content-Type': 'application/json',
                    },
                })
                .then(function(response) {
                    // Handle success
                    console.log('Response:', response);
                    if (response.status === 200) {
                        const { username, usertype } = response.data; // Extract username and usertype from the response
    
                        // Store user details in localStorage
                        localStorage.setItem('username', username);
                        localStorage.setItem('usertype', usertype);
    
                        // Redirect based on usertype
                        if (usertype === 'admin') {
                            window.location.href = 'adminpanel.jsp'; // Redirect to admin dashboard
                        } else if (usertype === 'driver') {
                            window.location.href = 'driverpanel.jsp'; // Redirect to driver dashboard
                        } else {
                            window.location.href = 'dashboard.jsp'; // Default dashboard for other user types
                        }
                    }
                })
                .catch(function(error) {
                    // Handle error
                    if (error.response) {
                        if (error.response.status === 401) {
                            document.getElementById('error-message').innerText = 'Incorrect credentials. Please try again.';
                        } else {
                            document.getElementById('error-message').innerText = 'An error occurred. Please try again later.';
                        }
                    } else {
                        document.getElementById('error-message').innerText = 'An error occurred. Please try again later.';
                    }
                    document.getElementById('error-message').style.display = 'block';
                });
            });
        });
    </script>
</body>
</html>

