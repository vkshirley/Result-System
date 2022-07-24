<%-- 
    Document   : deletejstl
    Created on : 9 Dec, 2021, 11:43:49 AM
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
        <link rel="stylesheet" href="style.css">
    </head>
    <body>

        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" 
                           url="jdbc:mysql://localhost:3306/result" user="root" password="" />
        <sql:update dataSource="${ds}" var="count">
            delete from marks where Roll_No = '${param.no}';
        </sql:update>
        <c:if test="${count>=1}">
            <h1>Details Deleted Successfully</h1>
        </c:if>
        <sql:query dataSource="${ds}" var="rs">
            SELECT * from marks;
        </sql:query>
        <table border="1">
            <tr>
                <th>Roll_No</th>
                <th>Name</th>
                <th>Advance_Java</th>
                <th>Business_Statistics</th>
                <th>Web_Technology</th>
                <th>Database_Ad</th>
                <th>Design_Analysis</th>
                <th>Percentage</th>
            </tr>
            <c:forEach var="row" items="${rs.rows}">
                <tr>
                    <td><c:out value="${row.Roll_No}"/></td>
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

    </body>
</html>
