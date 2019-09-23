<%@page import="java.io.FileWriter"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.*"%>
<%@page import="api.*"%>
<%@page import="mail.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

 <style>
 footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }

  </style>
    </head>
    <body data-spy="scroll" data-target=".navbar">

<div class="jumbotron" style="margin-top:00px;margin-bottom:00px">
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
<div class="row" style="background-color:#f0f0f0">
    <div class="col-sm-7"><h3 class="text-left ">Welcome</h3></div>
    <div class="col-sm-5"><marquee><h3 class="text-right">Social Network</h3></marquee></div>
  </div>
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Social Network</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
<!--        <li class="active"><a href="<c:url value="/"/>" target="_parent">Home</a></li>
        <li><a href="#section41">About</a></li>
        <li><a href="#section42">Contact</a></li>
         <li><a href="<c:url value="/Gallery"/>">Gallery</a></li>-->
        

      <li><a href="http://localhost:8080/social1/index.html">Home</a></li>

      
      </ul>
        <ul class="nav navbar-nav navbar-right" style="margin-right: 100px">
            <li><a href="posting.jsp">Post</a></li>
            <li><a href="logout.jsp" onclick="alert('Logging OUT!');">Logout</a></li>
            
            
        </ul>
    </div>
  </div>
</nav>
</div>
  
        <div>
        <%!
        
        ArrayList<String> tweetsOfFirstSite = new ArrayList<String>();
        ArrayList<String> tweetColors = new ArrayList<String>();
        ArrayList<String> anomolyWords = new ArrayList<String>();
        ArrayList<String> postiveWords = new ArrayList<String>();
        ArrayList<String> negativeWords = new ArrayList<String>();
        %>
       <%
       try{  
           FileInputStream fisCus = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\currentuser.txt");
         byte bb1[] = new byte[fisCus.available()];
         fisCus.read(bb1);
         fisCus.close();
         String cUsers = new String(bb1);%>
         <div style="font-family:Times New Roman;text-transform: uppercase;margin-left: 30px;"><%
         out.println("<h1><b>Welcome<i> "+cUsers+"</i></b></h1><br>");%></div><%
             tweetsOfFirstSite.clear();   
       tweetColors.clear();
       anomolyWords.clear();
       postiveWords.clear();
       negativeWords.clear();
       GetData gd = new GetData();       
       tweetsOfFirstSite = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
       
           response.setIntHeader("Refresh", 20);  
       GetData gd1 = new GetData();
       anomolyWords = gd1.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\anomoly.txt");
       GetData gd2 = new GetData();
       postiveWords = gd2.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\positive.txt");
       GetData gd3 = new GetData();
       negativeWords = gd3.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\anomoly\\negative.txt");
       System.out.println(anomolyWords);
       %>
       
       
        <div class="row">
       <div class="col-sm-3">
            <center style="font-size: 20px;font-family: monospace"><b><%
//                int l=0;
//           String tweet1 = tweetsOfFirstSite.get(l);
//            FileInputStream fisCuss = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\currentuser.txt");
//         byte bb3[] = new byte[fisCuss.available()];
//         fisCuss.read(bb3);
//         fisCuss.close();
//         String ccUsers = new String(bb3);
//                                 int firstIndex = tweet1.indexOf(':');
//                                 String loginusername=tweet1.substring(0,firstIndex);
//            %></b></center>
        </div>
        <div>
          <div class="col-sm-6">
       
       <%
             Collections.reverse(tweetsOfFirstSite);
       
       for(int i=0;i<tweetsOfFirstSite.size();i++){
           String tweet = tweetsOfFirstSite.get(i);
           System.out.println(tweet);
//           GetStatusMixedTweet gs2 = new GetStatusMixedTweet();
//           boolean status = gs2.getStatus2(tweet, anomolyWords);
           
//           GetStatusMixedTweet gs3 = new GetStatusMixedTweet();
//           int positive = gs3.getStatus3(tweet, postiveWords);
//           
//           GetStatusMixedTweet gs4 = new GetStatusMixedTweet();
//           int negative = gs4.getStatus3(tweet, negativeWords);

            GetStatusMixedTweet gs5 = new GetStatusMixedTweet();
            int firstIndex = tweet.indexOf(':');
            int lastIndex=tweet.length();
            boolean status;
            if(tweet.endsWith(".")){
               status = gs5.getStatus4(tweet.substring(firstIndex+1,lastIndex-1), postiveWords,negativeWords);
            }
            else if(tweet.endsWith(",")){
                status = gs5.getStatus4(tweet.substring(firstIndex+1,lastIndex-1), postiveWords,negativeWords);
            }
            else{
         status = gs5.getStatus4(tweet.substring(firstIndex+1), postiveWords,negativeWords);
            }
            
//           boolean status=false;
//           
//           if(positive>=negative){
//               status=false;
//           }
//           else if(negative>positive){
//               status=true;
//           }
           //System.out.println(status);
//           System.out.println(status);
//           System.out.println(status);
           if(status==true){
                %>
                  <font color="red">
                 <%
                     System.out.println(status);
//                     int firstIndex = tweet.indexOf('s');
                     int firstIndex2 = tweet.indexOf(':');
                    String puser=tweet.substring(0,firstIndex2);
                 %><h2 style="color:black;font-family:Times New Roman;"><% out.println(puser);%></h2><%
                     %><h1 style="font-family:Georgia;"><%    out.println("&nbsp &nbsp &nbsp &nbsp"+tweet.substring(firstIndex2+1)+"<br><hr>");%></h1>
                    </font><%
           }
else if(status==false){
             %>
                  <font color="blue">
                 <%
                     System.out.println(status);
                     int firstIndex1 = tweet.indexOf(':');
                     String puser=tweet.substring(0,firstIndex1);
                     %><h2 style="color:black;font-family:Times New Roman;"><% out.println(tweet.substring(0,firstIndex1));%></h2><%
                     %><h1 style="font-family:Georgia;"><%    out.println("&nbsp &nbsp &nbsp &nbsp"+tweet.substring(firstIndex1+1)+"<br><hr>");%></h1>
                     </font><%
                   
            } //System.out.println(post);
        
           
       }
       
       }catch(Exception e){
           System.out.println(e);
       }
       
       %>
          </div>
          </div>
          </div>
    
       <footer class="text-center" style="margin-top:30px">
    <div class="row">
        <div class="col-sm-6"  id="section41">
      
	    <p>Social media website to detect anomoly</p>
	    </div>

	    <div class="col-sm-6" id="section42" class="contactus">
  <h3 class="text-center">Contact Us</h3>
 <h5 class="text-center"> I'd love your feedback!</h5>

  
    <div class="col-md-4">
      <p><span class="glyphicon glyphicon-map-marker"></span>Bengaluru, India</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +91 1234567890</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>
    </div>
    
    <div class="col-sm-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="3"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit" style="width:100px;background-color:#000080"><i class="fa fa-paper-plane"></i>Send</button>
        </div>
      </div>
    </div>
</div>

	    </div>
	    <div class="row">
	    <a href="<c:url value="/"/><i class="fa fa-arrow-up fa-fw"></i></a>
	    <i class="fa fa-facebook fa-fw"></i>
  <i class="fa fa-instagram fa-fw"></i>
  <i class="fa fa-snapchat fa-fw"></i>
  <i class="fa fa-pinterest-p fa-fw"></i>
  <i class="fa fa-twitter fa-fw"></i>
  <i class="fa fa-linkedin fa-fw"></i>
	    </div>

</footer>
    </body>
</html>
