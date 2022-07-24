<%-- 
    Document   : students_result
    Created on : 8 Dec, 2021, 6:06:59 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .tag{

                background: #cccccc;
            }

            .tag1{
                
                background:lightblue;
            }
        </style>
    </head>
    <body>

        <div style ="width:30%;float:right;padding:100px;">
            <h3 class ="tag">Add new student...(click below link)</h3> 
            <a href ="add_new.html">Add new students </a> 

<!--            <h3 class ="tag">Update students details...(click below link)</h3>
            <a href ="up_st_dt.jsp">Update student details</a>-->

            <h3 class ="tag">Delete students details...(click below link)</h3>
            <a href ="dt_st_dt.html">Delete student details</a>

            <h3 class ="tag">All Registered Student...(click below link)</h3>
            <a href ="all_stu_info.jsp">Registered Student</a> 

        </div>

        <div style ="width:30%;padding:100px;">
            <h3 class ="tag1">Insert new result...(click below link)</h3>
            <a href ="insert_new.html">Insert new result </a> 

            <h3 class ="tag1">Update students marks...(click below link)</h3>
            <a href ="upt_st_mks.html">Update Students Marks</a> 

            <h3 class ="tag1">Delete students marks...(click below link)</h3>
            <a href ="dt_st_mks.html">Delete Students marks</a> 

            <h3 class ="tag1">All student result...(click below link)</h3>
            <a href ="all_stu_result.jsp">All student result</a> 
        </div>
        
        
        <h1 class ="tag">Logout</h1>
        <a href ="admin_main.jsp">Logout</a> 

    </div>
</body>
</html>
