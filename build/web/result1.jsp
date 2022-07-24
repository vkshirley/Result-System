<%-- 
    Document   : selectParamJSTL
    Created on : Dec 13, 2021, 5:12:35 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Poppins');

/* BASIC */



body {
    font-family: TimesNewRoman;
    height: 100vh;
  background: linear-gradient(to top, #dd3e54, #6be585); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

a {
    color: black;
    display:inline-block;
    text-decoration: none;
    font-weight: 400;
}

h1 {
    text-align: center;
    font-size: 16px;
    font-weight: 600;
    text-transform: uppercase;
    display:inline-block;
    margin: 40px 8px 10px 8px; 
    color: #black;
}
th{
    color:white;
}
td{
    color:white;
    
}



/* STRUCTURE */

.wrapper {
    display: flex;
    align-items: center;
    flex-direction: column; 
    justify-content: center;
    width: 100%;
    min-height: 100%;
    padding: 20px;
}

#formContent {
    -webkit-border-radius: 10px 10px 10px 10px;
    border-radius: 10px 10px 10px 10px;
    background: #fff;
    padding: 30px;
    width: 90%;
    max-width: 450px;
    position: relative;
    padding: 0px;
    -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
    text-align: center;
}

#formFooter {
    background-color: #f6f6f6;
    border-top: 1px solid #dce8f1;
    padding: 25px;
    text-align: center;
    -webkit-border-radius: 0 0 10px 10px;
    border-radius: 0 0 10px 10px;
}



/* TABS */



h2.active {
    color: #0d0d0d;
    border-bottom: 2px solid #5fbae9;
}



/* FORM TYPOGRAPHY*/

input[type=button], input[type=submit], input[type=reset]  {
    background-color: #56baed;
    border: none;
    color: white;
    padding: 15px 80px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    text-transform: uppercase;
    font-size: 13px;
    -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
    box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
    margin: 5px 20px 40px 20px;
    -webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    -ms-transition: all 0.3s ease-in-out;
    -o-transition: all 0.3s ease-in-out;
    transition: all 0.3s ease-in-out;
}

input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
  background: linear-gradient(to left, #03001e, #7303c0, #ec38bc, #fdeff9); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}

input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
    -moz-transform: scale(0.95);
    -webkit-transform: scale(0.95);
    -o-transform: scale(0.95);
    -ms-transform: scale(0.95);
    transform: scale(0.95);
}

input[type=text] {
    background-color: #f6f6f6;
    border: none;
    color: #0d0d0d;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    width: 85%;
    border: 2px solid #f6f6f6;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
}

input[type=text]:focus {
    background-color: #fff;
    border-bottom: 2px solid #5fbae9;
}

input[type=text]:placeholder {
    color: #cccccc;
}
input[type=password] {
    background-color: #f6f6f6;
    border: none;
    color: #0d0d0d;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 5px;
    width: 85%;
    border: 2px solid #f6f6f6;
    -webkit-transition: all 0.5s ease-in-out;
    -moz-transition: all 0.5s ease-in-out;
    -ms-transition: all 0.5s ease-in-out;
    -o-transition: all 0.5s ease-in-out;
    transition: all 0.5s ease-in-out;
    -webkit-border-radius: 5px 5px 5px 5px;
    border-radius: 5px 5px 5px 5px;
}

input[type=password]:focus {
    background-color: #fff;
    border-bottom: 2px solid #5fbae9;
}

input[type=password]:placeholder {
    color: #cccccc;
}



/* ANIMATIONS */

/* Simple CSS3 Fade-in-down Animation */
.fadeInDown {
    -webkit-animation-name: fadeInDown;
    animation-name: fadeInDown;
    -webkit-animation-duration: 0.5s;
    animation-duration: 1s;
    -webkit-animation-fill-mode: both;
    animation-fill-mode: both;
}

@-webkit-keyframes fadeInDown {
    0% {
        opacity: 0;
        -webkit-transform: translate3d(0, -100%, 0);
        transform: translate3d(0, -100%, 0);
    }
    100% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
    }
}

