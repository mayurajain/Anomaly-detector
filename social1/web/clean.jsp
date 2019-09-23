

<%@page import="java.util.ArrayList"%>
<%@page import="java.io.*"%>
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
        
        ArrayList<String> nonAnomolyTweets = new ArrayList<String>();
        ArrayList<String> anomolyTweets = new ArrayList<String>();
        String allAnomolyTweetString = new String();
        %>
       <%
       try{    
        //response.setIntHeader("Refresh", 7);   
       tweetsOfFirstSite.clear();   
       tweetColors.clear();
       anomolyWords.clear();
       nonAnomolyTweets.clear();
       anomolyTweets.clear();
       GetData gd = new GetData(); 
//       AnomolyTweets tweets= new AnomolyTweets();
//       tweets.setVisible(true);

//       Runtime run = Runtime.getRuntime();
//       run.exec("notepad");
       tweetsOfFirstSite = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
       
       GetData gd1 = new GetData();
       anomolyWords = gd1.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\anomoly.txt");
       
       for(int i=0;i<tweetsOfFirstSite.size();i++){
           String tweet = tweetsOfFirstSite.get(i);
           GetStatus gs = new GetStatus();
           boolean status = gs.getStatus(tweet, anomolyWords);
           if(status==true){
               anomolyTweets.add(tweet);
                %>
                  <font color="red" size="7">
                 <%
               //out.println(tweet);
               //out.println("<br>");
               
               %></font><%
           }
else if(status==false){
nonAnomolyTweets.add(tweet);
             %>
                  <font color="blue" size="7">
                 <%
               out.println(tweet);
               out.println("<br>");
               
               %></font><%
                   
            }
           
       }
       
   
      for(int i=0;i<anomolyTweets.size();i++){
        allAnomolyTweetString += anomolyTweets.get(i)+"\r\n";
     }
      allAnomolyTweetString = allAnomolyTweetString.trim();

      FileOutputStream fos = new FileOutputStream("E:\\an1.txt");
      fos.write(allAnomolyTweetString.getBytes());
      fos.close();
       
      Runtime run = Runtime.getRuntime();
       run.exec("notepad E:\\an1.txt");
       FileOutputStream fosS = new FileOutputStream("E:\\social1ser.txt");
       ObjectOutputStream osS = new ObjectOutputStream(fosS);
       osS.writeObject(anomolyTweets);
       osS.close();
       }catch(Exception e){
           System.out.println(e);
       }
       
       %>
    </center>
    </body>
</html>
