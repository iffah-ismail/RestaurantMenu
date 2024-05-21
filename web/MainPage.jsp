<%-- 
    Document   : MainPage
    Created on : 20 Jun 2023, 10:28:53 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <link href='https://fonts.googleapis.com/css?family=Quicksand' rel='stylesheet'>
<!DOCTYPE html>
<html>
<head>
  <style>
    * {
      font-family: 'Quicksand';
      font-size: 22px;
      color: black;
    }

    body {
      background-image: url('image/food.png');
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
      padding: 0;
    }

    .container {
      text-align: center;
    }

.button {
  padding: 10px 20px;
  background-color: lightgrey;
  color: black;
  font-size: 16px;
  border: none;
  border-radius: 20px;
  cursor: pointer;
  transition: background-color 0.3s ease; /* Adding a smooth transition effect */
}
h1{
    margin-top: 100px;
}

.button:hover {
  background-color: #E5E4E2 /* Changing the background color to transparent on hover */
}

.button a {
  text-decoration: none;
}
</style>

</head>
<body>
  <div class="container">
      <h1>Welcome to UMT Cafe click the button to get started. </h1>
    <button class="button"><a href="loginPage.jsp">Start to work (Staff only)</a></button></br></br>
    <button class="button"><a href="loadMenu">Start to order</a></button> 
  </div>
</body>
</html>

