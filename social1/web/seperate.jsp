<%-- 
    Document   : seperate
    Created on : Mar 15, 2019, 5:03:28 PM
    Author     : mayur
--%>

<%@page import="java.io.FileWriter"%>
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
        ArrayList<String> medical = new ArrayList<String>();
        ArrayList<String> political = new ArrayList<String>();
        ArrayList<String> education = new ArrayList<String>();
        ArrayList<String> allTweets = new ArrayList<String>();
        %>
       <%
       try{
       medical.clear();
       political.clear();
       education.clear();
       allTweets.clear();
       
       GetData gdTweets = new GetData();
       allTweets = gdTweets.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
       GetData gdTweetsMedical = new GetData();
       medical = gdTweetsMedical.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\medical.txt");
       
       GetData gdTweetPolitical = new GetData();
       political = gdTweetPolitical.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\political.txt");
       
       GetData gdTweetsEducation = new GetData();
       education = gdTweetsEducation.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\education.txt");
       
       
      // 
       //String medString = new String();
       //String polString = new String();
      //
      
      ArrayList<String> eduString = new ArrayList<String>();
      ArrayList<String> medString = new ArrayList<String>();
      ArrayList<String> polString = new ArrayList<String>();
        
       
       // 
     //
   //
//       for(int i=0;i<allTweets.size();i++){
//           String tweet = allTweets.get(i);
//           for(int j=0;j<medical.size();j++){
//             String key = medical.get(j);
//             if(tweet.contains(key)){
//                 medString += tweet+"\r\n";
//             }
//           }
//       }
//       
//       for(int i=0;i<allTweets.size();i++){
//           String tweet = allTweets.get(i);
//           for(int j=0;j<political.size();j++){
//             String key = political.get(j);
//             if(tweet.contains(key)){
//                 polString += tweet+"\r\n";
//             }
//           }
//       }
//       
   //
     //
       //
       
       
       
       
        for(int i=0;i<allTweets.size();i++){
           String tweet = allTweets.get(i);
           for(int j=0;j<medical.size();j++){
             String key = medical.get(j);
             if(tweet.contains(key)){
                 medString.add(tweet);
             }
           }
       }
       
       for(int i=0;i<allTweets.size();i++){
           String tweet = allTweets.get(i);
           for(int j=0;j<political.size();j++){
             String key = political.get(j);
             if(tweet.contains(key)){
                 polString.add(tweet);
             }
           }
       }
       
       for(int i=0;i<allTweets.size();i++){
           String tweet = allTweets.get(i);
           for(int j=0;j<education.size();j++){
             String key = education.get(j);
             if(tweet.contains(key)){
                 eduString.add(tweet);
             }
           }
       }
//       for(int i=0;i<1;i++){
//           String ed=eduString.
//       }
       System.out.println(medString);
       System.out.println(polString);
       System.out.println(eduString);
       
       
//       FileOutputStream fos = new FileOutputStream("medtweet.txt");
//       fos.write(medString.getBytes());
//       fos.close();
//       
//       FileOutputStream fos1 = new FileOutputStream("poltweet.txt");
//       fos1.write(polString.getBytes());
//       fos1.close();
       
//       FileOutputStream fos2 = new FileOutputStream("edutweet.txt");
//       fos2.write(eduString.getBytes());
//       fos2.close();
       
       


        FileWriter writer1 = new FileWriter("medtweet.txt");
        int size1 = medString.size();
        if(size1<=50){
        for (int i=0;i<size1;i++) {
            String str1 = medString.get(i).toString();
            str1=str1+"\r\n";
            writer1.write(str1);
            if(i < size1-1)
                writer1.write("\n");
        }}
        else if(size1>50){
            for (int i=0;i<50;i++) {
            String str1 = medString.get(i).toString();
            str1=str1+"\r\n";
            writer1.write(str1);
            if(i < size1-1)
                writer1.write("\n");
        }
            
        }
        writer1.close();
        
        
        
        FileWriter writer2 = new FileWriter("poltweet.txt");
        int size2 = polString.size();
        if(size2<=50){
        for (int i=0;i<size2;i++) {
            String str2 = polString.get(i).toString();
            str2=str2+"\r\n";
            writer2.write(str2);
            if(i < size2-1)
                writer2.write("\n");
        }}
        else if(size2>50){
            for (int i=0;i<50;i++) {
            String str2 = polString.get(i).toString();
            str2=str2+"\r\n";
            writer2.write(str2);
            if(i < size2-1)
                writer2.write("\n");
        }
            
        }
        writer2.close();
        
        
        FileWriter writer = new FileWriter("edutweet.txt");
        int size = eduString.size();
        if(size<=50){
        for (int i=0;i<size;i++) {
            String str = eduString.get(i).toString();
            str=str+"\r\n";
            writer.write(str);
            if(i < size-1)
                writer.write("\n");
        }}
        else if(size>50){
          for (int i=0;i<50;i++) {
            String str = eduString.get(i).toString();
            str=str+"\r\n";
            writer.write(str);
            if(i < size-1)
                writer.write("\n");
        }  
        }
        writer.close();
       
       
       
       Runtime r = Runtime.getRuntime();
       r.exec("notepad medtweet.txt");
       
       Runtime r1 = Runtime.getRuntime();
       r1.exec("notepad poltweet.txt");
       
       Runtime r2 = Runtime.getRuntime();
       r2.exec("notepad edutweet.txt");
       response.sendRedirect("index.html");
       
       
       
       
       }catch(Exception e){
           System.out.println(e);
       }
       
       %>
    </body>
</html>
