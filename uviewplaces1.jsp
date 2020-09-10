<html>
<head>
	<meta charset="UTF-8" />
	<title>Travel Rating</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<%
    if (request.getParameter("message") != null) {%>
    <script>alert('User Activation Successful...!');</script>
    <%}%> 
    <%
        String search = request.getParameter("search");
    %>
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
                    <li class="current"><a href="userhome.jsp">Home</a></li>
                    <li><a href="uviewplaces.jsp">View Places</a></li>
                    <li><a href="myplaces.jsp">My Places</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
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
        try {
        PreparedStatement ps=connection.prepareStatement("select * from places where category='"+search+"'");
        ResultSet rs1 = ps.executeQuery();

    %>
<div id="content">
<div>
    <span class="background"></span>
    <div class="section">
         <br><br><center>
             <h2 class="title"><font color="blue"><i>Users Details</i></h2></center>
   
        <center><table border="2" width="100%">
        <tr>
        <th><font color="black">Category</th>
        <th><font color="black">Place Name</th>
        <th><font color="black">Image</th>
            </tr>

            <%                while (rs1.next()) {
            %>

    <tr>
         <th><font color="black"><%=rs1.getString("category")%></th>
         <th><font color="black"><%=rs1.getString("placename")%></th>
         <th><font color="black"><%=rs1.getString("image")%></th>
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