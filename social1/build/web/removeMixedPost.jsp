<%-- 
    Document   : seperate
    Created on : Mar 15, 2019, 5:03:28 PM
    Author     : mayur
--%>

<%@page import="api.GetStatusMixedTweet"%>
<%@page import="java.io.FileWriter"%>
<%@page import="api.GetStatus"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="api.GetData"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
        ArrayList<String> anomolyWords = new ArrayList<String>();
        ArrayList<String> political = new ArrayList<String>();
        ArrayList<String> education = new ArrayList<String>();
        ArrayList<String> allTweets = new ArrayList<String>();
        ArrayList<String> tweetsOfFirstSite = new ArrayList<String>();
        %>
       <%
       try{
           tweetsOfFirstSite.clear();   
       anomolyWords.clear();
       allTweets.clear();
       
       GetData gd = new GetData();       
       tweetsOfFirstSite = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
       //allTweets = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
       
       FileInputStream fisCu = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\currentuser.txt");
         byte bb[] = new byte[fisCu.available()];
         fisCu.read(bb);
         fisCu.close();
         String cUser = new String(bb);
         
         GetData gd1 = new GetData();
       anomolyWords = gd1.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\anomoly.txt");
       
       for(int i=0;i<tweetsOfFirstSite.size();i++){
           String tweet = tweetsOfFirstSite.get(i);
            GetStatusMixedTweet gs2 = new GetStatusMixedTweet();
           boolean status = gs2.getStatus2(tweet, anomolyWords);
           if(status==true){
               int firstIndex2 = tweet.indexOf(':');
                    String puser=tweet.substring(0,firstIndex2);
                    if(!puser.equals(cUser)){
               allTweets.add(tweet);
               System.out.println(tweet);
                    }
           }
           else if(status==false){
               allTweets.add(tweet);
               System.out.println(tweet);
           }
           
       }
       System.out.println();
      
//       FileOutputStream fos = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
//       int size=allTweets.size();
//       for(int i=0;i<size;i++){
//       String str=allTweets.get(i).toString();
//        fos.write(str.getBytes());
//      
//       }
//        fos.close();

 FileWriter writer = new FileWriter("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
        int size = allTweets.size();
        for (int i=0;i<size;i++) {
            String str = allTweets.get(i).toString();
            writer.write(str);
            if(i < size-1)
                writer.write("\n");
        }
        writer.close();
       
       
       
         response.sendRedirect("http://localhost:8080/social1/social1.jsp");
         
         
         
       }catch(Exception e){
           System.out.println(e);
       }
       
       %>
    </body>
</html>
