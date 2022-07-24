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
            SELECT * from marks;
        </sql:query>
             <h1>All students Marks</h1>
        <table border="1">
            <tr>
                <th>Roll No</th>
                <th>Name</th>
                <th>Advance Java</th>
                <th>Business Statistics </th>
                <th>Web Technology </th>
                <th>Database</th>
                <th>Design Analysis</th>
                <th>Percentage</th>
            </tr>
            <c:forEach var="row" items="${rs.rows}">
                <tr>
                    <td><c:out value="${row.Roll_no}"/></td>
                    <td><c:out value="${row.Name}"/></td>
                    <td><c:out value="${row.Advance_Java}"/></td>
                    <td><c:out value="${row.Business_Statistics}"/></td>
                    <td><c:out value="${row.Web_technology}"/></td>
                    <td><c:out value="${row.Database_ad}"/></td>
                    <td><c:out value="${row.Design_Analysis}"/></td>
                    <td><c:out value="${row.Percentage}"/></td>
                </tr>
            </c:forEach>
        </table>
</div>
    </body>
</html>
