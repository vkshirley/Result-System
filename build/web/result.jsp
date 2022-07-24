<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>

    <head>
        <title>Registration Form</title>
        <link rel ="stylesheet" type="text/css" href="newcss.css">
    </head>

    <body>

        <div class="wrapper fadeInDown">
            <div id ="formContent">

                <h2 class="active">Sign In</h2>
                <div class ="fadeIn first"> </div>


                <form action ="result1.jsp" method="get">
                    <input type="text" id="login" class="fadeIn second" name="id" placeholder="Enter your RollNo">
<!--                    <input type="password" id="password" class="fadeIn third" name="password" placeholder="password">-->
                    <input type="submit" class="fadeIn fourth" value="login">
<!--                    <a href ="forget.jsp">Forgot password?</a>-->
<!--                    <input type="reset" class="fadeIn fourth" value="reset/clear">-->

<!--                    <input type="submit" class="submit" value="login" />

                    <input type="reset" class="reset" value="reset/clear" />-->



                </form>
            </div>
        </div>
    </body>

</html>
