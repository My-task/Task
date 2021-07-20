<%@ page import="java.sql.*" import="databaseconnection.*" errorPage="" %>
<html>
<head>
<title>activity management</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%

String a=request.getParameter("bid");
String b=request.getParameter("emp");
String c="action taken";
String d="process going on";


try
    {
	 Connection con = databasecon.getconnection();
	PreparedStatement ps=con.prepareStatement("update booking set workto='"+b+"',status='"+c+"',emp_action='"+d+"' where bid='"+a+"'");
    
	ps.executeUpdate();
	response.sendRedirect("admin_view_order.jsp?message=success");
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}

%>
</body>
</html>
