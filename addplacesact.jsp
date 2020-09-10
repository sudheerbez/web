<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp" %>
<%@ page session="true" %>
<html>
<head>
</head>
<body>

<%
    
    String category = request.getParameter("category");
    String placename = request.getParameter("placename");
    String image = request.getParameter("image");
    try{
        PreparedStatement pst2 = connection.prepareStatement("insert into places(category,placename,image) values(?,?,?)");
      
	pst2.setString(1,category);
        pst2.setString(2,placename);
        pst2.setString(3,image);
        pst2.executeUpdate();
         
         response.sendRedirect("addplaces.jsp?msg=success");
         
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</div>
</body>
</html>