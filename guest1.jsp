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
    <%
    
    String search = request.getParameter("search");
        try {
        PreparedStatement ps = connection.prepareStatement("select * from rating where category = '"+search+"' ");
        ResultSet rs1 = ps.executeQuery();

    %>
<div id="content">
<div>
    <span class="background"></span>
    <div class="section">
         <br><br><center>
             <h2 class="title"><font color="blue"><i>Place Details</i></h2></center>
   
        <center><table border="2" width="100%">
        <tr>
        <th><font color="orange">User Name</th>
        <th><font color="orange">Placename</th>
        <th><font color="orange">Image</th>
        <th><font color="orange">Description</th>
        <th><font color="orange">Latitude</th>
        <th><font color="orange">Longitude</th>
        <th><font color="orange">Address</th>
        <th><font color="orange">Rating</th>
            </tr>

            <%                while (rs1.next()) {
            %>

    <tr>
         <th><font color="black"><%=rs1.getString(1)%></th>
         <th><font color="black"><%=rs1.getString(2)%></th>
          <th><img src="Gallery/<%=rs1.getString(4)%>" width="100" height="100"></th>
         <th><font color="black"><%=rs1.getString(5)%></th>
         <th><font color="black"><%=rs1.getString(6)%></th>
         <th><font color="black"><%=rs1.getString(7)%></th>
         <th><font color="black"><%=rs1.getString(8)%></th>
         <th><font color="black"><%=rs1.getString(9)%></th>
         
            <%
                }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
            </table></center> 
    </div>
</div>
</div>
<div id="footer">
        <p> All Rights Reserved.</p>
</div>
</body>
</html>