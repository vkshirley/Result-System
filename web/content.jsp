

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



        <style>
            body{
  background: linear-gradient(to top, #59c173, #a17fe0, #5d26c1); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

            }
            .split {
                height: 90%;
                width: 50%;
                position: fixed;
                z-index: 1;
                top:110;

            }

            /* Control the left side */
            .left {
                left: 0;
  background: linear-gradient(to left, #59c173, #a17fe0, #5d26c1); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
                
            }

            /* Control the right side */
            .right {
                right: 0;
  background: linear-gradient(to right, #59c173, #a17fe0, #5d26c1); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            }

            /*content centered horizontally and vertically */
            .centered {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                text-align: center;
            }
            .link{
                background-color: #034f84;
                color:red;
            }


        </style>
    </head>
    <body>
        

        <div class="split left">
            <div class="centered">

                <h1>STUDENTS</h1>
                <a href ="student.html" class ="link">STUDENT LOGIN </a>
            </div>
        </div>

        <div class="split right">
            <div class="centered">
                <h1>ADMIN</h1>
                <a href ="admin_main.jsp" class="link">ADMIN LOGIN</a>
            </div>
        </div>
    </body>
</html>
