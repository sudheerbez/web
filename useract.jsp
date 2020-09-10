<%@ page import="java.sql.*"%>
<%@ page import="java.util.*" %>
<%@ include file="connect.jsp" %>
<%
    String username = request.getParameter("username");
    System.out.println(username);
    String password = request.getParameter("password");
    System.out.println(password);
    
    try{
        
    
   
        String query="select * from user where username='"+username+"' and password='"+password+"' and status='Activated'";
         Statement st = connection.createStatement();
         ResultSet rs =st.executeQuery(query);
    if (rs.next()){
        session.setAttribute("username", username);
   
    response.sendRedirect("userhome.jsp?msg=sucesss");
    
    }   else 
                {
                   %>
               <br/><br/><br/>
               <center><font color='' size='5'> You are not authorized by administrator...!

                <br/><br/>
                <a href="user.jsp">Back</a></font></center>
                <%
                    }
    }
     catch(Exception e)
    {
        System.out.println("Error in userlogact"+e.getMessage());
    }
%>