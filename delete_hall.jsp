<%@ page import="java.sql.*" import="databaseconnection.*" errorPage="" %>
<html>
<head>
<title>transport management</title>
</head>

<body>
<%
String a =request.getQueryString();


try
    {
	 Connection con = databasecon.getconnection();
	PreparedStatement ps=con.prepareStatement("delete from area  where hallname='"+a+"'");
    
	ps.executeUpdate();
	response.sendRedirect("admin_hall_detail.jsp?message=success");
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}

%>
</body>
</html>
