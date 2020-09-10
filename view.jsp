<html>
<head>
    <meta charset="UTF-8" />
    <title>Travel Rating</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
     <link rel="stylesheet" type="text/css" href="style1.css" />
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
                     <li class="current"><a href="userhome.jsp">Home</a></li>
                    <li><a href="uviewplaces.jsp">View Places</a></li>
                    <li><a href="myplaces.jsp">My Places</a></li>
                    <li><a href="logout.jsp">Logout</a></li>
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
       

	
<%@page import="java.util.ArrayList"%>
<%@ page session="true" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.text.SimpleDateFormat,java.util.Date,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page session="true" %>

               
<%
    String category=request.getParameter("search");
    String s1,s2,s3,s4,s5,s6;

    try{
            ArrayList al=new ArrayList();
            String sql="select * from places where category = '"+category+"'";

            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
                s2=rs.getString("placename");
                s3=rs.getString("image");
            al.add(s3);
%>


<figure>
    <img height="100" width="100" src="Gallery/<%=s3%>" />	
    
    <figcaption>
        <a href="details.jsp?placename=<%=s2%>&image=<%=s3%>&category=<%=category%>"><%=s2%></a></span></span><br />
        <span class="style8"><span class="style27">
    </figcaption>
	
</figure>
        

        <%}


         %>
			 
        <%
            if(al.isEmpty())
            {
        %>

        
        <%
            }
            connection.close();
            }
            catch(Exception e)
            {
            out.println(e.getMessage());
            }

        %>
    </div></center></div></body></html>