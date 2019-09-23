<%-- 
    Document   : logout
    Created on : Mar 5, 2019, 5:18:25 PM
    Author     : mayur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        try{
            String userName = request.getParameter("uname");
            String passWord = request.getParameter("pword");
            System.out.println(userName);
                        System.out.println(passWord);
            if(userName.equals("admin") && passWord.equals("admin")){
        response.sendRedirect("http://localhost:8080/soclal2final/clean.jsp");
            }
            else
            {
                response.sendRedirect("http://localhost:8080/soclal2final/index.html");
            }
        }catch(Exception e){
            out.println(e);
        }
        %>
    </body>
</html>

