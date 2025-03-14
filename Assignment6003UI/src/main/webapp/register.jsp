<%-- 
    Document   : register.jsp
    Created on : Mar 13, 2025, 11:23:15 PM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
    <title>Register | Mega City Cab</title>
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
        .register-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            width:500px;
            text-align: center;
            border: 3px solid #b8860b;
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
        .login-link {
            margin-top: 15px;
            font-size: 14px;
        }
        .login-link a {
            color: #b8860b;
            text-decoration: none;
            font-weight: bold;
        }
        .login-link a:hover {
            text-decoration: underline;
        }
    </style>
    </head>
    <body>
        <div class="overlay"></div>

    <div class="register-container">
        <h2>Register</h2>
        <form id="register-form" name="register-form">
            <input type="text" id="fullname"  placeholder="Full Name" required>
            <input type="text" id="address"  placeholder="Address" required>
            <input type="email" id="email"  placeholder="Email" required>
            <input type="text" id="contact_no"  placeholder="Contact No" required>
            <input type="text" id="nic" placeholder="NIC" required>
            <input type="text" id="username"  placeholder="Username" required>
            <input type="password" id="password"  placeholder="Password" required>
            
            <button type="submit">Register</button>
        </form>
        <div class="login-link">
            Already have an account? <a href="login.jsp">Login</a>
        </div>
    </div>
    <script>
        // When the DOM is ready
        document.addEventListener('DOMContentLoaded', function() {
            // Handle form submission
            document.getElementById('register-form').addEventListener('submit', function(e) {
                e.preventDefault(); // Prevent default form submission
    
                // Get the username and password values
                const us_loginusername = document.getElementById('username').value;
                const us_Password = document.getElementById('password').value;
                const us_Email = document.getElementById('email').value;
                const us_Contact_No = document.getElementById('contact_no').value;
                const us_fullname = document.getElementById('fullname').value;
                const us_Address = document.getElementById('address').value;
                const us_NIC = document.getElementById('nic').value;
                

                if (!us_loginusername || !us_Password || !us_Email || !us_Contact_No || !us_fullname || !address || !us_NIC) {
                showError('All fields are required.');
                return;
            }
    
                // Validate inputs
                // if (!username || !password) {
                //     document.getElementById('error-message').innerText = 'Please enter both username and password.';
                //     document.getElementById('error-message').style.display = 'block';
                //     return;
                // }
    
                // Prepare payload
                const payload = { us_loginusername,us_Password, us_Email, us_Contact_No, us_fullname, us_Address, us_NIC };
                console.log('Sending payload:', payload);
                
                // Make API call using Axios
                axios.post('http://localhost:8080/megacitycab-1.0-SNAPSHOT/api/users', payload, {
                    headers: {
                        'Content-Type': 'application/json',
                    },
                })
                .then(function(response) {
                    // Handle success
                    console.log('Response:', response);
                    if (response.status === 200) {
                        const resp = response.data; // Extract username and usertype from the response

                        alert(resp);
                        window.location.href = 'register.jsp'; // Redirect to login page
                } else {
                    showError('Unexpected response from server.');
    
                        // Store user details in localStorage
                        // localStorage.setItem('username', username);
                        // localStorage.setItem('usertype', usertype);
                        // localStorage.setItem('password', password);
    
                        
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
