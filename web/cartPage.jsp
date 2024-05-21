<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/cart.css">
    </head>
    <body>
        <div class="side1">
            <header>
                <div><img src="image/icon.png"></div>
                <div><h1>Foods Cart</h1></div>
            </header>
            <div class="content">
                <div class="wrap">
                    <jsp:useBean id="orderList" class="com.object.GenericList" scope="session"/>
                    <c:forEach items="${orderList.listAll}" var="order">
                        <div class="items">
                            <div class="image">
                                <img src="data:${order.content};base64,${order.imageData}" alt="">
                            </div>
                            <p>${order.name}</p>
                            <div class="qty">
                                <p>${order.qty}</p>
                                <button class="add" ><a href="orderController?action=add&id=${order.id}">+</a></button>
                                <button class="minus" ><a href="orderController?action=minus&id=${order.id}">-</a></button>
                            </div>
                            <p>RM <fmt:formatNumber value="${order.amount}" pattern="#0.00" /></p>
                            <div class="cancel"><a href="orderController?action=delete&id=${order.id}">x</a></div>
                        </div>
                    </c:forEach>
                </div>
                <div><a href="loadMenu">Back to shop</a></div>
            </div>
        </div>
        <div class="side2">
            <div class="sideDetail">
                <h1>Payment</h1>
                <div>
                    <h4>Order Amount</h4>
                    <p>RM <fmt:formatNumber value="${totalAmount}" pattern="#0.00" /></p>
                </div>
                <p>Scan Here</p>
                <div><img src="image/qr.jpg" alt=""></div>
                <form action="orderLogs" method="get">
                    <label>Phone Number</label>
                    <input type="text" name="phoneno" placeholder="Insert your phone number" required/>
                    <div>
                        <input type="submit" value="Submit"/>  
                    </div>
                </form>
            </div>
        </div>
        <script>
            
        </script>
    </body>
</html>
