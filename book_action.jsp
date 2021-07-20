<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>
<%
	
String s=request.getQueryString();
//System.out.println(s);
String x="action_taken";
 try
		{
		 Connection con = databasecon.getconnection();  
       	 PreparedStatement st = con.prepareStatement("update booking set emp_action='"+x+"' where bid='"+s+"'");
		 st.executeUpdate();
         response.sendRedirect("emp_work_detail.jsp");
		}
		 catch(Exception e2)
	     {
	     out.println(e2.getMessage());
	     }


  %>
		