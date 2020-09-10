<html>
<head>
	<meta charset="UTF-8" />
	<title>Travel Rating</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
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
                   <li class="current"><a href="index.html">Home</a></li>
                    <li><a href="admin.jsp">Admin</a></li>
                    <li><a href="user.jsp">User</a></li>
                    <li><a href="guest.jsp">Guest User</a></li>
                    <li><a href="contact.html">Contact us</a></li>
            </ul>
        </div>
    </div>
</div>
</div>
<%@page import="java.sql.*"%>
<%@ page session="true" %>
<%@ include file="connect.jsp" %>
<div id="templatemo_main">
  
<div id="content">
<div>
    <span class="background"></span>
    <div class="section">
         <center>
        <h1 class="title"><font style="italic" color="blue">Welcome to our web site....!</h1></center>
        <form action="guest1.jsp"  method="post" >
<center>
<table> 
    </tr>
    <tr>
        <th><font color="black">Category</td>
        <th>
            <select name="search">
                <option value="Select">--Select--</option>
                <option value="National">National</option>
                <option value="International">International</option>
            </select>
        </th>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" value="Search"></td>
    </tr>
</table>
 <input type="hidden" name="fname">
</form>
           
            
            </table></center> 
    </div>
</div>
</div>
<div id="footer">
        <p> All Rights Reserved.</p>
</div>
</body>
</html>