<%-- 
    Document   : post
    Created on : Mar 5, 2019, 10:53:16 AM
    Author     : mayur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link href="homepage_style.css" type="text/css" rel="stylesheet"/>
<style>
    post1{
        margin-top: 150px;
        margin-bottom: 150px;
        background: linear-gradient(white, #D3D8E8);
    }
</style>

</head>
<body>
   
        
        <div id="header_wrapper">
 <div id="header">
 <li id="sitename"><a href="http://localhost:8080/social1/index.html">Social Network</a></li>
 <li id="sitename" style="margin-left: 150PX"><a href="http://localhost:8080/social1/index.html">Home</a></li>
 
 <li id="sitename" style="margin-left: 250PX"> <a href="logout.jsp"><button value="=Logout" onclick="alert('Logging OUT!');">LOGOUT</button></a></li>
 </div>
</div>
<div id="post1">
        <form action="postdone.jsp" method="post">
            <li>post your tweet<br><input type="text" name="tweet" required="required"></li>
 
 <li><input type="submit" name="post" value="post" onclick="alert('Posting your tweet');"></li>
 </form>
</div>
<div id="post1">
    
    
    
    
</div>

    </body>
    

</html>
