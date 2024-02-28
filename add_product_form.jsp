<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details Form</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
        integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
        crossorigin="anonymous">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #ffe0f5; /* Light pink background */
            font-family: 'Comic Sans MS', cursive, sans-serif; /* Fun font */
        }

        .card {
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color: #fff; /* White background for card */
        }

        .btn-back {
            background-color: #ff8080; /* Light pink background for "Back" button */
            color: #fff; /* White text color */
            border: none; /* No border */
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }

        .btn-back:hover {
            background-color: #ff6699; /* Darker pink background on hover */
        }

        .btn-submit {
            background-color: #ff99cc; /* Lighter pink background for submit button */
            color: #fff; /* White text color */
            border: none; /* No border */
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }

        .btn-submit:hover {
            background-color: #ff66cc; /* Darker pink background on hover */
        }

        label {
            color: #ff66cc; /* Pink label text color */
        }

        .form-control::placeholder {
            color: #ff99cc; /* Lighter pink placeholder text color */
            opacity: 1; /* Full opacity */
        }

        .form-heading {
            color: #ff66cc; /* Cute pink color for form heading */
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center mb-4 form-heading">Fill in the Details</h3> <!-- Added form-heading class -->
                    <form action="handle-product" method="post">
                        <div class="form-group">
                            <label for="productName">Product Name</label>
                            <input type="text" class="form-control" id="Name" name="Name" placeholder="Enter Product Name" required>
                        </div>
                        <div class="form-group">
                            <label for="productDescription">Product Description</label>
                            <textarea class="form-control" id="description" name="description" rows="3" placeholder="Enter Product Description" required></textarea>
                        </div>
                        <div class="form-group">
                            <label for="productPrice">Product Price</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">&#8377;</span> <!-- Indian Rupee symbol -->
                                </div>
                                <input type="number" class="form-control" id="price" name="price" placeholder="Enter Product Price" step="0.01" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="productQuantity">Quantity</label>
                            <input type="number" class="form-control" id="quantity" name="quantity" placeholder="Enter Quantity" required>
                        </div>
                        <div class="container text-center">
                            <a href="/productcurdapp/home" class="btn btn-back mr-2">Back</a>
                            <button type="submit" class="btn btn-submit">Add</button>
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



       


          
