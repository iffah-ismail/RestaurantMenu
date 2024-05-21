<%-- 
    Document   : Menu
    Created on : 18 Jun 2023, 8:26:04 pm
    Author     : Richelle Juleanne
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.cs">
<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
<title>Menu Management</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins">
<style>
body {
  margin: 0;
  font-family: "Poppins", sans-serif;
  background-color: #F2F3F4;
  
}

.topnav {
  background-color: white;
  box-shadow: 0 2px 4px 0 rgba(0,0,0,.2);
  position: fixed;
  width: 100%;
  overflow: visible;
  margin-top:0;
  text-align: center;

}

.footer {
   box-shadow: 5px 5px 10px black;
   position: fixed;
   left: 0;
   bottom: 0;
   padding: 5px;
   margin-bottom:0;
   width: 100%;
   background-color: white;
   text-align: center;
   font-family: "Poppins", sans-serif;
}

.inputbox{
  box-shadow: 3px 3px 3px  rgb(248,248,248);
  transition: 0.3s;
  font-family: "Poppins", sans-serif;
  height: 28px;
  font-size: 16px;
  width: 97%;
}

.move{
  padding-top: 20px;  
  padding-right:0;
}

.centerBtn{
  padding: 3px 40px 3px 40px;  
  border: 3px solid black;
  border-radius: 16px;
  background-color: black;
  color: white;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  box-shadow: 0px 8px 15px rgb(200, 200, 200);
  transition: all 0.3s ease 0s;
  font-size: 14px;
  outline: none;
}

.centerBtn:hover{
  background-color: white;
  color: black;
  box-shadow: 0px 15px 20px rgb(200, 200, 200);
  font-weight:600px;
  transform: translateY(-1px);
}

.sec{
  padding-top: 40px;
  padding-bottom: 0;
  color:black;
  line-height:1;
  margin-left: 400px;
  font-size: 40px;
}

.homebtn {
  width: 28%;
  padding: 5px 120px 5px 120px;
  border: 3px solid white;
  border-radius: 16px;
  background-color: transparent;
  color: white;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
}

.homebtn:hover{
  background-color: #c2c7c7; 
}

.card-holder{
  /* other base styles go here */
  position: relative;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
}
.card{
  width:60%;
  height: 50%;
  padding: 20px 20px;
  background-color: white;
  position: absolute;
  top: 54%;
  left: 50%;
  transform: translateX(-50%) translateY(-50%);
}
table {
  border-collapse: collapse;
  width: 100%;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  
}

th{
    background-color: black;
    color: white;
}

td{
    background-color: white;
    color: black;
}

th, td {
  padding: 8px;
  text-align: center;
  border: 1px solid #ddd;
}

tr:hover {
    background-color: #ddd;
}

td:last-child{
    margin-left: 0;
    margin-right: 0;
}

.moveTable{
    margin-left: 40px; 
    margin-right: 40px;
}

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  list-style: none;
  text-decoration: none;
  font-family: 'Poppins', sans-serif;
}

body{
   background-color: #f3f5f9;
}

.wrapper{
  display: flex;
  position: relative;
}

.wrapper .sidebar{
  width: 200px;
  height: 100%;
  background: white;
  padding: 30px 0px;
  position: fixed;
}

.wrapper .sidebar h2{
  color: black;
  text-transform: uppercase;
  text-align: center;
  margin-bottom: 30px;
  box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2);
}

.wrapper .sidebar ul li{
  padding: 15px;
  border-bottom: 1px solid lightgrey;
  border-bottom: 1px solid rgba(0,0,0,0.05);
  border-top: 1px solid rgba(255,255,255,0.05);
}    

  li{
      box-shadow: 0 2px 2px 0 rgba(0,0,0,0.2);
  }

.wrapper .sidebar ul li a{
  color: black;
  display: block;
}

.wrapper .sidebar ul li a .fas{
  width: 25px;
}

.wrapper .sidebar ul li:hover{
  background-color: #e9e9e9;
}
    
.wrapper .sidebar ul li:hover a{
  color: lightgrey;
}
 


.wrapper .main_content{
  width: 100%;
  margin-left: 200px;
}

.wrapper .main_content .header{
  padding: 20px;
  background: #fff;
  color: #717171;
  border-bottom: 1px solid #e0e4e8;
}

.wrapper .main_content .info{
  margin: 20px;
  color: #717171;
  line-height: 25px;
}

.wrapper .main_content .info div{
  margin-bottom: 20px;
}

@media (max-height: 500px){
  .social_media{
    display: none !important;
  }
}

.edit:link{
  background-color: #ffff99;
  color: black;
  padding: 3px 6px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius: 13px;
  width: 30%;
}

.edit:hover{
    background-color: #ffff66;
}

.delete:link{
    background-color: #ff9999;
  color: black;
  padding: 3px 6px;
  margin-right: 0;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  border-radius: 13px;
  width: 30%;
}

.delete:hover{
    background-color: #ff6666;
}
</style>
</head>

<body>
    <div class="wrapper">
    <div class="sidebar">
        <h2><img src="image/icon.png" alt="UMT CAFE" style="width:150px; height:auto;"></h2>
        
        <ul>
            <li><a href="login?action=logout"><i class="fas fa-sign-out-alt"></i>Log Out</a></li>
            <li><a href="MenuServlet"><i class="fas fa-hamburger"></i>Menu Catalogue</a></li>
            <li><a href="MenuServlet?action=new"><i class="fas fa-plus"></i>Add new item</a></li>
            <li><a href="loadOrder"><i class="fas fa-list" style="color: #000000;"></i>Order List</a></li>

        </ul>  
    </div>
        
      <div class="main_content">
        <div class="header">Welcome, UMT Cafe Cashier. Have a good day working! </div>  
        
        <div class="info">
            <div class="moveTable">
                <h1 class="sec">UMT Cafe Menu</h1><br>
                    <table><hr><br>
                        <thead>
                            <tr>
                                <th>Item ID</th>
                                <th>Item Name</th>
                                <th>Item Price</th>
                                <th>Item Category</th>
                                <th>Actions</th>
                            </tr>    
                        </thead>    
                        <tbody>
                            <c:forEach var="item" items="${menu}">
                                <tr>
                                    <td>
                                         <c:out value="${item.id}" />
                                    </td>    
                                    <td>
                                        <c:out value="${item.name}" />
                                    </td>
                                    <td>
                                        <c:out value="${item.price}" />
                                    </td> 
                                    <td>
                                        <c:out value="${item.category}" />
                                    </td> 
                                    <td><a class="edit" href="MenuServlet?action=edit&itemid=<c:out value='${item.id}' />">Edit</a> 
                                        <a class="delete" href="MenuServlet?action=delete&itemid=<c:out value='${item.id}'/>">Delete</a></td>
                                </tr>  
                            </c:forEach>
                        </tbody>
                    </table> 
            </div>
        </div>
    </div>
</body>
</html>