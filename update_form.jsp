<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
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

        .btn-outline-danger {
            background-color: transparent;
            border-color: #ff6768; /* Cute pink border color */
            color: #ff6768; /* Cute pink text color */
            transition: color 0.3s, border-color 0.3s; /* Smooth transition on hover */
        }

        .btn-outline-danger:hover {
            background-color: #ffdadf; /* Light pink background on hover */
            color: #ff6768; /* Cute pink text color */
        }

        .btn-warning {
            background-color: #ffcfda; /* Cute pink background for update button */
            color: #ff6768; /* Cute pink text color */
            border: none; /* No border */
            transition: background-color 0.3s ease; /* Smooth transition on hover */
        }

        .btn-warning:hover {
            background-color: #ffc0d1; /* Lighter pink background on hover */
            color: #fff; /* White text color on hover */
        }

        label {
            color: #ff66cc; /* Cute pink label text color */
        }

        .form-control::placeholder {
            color: #ff99cc; /* Lighter pink placeholder text color */
            opacity: 1; /* Full opacity */
        }

        .text-center {
            color: #ff66cc; /* Cute pink text color for form heading */
            font-size: 24px; /* Larger font size */
            text-transform: uppercase; /* Uppercase text */
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-body">
                    <h3 class="text-center">Make Your Changes</h3>
                    <form action="/productcurdapp/handle-product" method="post">
                        <input type="hidden" value="${product.id }" name="id" />
                        <div class="form-group">
                            <label for="productName">Product Name</label>
                            <input type="text" class="form-control" id="Name" name="Name" placeholder="Enter Product Name" value="${product.name }">
                        </div>
                        <div class="form-group">
                            <label for="productDescription">Product Description</label>
                            <textarea class="form-control" id="description" name="description" rows="3" placeholder="Enter Product Description" required>${product.description }</textarea>
                        </div>
                        <div class="form-group">
                            <label for="productPrice">Product Price</label>
                            <input type="text" class="form-control" id="price" name="price" placeholder="Enter Product Price" step="0.01" value="${product.price }">
                        </div>
                        <div class="form-group">
                            <label for="productQuantity">Quantity</label>
                            <input type="number" class="form-control" id="quantity" name="quantity" placeholder="Enter Quantity" value="${product.quantity }">
                        </div>
                        <div class="container text-center">
                            <a href="/productcurdapp/home" class="btn btn-outline-danger">Back</a>
                            <button type="submit" class="btn btn-warning">Update</button>
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
