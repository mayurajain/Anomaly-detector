<%-- 
    Document   : clean
    Created on : Feb 18, 2019, 10:40:22 AM
    Author     : mayur
--%>

<%@page import="api.GetData"%>
<%@page import="java.io.*"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="pink">
        <font color="red" face="verdana" size="12">
    <marquee> Welcome to first social media site for cleaning purpose of anomoly tweets</marquee>
</font>

<br><br><br><br><br><br><br>
<center>
    
    <%!
    
    ArrayList<String> tweetsOfFirstSite = new ArrayList();
    ArrayList<String> anomolyFirstTweets = new ArrayList();
    

    ArrayList<String> tweetsOfSecondSite = new ArrayList();
    ArrayList<String> anomolySecondTweets = new ArrayList();
    %>
    <%try{
      String userName = request.getParameter("uname");
      String passWord = request.getParameter("pword");
      //
      tweetsOfFirstSite.clear();
      anomolyFirstTweets.clear();
      GetData gd = new GetData();       
       tweetsOfFirstSite = gd.getKeyWords("D:\\myfinalproject\\datacenters\\ds1\\tweets.txt");
      FileInputStream fisFirst = new FileInputStream("E:\\social1ser.txt");
      ObjectInputStream isFirst = new ObjectInputStream(fisFirst);
      anomolyFirstTweets = (ArrayList<String>)isFirst.readObject();
      isFirst.close();
      fisFirst.close();
      
      tweetsOfFirstSite.removeAll(anomolyFirstTweets);
      String allCleanedSocial1Tweets = new String();
      for(int i=0;i<tweetsOfFirstSite.size();i++){
          allCleanedSocial1Tweets += tweetsOfFirstSite.get(i)+"\r\n";
      }
      allCleanedSocial1Tweets = allCleanedSocial1Tweets.trim();
      FileOutputStream fos = new FileOutputStream("D:\\myfinalproject\\datacenters\\ds1\\tweets.txt");
      fos.write(allCleanedSocial1Tweets.getBytes());
      fos.close();
      out.println("First Social site is freem from anomoly tweets");
      //
      tweetsOfSecondSite.clear();
      anomolySecondTweets.clear();
      GetData gd1 = new GetData();       
       tweetsOfSecondSite = gd1.getKeyWords("D:\\myfinalproject\\datacenters\\ds2\\tweets.txt");
      FileInputStream fisSecond = new FileInputStream("E:\\social2ser.txt");
      ObjectInputStream isSecond = new ObjectInputStream(fisSecond);
      anomolySecondTweets = (ArrayList<String>)isSecond.readObject();
      isSecond.close();
      fisSecond.close();
      
      tweetsOfSecondSite.removeAll(anomolySecondTweets);
      String allCleanedSocial2Tweets = new String();
      for(int i=0;i<tweetsOfSecondSite.size();i++){
          allCleanedSocial2Tweets += tweetsOfSecondSite.get(i)+"\r\n";
      }
      allCleanedSocial2Tweets = allCleanedSocial2Tweets.trim();
      FileOutputStream fos2 = new FileOutputStream("D:\\myfinalproject\\datacenters\\ds2\\tweets.txt");
      fos2.write(allCleanedSocial2Tweets.getBytes());
      fos2.close();
      out.println("<br>Second Social site is freem from anomoly tweets");
      
      //out.println(userName+":"+passWord);
     }catch(Exception e ){
        out.println(e);
    }%>
</center>
</body>
</html>
