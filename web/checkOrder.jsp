<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/checkOrder.css">
    </head>
    <body>
        <div class="side1">
            <header>
                <div><img src="image/icon.png"></div>
                <div><h1>Check Your Order</h1></div>
            </header>
            <div class="content">
                <div class="wrap">
                    <jsp:useBean id="orderDetails" class="com.object.GenericList" scope="request"/>
                    <jsp:useBean id="orderInfo" class="com.object.GenericList" scope="request"/>
                    <% int index = -1; %>
                    <c:forEach items="${orderDetails.listAll}" var="orderList">
                        <% index +=1; 
                           request.setAttribute("index",index);
                        %>
                        <div class="container">
                            <h1>ORDER ID : ${orderInfo.listAll.get(index).orderid}</h1>
                            <br>
                            <h5>PHONE NUMBER : ${orderInfo.listAll.get(index).phoneno}</h5>
                            <h5>ORDER STATUS: ${orderInfo.listAll.get(index).orderstatus}</h5>
                            <h5>ORDER AMOUNT: RM <fmt:formatNumber value="${orderInfo.listAll.get(index).amount}" pattern="#0.00" /></h5>
                            <br>
                            <b>Drinks</b>
                            <c:forEach items="${orderList.listAll}" var="order">
                                <c:if test="${'Drinks'.equalsIgnoreCase(order.category)}">
                                    <p>${order.qty} x ${order.name}</p>
                                </c:if>
                            </c:forEach>
                            <br><b>Food</b>
                            <c:forEach items="${orderList.listAll}" var="order">
                                <c:if test="${!'Drinks'.equalsIgnoreCase(order.category)}">
                                    <p>${order.qty} x ${order.name}</p>
                                </c:if>
                            </c:forEach>    
                        </div>
                        
                    </c:forEach>
                </div>
                <div><a href="loadMenu">Back to shop</a></div>
            </div>
        </div>
        <div class="side2">
            <div class="sideDetail">
                <h1>Check</h1>
                <form action="checkOrder" method="get">
                    <label>Phone Number</label>
                    <input type="text" name="phoneno" placeholder="eg: 011255909091" required/>
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