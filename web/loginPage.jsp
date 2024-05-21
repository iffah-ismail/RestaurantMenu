<%-- 
    Document   : LogIn
    Created on : 18 Jun 2023, 10:23:20 pm
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="css/login.css">
<div class="container">
	<div class="screen">
		<div class="screen__content">
                    <form class="login" action="login" method="POST">
                        <input type="hidden" name="action" value="login"/>
                            <div style="display: flex; justify-content: center;">
                                <img src="image/icon.png" style="width: 150px; height: auto;">
                            </div>

				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<input name="username" type="text" class="login__input" placeholder="User name / Email" required>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
                                        <input name="password" type="password" class="login__input" placeholder="Password" required>
				</div>
				<input type="submit" value="Login" class="login__submit"/>	
                                <br>
                                <p>${message}</p>
			</form>
                    

		</div>
		<div class="screen__background">
                    <img src="image/loginBg.png" style="width: 360px; height: 600px; margin-right: -10px;">
		</div>		
	</div>
</div>
</html>
