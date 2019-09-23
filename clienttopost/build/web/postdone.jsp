<%-- 
    Document   : postdone.jsp
    Created on : Mar 5, 2019, 12:56:42 PM
    Author     : mayur
--%>

<%@page import="java.io.FileInputStream"%>
<%@page import="org.cl.Social1_Service"%>
<%@page import="org.cl.Social1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <div id="header_wrapper">
 <div id="header">
    </head>
    <body>

    <center>
        <%
        
        String tweet = request.getParameter("tweet");
        //out.println("tweet updated<br><br><br><br>");
        Social1_Service service = new Social1_Service();
        Social1 port = service.getSocial1Port();
        FileInputStream fis = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\currentuser.txt");
        byte bb[] = new byte[fis.available()];
        fis.read(bb);
        fis.close();
        
        String curUser = new String(bb);
              
        out.println(port.hello(curUser+":"+tweet));
        
        response.sendRedirect("http://localhost:8080/social1/");
        
        %>
        <font color="blue" face="verdana" size="10">
        <a href="post.jsp">click to go back</a>
        </font>
        
        <%
        %>
        
         <div id="footer_wrapper">
</div>
        </center>
    </body>
</html>
