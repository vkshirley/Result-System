<%-- 
    Document   : selectParamJSTL
    Created on : Dec 13, 2021, 5:12:35 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>your details</h1>
        <div style ="border-style:solid;width:90%;height:250px;padding:20px"> 
            <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" 
                               url="jdbc:mysql://localhost:3306/result"
                               user="root" password="" />
            <c:set var = "id" value = "${param.id}"/>
            <sql:query dataSource="${db}" var="rs" >
                SELECT * from student where Name = ?;
                <sql:param value = "${id}" />
            </sql:query>

            <table border="1">
                <tr>
                    <th></th>
                    <th>Course Name</th>
                    <th>Branch Name</th>
                    <th>Roll No</th>
                    <th>Name</th>
                    <th>Password</th>
                    

                </tr>
                

                <c:forEach var="table" items="${rs.rows}" >
                    <tr>
                        <td style="float:middle;"><c:out value="${table.Roll_No}" /></td>
                        <td><c:out value="${table.Cname}" /></td>
                        <td><c:out value="${table.Bname}" /></td>
                        <td><c:out value="${table.Rollno}" /></td>
                        <td><c:out value="${table.Name}" /></td>
                        <td><c:out value="${table.Password}" /></td>
                        
                    </tr>
                </c:forEach>



            </table>
        </div>
    </body>
</html>