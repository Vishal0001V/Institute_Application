<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transparent Login Form</title>
    <!-- Import Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    
    <style>
        /* Resetting default styles and setting the font */
        * {
            box-sizing: border-box; /* Ensures padding and border are included in the element's total width and height */
            margin: 0; /* Removes default margin */
            padding: 0; /* Removes default padding */
            font-family: 'Roboto', sans-serif; /* Sets the font family to 'Roboto' for all elements */
        }

        /* Styling the body with a light pink and lighter blue gradient background */
        body {
            background: linear-gradient(to right, rgba(255, 182, 193, 0.8), rgba(173, 216, 230, 0.8)); /* Light pink and lighter blue gradient */
            display: flex; /* Uses flexbox layout for centering content */
            align-items: center; /* Vertically centers content */
            justify-content: center; /* Horizontally centers content */
            height: 100vh; /* Sets the height to 100% of the viewport height */
            color: dark-black; /* Sets the text color to dark grey */
        }

        /* Background image with blur effect and decreased transparency */
        .background-image {
            position: fixed; /* Ensures the background image covers the whole viewport */
            top: 0; /* Positions the background image at the top */
            left: 0; /* Positions the background image at the left */
            width: 100%; /* Sets the width to 100% of the viewport */
            height: 100%; /* Sets the height to 100% of the viewport */
            background: url('https://images.unsplash.com/photo-1675701404729-5093af00cc9e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') center/cover no-repeat; /* Background image settings */
            filter: blur(3px); /* Applies a blur effect to the background image */
            opacity: 50; /* Decreased transparency by 20% */
            z-index: -1; /* Ensures the background image stays behind content */
        }

        /* Styling the login container */
        .login-container {
            background: rgba(230, 230, 230, 0.3); /* Increased transparency */
            padding: 2rem; /* Adds padding inside the container */
            border-radius: 8px; /* Rounds the corners of the container */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Adds a subtle shadow for a 3D effect */
            max-width: 400px; /* Sets the maximum width of the container */
            width: 100%; /* Sets the width to 100% of its parent element */
            z-index: 1; /* Ensures the login container stays above the background image */
        }

        /* Styling the heading */
        h1 {
            margin-bottom: 1.5rem; /* Adds space below the heading */
            text-align: center; /* Centers the text */
            font-size: 1.8rem; /* Sets the font size */
            color: black; /* Light pink color */
        }

        /* Styling the input groups */
        .input-group {
            margin-bottom: 1.5rem; /* Adds space below each input group */
        }

        /* Styling the labels */
        .input-group label {
            display: block; /* Makes the label a block element */
            margin-bottom: 0.5rem; /* Adds space below the label */
            font-black: bold; /* Makes the text bold */
        }

        /* Styling the input fields */
        .input-group input {
            width: 100%; /* Sets the width to 100% of its parent element */
            padding: 0.75rem; /* Adds padding inside the input */
            border: 1px solid #ddd; /* Sets a light grey border */
            border-radius: 100px; /* Rounds the corners of the input */
            transition: border-color 0.3s; /* Adds a transition effect for the border color */
        }

        /* Focus state for input fields */
        .input-group input:focus {
            border-color: blue; /* Changes the border color to pink when focused */
            outline: none; /* Removes the default outline */
        }

        /* Styling the login button */
        .login-btn {
            width: 100%; /* Sets the width to 100% of its parent element */
            padding: 1rem; /* Adds padding inside the button */
            background: #6e6ee6; /* Light pink color */
            border: none; /* Removes the border */
            border-radius: 100px; /* Rounds the corners of the button */
            color: black; /* Sets the text color to white */
            font-size: 1rem; /* Sets the font size */
            cursor: pointer; /* Changes the cursor to a pointer when hovering */
            transition: background 0.5s; /* Adds a transition effect for the background color */
        }

        /* Hover state for the login button */
        .login-btn:hover {
            background: ; /* Lighter blue color */
        }

        /* Styling the forgot password link */
        .forgot-pw {
            display: block; /* Makes the link a block element */
            margin-top: 1rem; /* Adds space above the link */
            text-align: center; /* Centers the text */
            color: black; /* Light pink color */
            text-decoration: none; /* Removes the underline */
            transition: color 10s; /* Adds a transition effect for the text color */
        }

        /* Hover state for the forgot password link */
        .forgot-pw:hover {
            color: blue; /* Lighter blue color */
        }
    </style>
</head>
<body>
    <!-- Background Image Container -->
 /* <div class="background-image"></div>
    
    <!-- Login Form Container -->
    <div class="login-container">
        <h1>Login</h1>
        <form action="log" >
            <div class="input-group">
                <label for="username" >Username</label>
                <input type="email" name="username" id="email" required>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" required>
            </div>
            <button type="submit" class="login-btn" >Login</button>
            <a href="reg" class="forgot-pw">Forgot Password?</a>
        </form>
    </div>
</body>
</html>
