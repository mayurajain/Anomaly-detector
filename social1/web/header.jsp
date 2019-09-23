 <html>
<head><title>header</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
function cart() {
	
    window.alert("Please login");
}
function cart1() {
	
    window.alert("Redirecting");
}
</script>
</head>
<body data-spy="scroll" data-target=".navbar">

<div class="jumbotron" style="margin-top:00px;margin-bottom:00px">
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
<div class="row" style="background-color:#f0f0f0">
    <div class="col-sm-7"><h3 class="text-left ">Book</h3></div>
    <div class="col-sm-5"><h3 class="text-right">a device to Ignite your imagination</h3></div>
  </div>
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Book</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#section42">Contact</a></li>
         <li><a href="posting.jsp">Post</a></li>

      </ul>
      
      <ul class="nav navbar-nav navbar-right">

      <li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
      
      </ul>
    </div>
  </div>
</nav>
</div>
</body>
</html>