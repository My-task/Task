<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%
String a=request.getParameter("area");
String b=request.getParameter("hname");
String c=request.getParameter("hrate");

try
   {
	Connection con1 = databasecon.getconnection();
	PreparedStatement ps=con1.prepareStatement("insert into area (area,hallname,hallrate) values('"+a+"','"+b+"','"+c+"')");
    ps.executeUpdate();
	response.sendRedirect("admin_hall_detail.jsp");
   }
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}



	%>