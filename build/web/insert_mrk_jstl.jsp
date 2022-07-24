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
        <div style ="border-style:solid;width:600px;height:250px;"> 
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url
                           ="jdbc:mysql://localhost:3306/result" user="root" password="" />
        <sql:update dataSource="${ds}" var="count">

            insert into student(Cname,Bname,Rollno,Name,Surname,Gender,Password)
            values('${param.course_name}','${param.branch_name}','${param.roll_no}','${param.name}','${param.Fname}','${param.password}','${param.Gender}');
        </sql:update>
        <c:if test="${count>=1}">
            <h1>Details Inserted Successfully</h1>
        </c:if>
        <sql:query dataSource="${ds}" var="rs">
            SELECT * from student;
        </sql:query>
        <table border="1">
            <tr>
                <th>Course Name </th>
                <th>Branch Name</th>
                <th>Roll No</th>
                <th>Name</th>
                <th>SurName</th>
                <th>Password</th>
                <th>Gender</th>
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
