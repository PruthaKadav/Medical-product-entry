<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beany's Login Page</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
        crossorigin="anonymous">
    <!-- Custom CSS for cuteness -->
    <style>
        body {
            background-color: #f8e9e9; /* Soft pink background */
            font-family: 'Comic Sans MS', cursive; /* Cute font */
            color: #ff66cc; /* Cute pink text color */
        }

        .card {
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fefefe; /* White background for card */
            border: none; /* No border */
        }

        .btn-login {
            background-color: #ff99cc; /* Cute pink background for login button */
            color: #fff; /* White text color */
            border: none; /* No border */
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }

        .btn-login:hover {
            background-color: #ff66cc; /* Lighter pink background on hover */
        }

        label {
            color: #ff66cc; /* Cute pink label text color */
        }

        .form-control::placeholder {
            color: #ff99cc; /* Lighter pink placeholder text color */
            opacity: 1; /* Full opacity */
        }

        .form-heading {
            color: #ff66cc; /* Cute pink color for form heading */
            font-size: 24px; /* Larger font size */
            text-transform: uppercase; /* Uppercase text */
        }
    </style>
</head>
<body>

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center mb-4 form-heading">Beanyy's staff please Login</h3>
                    <form>
                       
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" class="form-control" id="username" placeholder="Enter Username">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter Email">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" id="password" placeholder="Enter Password">
                        </div>
                       <div class="container text-center">
   							 <a href="/productcurdapp/home" class="btn btn-back mr-2" style="background-color: #ff99cc; color: #fff; border-color: #ff99cc; font-weight: bold; border-radius: 20px; padding: 10px 20px; text-decoration: none; transition: all 0.3s ease;">Login</a>
						</div>
                       
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
    crossorigin="anonymous"></script>

</body>
</html>


    