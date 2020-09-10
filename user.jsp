<html>
<head>
	<meta charset="UTF-8" />
	<title>Travel Rating</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%
    if (request.getParameter("msg") != null) {%>
    <script>alert('User Registered Successfully...!');</script>
<%}%>
<body>
<div id="header">
<div class="section">
    <span id="ribbon"></span>
    <span id="button"></span>
    <div>
        <div id="logo">
            <a href="index.html"><img src="images/logo.gif" alt="Logo" /></a>
        </div>
        <div id="navigation">
            <ul class="primary">
                    <li><a href="index.html">Home</a></li>
                    <li><a href="admin.jsp">Admin</a></li>
                    <li class="current"><a href="user.jsp">User</a></li>
                    <li><a href="guest.jsp">Guest User</a></li>
                    <li><a href="contact.html">Contact us</a></li>
            </ul>
        </div>
    </div>
</div>
</div>
<div id="content">
<div>
    <span class="background"></span>
    <div class="section">
        <center>
            <h1 class="title"><font color="blue"><i>User Login</i></font></h1></center>
        <form action="useract.jsp" method="post">
        <center><table width="281" border="0" >
        <tr>
            <td><font color="black"> User Name :</td>
            <td><input type="text" name="username" required="" /></td>
        </tr>
        <tr>
            <td><font color="black"> Password :</td>
            <td><input type="password" name="password" required="" /></td>
        </tr>
        <td rowspan="2" align="center">
        <td><input type="submit" name="submit" value="Login" /></td>
        </table></center>
        </form>
        <center><a href="userreg.jsp">
                <font color="red" style="font-size: 15px">Click here for Registration </font>
        </a></center>  
        <br><br>
    </div>
</div>
</div>
<div id="footer">
        <p> All Rights Reserved.</p>
</div>
</body>
</html>