<%@page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page session="true" %>

  <%

                       
                        String username = request.getParameter("username");
                        try {

                            Statement st=connection.createStatement();
                            int j = st.executeUpdate("update user set status='Deactivated' where username='"+username+"'");
            if(j!=0)
            {
               response.sendRedirect("aviewusers.jsp?message=success");
            }
                              
                             else {
                                out.println(" failed");
                            }
                                                      } catch (Exception e) {
                                    e.printStackTrace();
                                }

                        %>