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
        

      <li><a href="http://localhost:8080/soclal2final/clean.jsp">Home</a></li>

      
      </ul>
        <ul class="nav navbar-nav navbar-right" style="margin-right: 100px">
            <li><a href="logout.jsp">Logout</a></li>
            
            
        </ul>
    </div>
  </div>
</nav>
</div>
        <font color="red" face="verdana" size="12">
    <marquee> Welcome Admin</marquee>
</font>

<br><br><br>
<center>
    
    <%!
//    
//    ArrayList<String> tweetsOfFirstSite = new ArrayList();
//    ArrayList<String> anomolyFirstTweets = new ArrayList();
    

//    ArrayList<String> tweetsOfSecondSite = new ArrayList();
//    ArrayList<String> anomolySecondTweets = new ArrayList();
    %>
    <%
//        try{
//      String userName = request.getParameter("uname");
//      String passWord = request.getParameter("pword");
//      //
//      tweetsOfFirstSite.clear();
//      anomolyFirstTweets.clear();
//      GetData gd = new GetData();       
//       tweetsOfFirstSite = gd.getKeyWords("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
//      FileInputStream fisFirst = new FileInputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\social1ser.txt");
//      ObjectInputStream isFirst = new ObjectInputStream(fisFirst);
//      anomolyFirstTweets = (ArrayList<String>)isFirst.readObject();
//      isFirst.close();
//      fisFirst.close();
//      
//      tweetsOfFirstSite.removeAll(anomolyFirstTweets);
//      String allCleanedSocial1Tweets = new String();
//      for(int i=0;i<tweetsOfFirstSite.size();i++){
//          allCleanedSocial1Tweets += tweetsOfFirstSite.get(i)+"\r\n";
//      }
//      allCleanedSocial1Tweets = allCleanedSocial1Tweets.trim();
//      FileOutputStream fos = new FileOutputStream("C:\\Users\\Prabhu\\Documents\\NetBeansProjects\\myfinalproject\\datacenters\\ds1\\tweets.txt");
//      fos.write(allCleanedSocial1Tweets.getBytes());
//      fos.close();
//      out.println("First Social site is freem from anomoly tweets");
//      //
//
//     }catch(Exception e ){
//        out.println(e);
//    }
    %>
     <div class="row">
         <div class="col-sm-12">
             <h3><b><i>Welcome Admin. Here you can remove all Anomaly tweets of the User. Data Analytics can be done on the tweets to get the visual presentation of number of Normal tweets and number of Anomaly tweets posted by users.</i></b></h3> 
         </div>
         <br><br><br><br>
        <div class="col-sm-12">
    <a href="graph.jsp">graph
    </a></div>
    <br><div class="col-sm-12">
    <a href="clear.jsp">Clean the anomoly  tweets 
    </a></div>
    <br><div class="col-sm-12">
    <a href="mixedtweetpercentage.jsp">See the mixed tweets 
    </a></div>
     </div>
    
</center>
    
    
        <footer class="text-center" style="margin-top:100px">
    <div class="row">
        <div class="col-sm-6"  id="section41">
      
	    <p>Social media website to detect anomoly.</p>
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
	    <a href="http://localhost:8080/soclal2final/clean.jsp"/><i class="fa fa-arrow-up fa-fw"></i></a>
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
