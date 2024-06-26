<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Charitable Organisation">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Charitable Organization</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #232f3e;
            color: #fff;
            padding: 20px;
            display: flex;
            justify-content: space-between; 
            align-items: center; 
        }

        #title {
            margin: 0;
            flex-grow: 1; 
        }

        nav {
        background-color: #232f3e; 
        padding: 10px;
        margin-right: 20px;
    }

        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        .navitem {
            display: inline;
            margin-right: 20px;
        }

        .navitem a {
            text-decoration: none;
            color: #fff; 
        }

        .navitem a.active {
            font-weight: bold;
        }

        h2 {
            text-align: center;
        }

       .buttonstwo {
    text-align: center;
    margin-top: 20px;
}

        .item {
            display: inline-block;
    padding: 12px 24px;
    background-color: #ff9900;
    color: #fff;
    text-decoration: none;
    border-radius: 25px;
    border: 2px solid #ff9900;
    transition: background-color 0.3s, color 0.3s;
        }
        .item-button:hover {
    background-color: #ffcc66;
    color: #232f3e;
}

.logout-btn {
    color: #fff;
    text-decoration: none;
    padding: 10px 20px;
    border-radius: 5px;
    background-color: #ff0000;
    border: none; /* Remove border */
    transition: background-color 0.3s; /* Add transition effect */
}

.logout-btn:hover {
    background-color: #ff6666;
}

       
    </style>
</head>
<body>
<header>
    <h1 id="title">Food Waste Reduction Platform</h1>
    <nav>
        <ul id="navbar">
            <li class="navitem"><a href="./HomePage.jsp">Home</a></li>
            <li class="navitem"><a href="./ConsumerFirst.jsp">Consumer</a></li>
            <li class="navitem"><a href="./RetailerFirst.jsp">Retailer</a></li>
            <li class="navitem"><a class="active">Charitable Organization</a></li>
            <li class="navitem"><a class="logout-btn" href="./login.jsp">Logout</a></li>
        </ul>
    </nav>
</header>
<h2>Hello Charitable Organisation. Welcome</h2><br>
<div class="buttonstwo">
    <a href="Donation.jsp" class="item">Food for Donation</a>
    
</div>
</body>
</html>
