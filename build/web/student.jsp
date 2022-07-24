<%-- 
    Document   : student
    Created on : 9 Dec, 2021, 5:20:30 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Form</title>
        <link rel ="stylesheet" type="text/css" href="newcss.css">
    </head>
    <body>
        
         <div class="wrapper fadeInDown">
            <div id ="formContent">

                <h2 class="active">Enter your ROll No:</h2>
                <div class ="fadeIn first"> </div>


                
                <form action ="Students" method="get">
                    <input type="text" id="login" class="fadeIn second" name="username" placeholder="login">
                    <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">
                    <input type="submit" class="fadeIn fourth" value="login">
                    <a href ="forget.jsp">Forgot password?</a>
                    
<!--                    <input type="reset" class="fadeIn fourth" value="reset/clear">-->

<!--                    <input type="submit" class="submit" value="login" />

                    <input type="reset" class="reset" value="reset/clear" />-->



                </form>
            </div>
        </div>
    </body>
</html>
