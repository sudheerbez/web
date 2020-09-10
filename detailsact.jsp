<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp" %>
<%@ page session="true" %>
<html>
<head>
</head>
<body>

<%
    
    String username = request.getParameter("username");
    String placename = request.getParameter("placename");
    String category = request.getParameter("category");
    String image = request.getParameter("image");
    String description = request.getParameter("description");
    String latitude = request.getParameter("latitude");
    String longitude = request.getParameter("longitude");
    String address = request.getParameter("address");
    String rating = request.getParameter("rating");
    try{
        PreparedStatement pst2 = connection.prepareStatement("insert into rating(username,placename,category,image,description,latitude,longitude,address,rating) values(?,?,?,?,?,?,?,?,?)");
        pst2.setString(1,username);
        pst2.setString(2,placename);
        pst2.setString(3,category);
        pst2.setString(4,image);
        pst2.setString(5,description);
        pst2.setString(6,latitude);
        pst2.setString(7,longitude);
        pst2.setString(8,address);
        pst2.setString(9,rating);
        pst2.executeUpdate();
         
         response.sendRedirect("uviewplaces.jsp?msg=success");
         
}
catch(Exception e1)
{
out.println(e1.getMessage());
}


%>

</div>
</body>
</html>