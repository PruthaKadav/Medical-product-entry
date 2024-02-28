<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="./base.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    
    <meta charset="ISO-8859-1">
    <title>Beanyy's Medico!!</title>
    <!-- Custom Styles -->
    <style>
        body {
            /* Specify the path to your background image */
            background-size: cover;
            background-repeat: no-repeat;
            font-family: 'Comic Sans MS', cursive;
            margin: 0;
            padding: 0;
        }

        .container {
            padding: 40px 20px;
            position: relative;
            z-index: 1;
        }

        .jumbotron {
            background-color: rgba(255, 255, 255, 0.8); /* White background with opacity */
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .jumbotron h1 {
            color: #ff5e7d; /* Pink text */
            font-size: 36px;
            text-align: center;
            margin-bottom: 30px;
            font-family: 'Comic Sans MS', cursive;
        }

        .table {
            background-color: rgba(255, 255, 255, 0.8); /* White background for table with opacity */
            border-radius: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .table th {
            background-color: #ff5e7d; /* Pink background for table header */
            color: #ffffff; /* White text */
        }

        .table th, .table td {
            text-align: center;
            vertical-align: middle !important;
        }

        .btn-outline-success {
            background-color: #ffffff;
            color: #75e6da; /* Light blue color for button text */
            border: 2px solid #75e6da; /* Light blue border */
            border-radius: 20px;
            transition: all 0.3s ease;
            font-family: 'Comic Sans MS', cursive;
        }

        .btn-outline-success:hover {
            background-color: #75e6da; /* Light blue background color on hover */
            color: #ffffff; /* White text on hover */
        }

        .btn-outline-danger {
            background-color: #ffffff;
            color: #ff5e7d; /* Pink color for button text */
            border: 2px solid #ff5e7d; /* Pink border */
            border-radius: 20px;
            transition: all 0.3s ease;
            font-family: 'Comic Sans MS', cursive;
        }

        .btn-outline-danger:hover {
            background-color: #ff5e7d; /* Pink background color on hover */
            color: #ffffff; /* White text on hover */
        }

        .btn-outline-primary {
            background-color: #ffffff;
            color: #75a2ea; /* Light purple color for button text */
            border: 2px solid #75a2ea; /* Light purple border */
            border-radius: 20px;
            transition: all 0.3s ease;
            font-family: 'Comic Sans MS', cursive;
        }

        .btn-outline-primary:hover {
            background-color: #75a2ea; /* Light purple background color on hover */
            color: #ffffff; /* White text on hover */
        }

        .btn-icon {
            font-size: 20px;
            margin-right: 5px;
        }

        .illustration {
            position: absolute;
            bottom: 20px;
            right: 20px;
            width: 200px;
            height: auto;
            z-index: -1;
        }
    </style>
</head>
<body >
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="jumbotron">
                <h1>Welcome to Beanyy's Medico</h1>
                <table class="table">
                    <thead class="table-danger">
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${products }" var="p">
                        <tr>
                            <th scope="row">BEANYYMED${p.id }</th>
                            <td>${p.name }</td>
                            <td>${p.description }</td>
                            <td class="font-weight-bold">&#x20B9;${p.price }</td>
                            <td>${p.quantity }</td>
                            <td>
                                <a href="delete/${p.id }" class="btn btn-outline-danger btn-icon"><i class="fas fa-heart-broken"></i></a>
                                <a href="update/${p.id }" class="btn btn-outline-primary btn-icon"><i class="fas fa-pencil-alt"></i></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="container text-center">
                    <a href="add-product" class="btn btn-outline-success">Add Product</a>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>




  

      
