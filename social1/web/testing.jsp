<%-- 
    Document   : testing
    Created on : Mar 5, 2019, 3:53:59 PM
    Author     : mayur
--%>

<%@page import="mail.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%try{
       new MailTest("dummy7638@gmail.com","This account is removed coz of 10 tweets violations","users status");
       }catch(Exception e){
           out.println(e);
       }%>
    </body>
</html>
