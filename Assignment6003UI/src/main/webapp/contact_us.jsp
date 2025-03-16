<%-- 
    Document   : contact_us.jsp
    Created on : Mar 15, 2025, 12:14:40 PM
    Author     : NEW
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us | Mega City Cab</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Arial', sans-serif;
        }
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            background: url('img/contact-bg.jpg') no-repeat center center/cover;
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
        .contact-container {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 50%;
            position: relative;
        }
        .close-btn {
            position: absolute;
            top: 10px;
            right: 15px;
            font-size: 20px;
            color: #b8860b;
            cursor: pointer;
            background: none;
            border: none;
        }
        .close-btn:hover {
            color: red;
        }
        h2 {
            color: #b8860b;
            margin-bottom: 10px;
        }
        p {
            color: #333;
            margin-bottom: 20px;
        }
        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        .contact-form textarea {
            height: 100px;
        }
        .btn {
            background: #b8860b;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            transition: 0.3s;
        }
        .btn:hover {
            background: #a07500;
        }
        .contact-info {
            margin-top: 20px;
            color: #333;
        }
        .contact-info p {
            margin: 5px 0;
        }
    </style>
    </head>
    <body>
        <div class="overlay"></div> <!-- Background Overlay -->

    <div class="contact-container" id="contactBox">
        <!-- Updated Close Button to Redirect to Index Page -->
        <button class="close-btn" onclick="window.location.href='index.jsp'">❌</button>
        <h2>Contact Us</h2>
        <p>Have a question? Get in touch with us!</p>

        <form class="contact-form">
            <input type="text" placeholder="Your Name" required>
            <input type="email" placeholder="Your Email" required>
            <textarea placeholder="Your Message" required></textarea>
            <button class="btn" type="submit">Send Message</button>
        </form>

        <div class="contact-info">
            <h3>Our Office</h3>
            <p>📍 123 Main Street, Colombo, Sri Lanka</p>
            <p>📞 +94 77 123 4567</p>
            <p>📧 support@megacitycab.com</p>
        </div>
    </div>
    </body>
</html>
