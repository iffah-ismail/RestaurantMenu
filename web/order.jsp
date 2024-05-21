<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <html>
                <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <meta charset="UTF-8">
                <link rel="stylesheet" href="css/general.css">
                <link rel="stylesheet" href="css/order.css">
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
                            <li><a href="MenuServlet?action=new"><i class="fas fa-plus"></i>Add new item</a></li>
                            <li><a href="loadOrder"><i class="fas fa-list" style="color: #000000;"></i>Order List</a></li>
                            

                        </ul>
                    </div>

                    <div class="main_content">
                        <div class="header">Welcome, UMT Cafe Cashier. Have a good day working! </div>

                        <div class="info">
                            <div class="moveTable">
                                <h1 class="sec">Order List</h1><br>
                                <table>
                                    <hr><br>
                                    <thead>
                                        <tr>
                                            <th>Order ID</th>
                                            <th>Phone Number</th>
                                            <th colspan="2">Action</th>
                                        </tr>
                                    </thead>

                                    <tbody>
                                        <% int var=-1; %>
                                            <jsp:useBean id="orderInfo" class="com.object.GenericList"
                                                scope="request" />
                                            <c:forEach items="${orderInfo.listAll}" var="order">
                                                <% var+=1; String color=(var%2==0)?"edit":"delete"; %>
                                                    <tr id="<%=color%>">
                                                        <td><a
                                                                href="orderDetails?action=detail&phoneno=${order.phoneno}&id=${order.orderid}">${order.orderid}</a>
                                                        </td>
                                                        <td><a
                                                                href="orderDetails?action=detail&phoneno=${order.phoneno}&id=${order.orderid}">${order.phoneno}</a>
                                                        </td>
                                                        <td><button class="finish" onclick="deleteRow(this)"><a
                                                                    href="orderDetails?action=finish&id=${order.orderid}">Finished</a></button>
                                                        </td>
                                                        <td><button onclick="deleteRow(this)"><a
                                                                    href="orderDetails?action=delete&id=${order.orderid}">Delete</a></button>
                                                        </td>
                                                    </tr>
                                            </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <script>
                        var paginationLinks = document.querySelectorAll('.pagination a');

                        paginationLinks.forEach(function (link) {
                            link.addEventListener('click', function (e) {
                                e.preventDefault();

                                // Remove active class from all links
                                paginationLinks.forEach(function (link) {
                                    link.classList.remove('active');
                                });

                                // Add active class to the clicked link
                                this.classList.add('active');

                                var currentPage = parseInt(this.innerText);
                                // Perform your custom logic based on the clicked page
                                console.log('Navigating to page', currentPage);
                            });
                        });
                    </script>

                    <script>
                        function deleteRow(row) {
                            var confirmation = confirm("Are you sure you want to delete this order record?");
                            if (confirmation) {
                                var i = row.parentNode.parentNode.rowIndex;
                                document.querySelector(".lowerTable").deleteRow(i);
                            }
                        }
                    </script>
            </body>

            </html>
