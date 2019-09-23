

<%@page import="java.util.ArrayList"%>
<%@page import="api.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="pink">
    <center>
        
        <%!
        
        ArrayList<String> tweetsOfFirstSite = new ArrayList<String>();
        ArrayList<String> tweetColors = new ArrayList<String>();
        ArrayList<String> anomolyWords = new ArrayList<String>();
        %>
       <%
       try{    
        response.setIntHeader("Refresh", 7);   
       tweetsOfFirstSite.clear();   
       tweetColors.clear();
       anomolyWords.clear();
       GetData gd = new GetData();       
       tweetsOfFirstSite = gd.getKeyWords("D:\\myfinalproject\\datacenters\\ds2\\tweets.txt");
       
       GetData gd1 = new GetData();
       anomolyWords = gd1.getKeyWords("D:\\myfinalproject\\anomoly\\anomoly.txt");
       
       for(int i=0;i<tweetsOfFirstSite.size();i++){
           String tweet = tweetsOfFirstSite.get(i);
           GetStatus gs = new GetStatus();
           boolean status = gs.getStatus(tweet, anomolyWords);
           if(status==true){
                %>
                  <font color="red" size="7">
                 <%
               out.println(tweet);
               out.println("<br>");
               
               %></font><%
           }
else if(status==false){
             %>
                  <font color="blue" size="7">
                 <%
               out.println(tweet);
               out.println("<br>");
               
               %></font><%
                   
            }
           
       }
       
   


       
       }catch(Exception e){
           System.out.println(e);
       }
       
       %>
    </center>
    </body>
</html>
