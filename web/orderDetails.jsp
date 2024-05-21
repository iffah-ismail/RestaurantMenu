<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <html>
            <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
        <head>
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta charset="UTF-8">
            <link rel="stylesheet" href="css/general.css">
            <link rel="stylesheet" href="css/orderDetails.css">
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">

            <style>
                body {
                    font-family: Poppins, Arial, Verdana, sans-serif;
                }
            </style>
        </head>

        <body>

            <div class="wrapper">
                <div class="sidebar">
                    <h2><img src="image/icon.png" alt="UMT CAFE" style="width:150px; height:auto;"></h2>

                    <ul>
                        <li><a href="login?action=logout"><i class="fas fa-sign-out-alt"></i>Log Out</a></li>
                        <li><a href="MenuServlet"><i class="fas fa-hamburger"></i>Menu
                                Catalogue</a></li>
                        <li><a href="MenuServlet?action=new"><i class="fas fa-plus"></i>Add new item</a>
                        </li>
                        <li><a href="loadOrder"><i class="fas fa-list" style="color: #000000;"></i>Order List</a></li>

                    </ul>
                </div>

                <div class="main_content">

                    <div class="header"
                        style="box-shadow: rgba(50, 50, 93, 0.25) 0px 13px 27px -5px, rgba(0, 0, 0, 0.3) 0px 8px 16px -8px">
                        Welcome, UMT Cafe Cashier. Have a good day working! </div>


                    <jsp:useBean id="orderDetails" class="com.object.GenericList" scope="request" />
                    <div class="container">
                        <h1>Order Details</h1>
                        <h5>ORDER ID : ${orderid}</h5>
                        <h5>PHONE NUMBER : <br>${phoneno}</h5>

                        <b>Drinks</b><br>
                        <c:forEach items="${orderDetails.listAll}" var="order">
                            <c:if test="${!'main'.equalsIgnoreCase(order.category)}">
                                <p>${order.qty} x ${order.name}</p>
                            </c:if>
                        </c:forEach>
                                <br>
                        <b>Food</b><br>
                        <c:forEach items="${orderDetails.listAll}" var="order">
                            <c:if test="${'main'.equalsIgnoreCase(order.category)}">
                                <p>${order.qty} x ${order.name}</p>
                            </c:if>
                        </c:forEach>

                    </div>
                </div>

            </div>


        </body>

        </html>
