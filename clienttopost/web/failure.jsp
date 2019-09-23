<html>
<head>
<link href="homepage_style.css" type="text/css" rel="stylesheet"/>
<script>
function alertUser(msg) {
alert(msg);
}
</script>
</head>
<body onload="alertUser('Wrong password or username')">

<div id="header_wrapper">
 <div id="header">
 <li id="sitename"><a href="http://localhost:8080/clienttopost/">Social Network</a></li>
 <form action="login.jsp" method="post">
 <li>User name<br><input type="text" name="uname"></li>
 <li>Password<br><input type="password" name="password"><br><a href="admin.jsp">Admin Login</a></li>
 <li><input type="submit" name="login" value="Log In" onclick="alert('Logging In');"></li>
 </form>
 </div>
</div>

<div id="wrapper">

<div id="div1">
    <p> Wrong password or Username</p>
<img src="fb_map_image.png">
</div>

<div id="div2">
<h1>Create an account</h1>
<p>It's free and always will be.</p>
<form name="reg" method="post" action="registration.jsp">
<li><input type="text" placeholder="User Name" name="userName" required="required"></li>
<li><input type="password" placeholder="New password" name="password" required="required"></li>
<li><input type="password" placeholder="Confirm password" name="confirmPassword" required="required"></li>
<li><input type="tel" placeholder="Mobile number  Format: 0123456789" name="phoneNumber" required="required" pattern="[0-9]{10}"></li>
<li><input type="email" placeholder="Email address" name="emailId" required="required"></li>
<li id="terms">By clicking Create an account, you agree to our Terms and that <br>you have read our Data Policy,including our Cookie Use</li>
<li><input type="submit" value="Create an account"></li>
</form>
</div>

</div>

<div id="footer_wrapper">
</div>
</body>
</html>