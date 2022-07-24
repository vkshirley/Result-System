<%-- 
    Document   : insertjstl
    Created on : 9 Dec, 2021, 10:50:01 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div style ="border-style:solid;width:600px;height:250px;padding:20px"> 
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url
                           ="jdbc:mysql://localhost:3306/result" user="root" password="" />
        
        
        <sql:query dataSource="${ds}" var="rs">
            SELECT * from student;
        </sql:query>
            <h1>All registered students</h1>
        <table border="1">
            <tr>
                <th>Course Name</th>
                <th>Branch Name</th>
                <th>Roll No</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Gender </th>
                <th>Password</th>
            </tr>
            <c:forEach var="row" items="${rs.rows}">
                <tr>
                    <td><c:out value="${row.Cname}"/></td>
                    <td><c:out value="${row.Bname}"/></td>
                    <td><c:out value="${row.Rollno}"/></td>
                    <td><c:out value="${row.Name}"/></td>
                    <td><c:out value="${row.Surname}"/></td>
                    <td><c:out value="${row.Gender}"/></td>
                    <td><c:out value="${row.Password}"/></td>
                </tr>
            </c:forEach>
        </table>
</div>
    </body>
</html>