@keyframes fadeInDown {
    0% {
        opacity: 0;
        -webkit-transform: translate3d(0, -100%, 0);
        transform: translate3d(0, -100%, 0);
    }
    100% {
        opacity: 1;
        -webkit-transform: none;
        transform: none;
    }
}

 Simple CSS3 Fade-in Animation 
@-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
@keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

.fadeIn {
    opacity:0;
    -webkit-animation:fadeIn ease-in 1;
    -moz-animation:fadeIn ease-in 1;
    animation:fadeIn ease-in 1;

    -webkit-animation-fill-mode:forwards;
    -moz-animation-fill-mode:forwards;
    animation-fill-mode:forwards;

    -webkit-animation-duration:0.5s;
    -moz-animation-duration:0.5s;
    animation-duration:0.5s;
}

.fadeIn.first {
    -webkit-animation-delay: 0.4s;
    -moz-animation-delay: 0.4s;
    animation-delay: 0.4s;
}

.fadeIn.second {
    -webkit-animation-delay: 0.6s;
    -moz-animation-delay: 0.6s;
    animation-delay: 0.6s;
}

.fadeIn.third {
    -webkit-animation-delay: 0.8s;
    -moz-animation-delay: 0.8s;
    animation-delay: 0.8s;
}

.fadeIn.fourth {
    -webkit-animation-delay: 0.5s;
    -moz-animation-delay: 0.5s;
    animation-delay: 0.5s;
}

 Simple CSS3 Fade-in Animation 
.underlineHover:after {
    display: block;
    left: 0;
    bottom: -10px;
    width: 0;
    height: 2px;
    background-color: #56baed;
    content: "";
    transition: width 0.2s;
}

.underlineHover:hover {
    color: #0d0d0d;
}

.underlineHover:hover:after{
    width: 100%;
}



/* OTHERS */

*:focus {
    outline: none;
} 

#icon {
    width:60%;
}

* {
    box-sizing: border-box;
}



    </style>   
    <body>
        <h1>Your Result</h1>
        
        
        
        <div style ="border-style:solid;width:90%;height:250px;padding:50px"> 
            <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
                               url="jdbc:mysql://localhost:3306/result"
                               user="root" password="" />
            <c:set var = "id" value = "${param.id}"/>
            <sql:query dataSource="${db}" var="rs" >
                SELECT * from marks where  Roll_No=?;
                <%--<sql:param value = "${no}" />--%>
                <sql:param value = "${id}" />
            </sql:query>

            <table border="1">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Advance_Java</th>
                    <th>Business_Statistics</th>
                    <th>Web_Technology</th>
                    <th>Database_ad</th>
                    <th>Design_Analysis</th>
                    <th>Percentage</th>
                    <th>Status</th>

                </tr>
                

                <c:forEach var="table" items="${rs.rows}" >
                    <tr>
                        <td><c:out value="${table.Roll_No}" /></td>
                        <td><c:out value="${table.Name}" /></td>
                        <td><c:out value="${table.Advance_Java}" /></td>
                        <td><c:out value="${table.Business_Statistics}" /></td>
                        <td><c:out value="${table.Web_Technology}" /></td>
                        <td><c:out value="${table.Database_ad}" /></td>
                        <td><c:out value="${table.Design_Analysis}" /></td>
                        <td><c:out value="${table.Percentage}" /></td>
                        
                    
                </c:forEach>



           
                <%
                    Class.forName("com.mysql.jdbc.Driver");
                    int i = Integer.parseInt(request.getParameter("id"));
                    String url = "jdbc:mysql://localhost:3306/result";
                    Connection con = DriverManager.getConnection(url, "root", "");
                     PreparedStatement ps=con.prepareStatement("select Percentage from marks where Roll_no=? ");
                     ps.setInt(1, i);
                    ResultSet rs=ps.executeQuery();
                    
                     rs.next();
                     int Percen = rs.getInt(1);
                     if (Percen>40)
                     {
                         out.println("<td>PASS</td></tr>");
                     }
                     else
                     {
                         out.println("<td style='color:red'>FAIL</td></tr>");
                         out.println("<h2 style='color:red'>Better Luck Next Time");
                     }
                     
            %>
            </table>
        </div>
            <br>
                     <a href="website.jsp" style='color:white'>Go Back</a>

    </body>
</html>