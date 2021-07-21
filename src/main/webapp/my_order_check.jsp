<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>H Free Software Template</title>
<link rel="stylesheet" type="text/css" href="style.css" />

		</head>
<body>
<%
String bno=request.getParameter("bno");
%>
		   <div id="main_container">
	<div id="header">
    	
    <div class="logo"><strong><font color="#FFFFFF" size="+2">ACTIVITY MANAGEMENT SYSTEM</font></strong></div>       
    </div>
        <div class="menu">
        	<ul>
			
        	</ul><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="user_login1.jsp" ><strong><font color="#FFFFFF"><font size="3">Home</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="my_order.jsp" ><strong><font color="#FFFFFF"><font size="3">Back</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html" ><strong><font color="#FFFFFF"><font size="3">Logout</font></font></strong></a> 
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">Booking Details</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
        <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
	  <div style="position:absolute; left: 148px; top: 300px; width: 725px; height: 211px;" class="sd">
		   
    <form action="#" name="f1" method="post" onsubmit="return val();">
        <table align="center" width="914" height="174" border="1" cellpadding="5" >
		<tr bgcolor="#FF9933">
              <td height="61" colspan="16" align="center"><strong><font color="#FF0000" size="+1">Booking 
                Details</font></strong></td>
            </tr>
          <tr  bgcolor="#FFCE9D"> 
              <th width="75" height="66"><font color="#FF0000" size="2">Booking_Id</font></th>
              <th width="100"> <font color="#FF00000" size="2">Name</font></th>
              <th width="100"> <font color="#FF0000" size="2">Contact</font></th>
              <th width="100"> <font color="#FF0000" size="2">Email</font></th>
               <th width="100"> <font color="#FF0000" size="2">Show Name</font></th>
			      <th width="100"> <font color="#FF0000" size="2">Show Type</font></th>
		
            <th width="100"> <font color="#FF0000" size="2">Event Date</font></th>
            <th width="100"> <font color="#FF0000" size="2">Area</font></th>
            <th width="100"> <font color="#FF0000" size="2">Hall Name</font></th>
            <th width="100"> <font color="#FF0000" size="2">Decoration Name</font></th>
            <th width="100"> <font color="#FF0000"  size="2">Food Type</font></th>
            <th width="100"> <font color="#FF0000"  size="2">Total Guests</font></th>
            <th width="100"> <font color="#FF0000"  size="2">Bill</font></th>
			<th width="100"> <font color="#FF0000"  size="2">Status</font></th>
          </tr>
          <%
		  String name=(String)session.getAttribute("name");
  Connection con = null;
  PreparedStatement st = null;
  ResultSet rs = null;
  int a=0;
  String b = null,c = null,d=null,e =null,f=null,g=null,h=null,i=null,j=null,k=null,l=null,m=null,n=null,o=null,p=null;
  
  
	try
		{
		
        con = databasecon.getconnection();  
       // st = con.createStatement();
		st = con.prepareStatement("select * from booking where bid='"+bno+"' && name='"+name+"'");
		rs = st.executeQuery();
		while(rs.next())
       	{
	   
	    
		   a=rs.getInt("bid");
		   b=rs.getString("name");
		   c=rs.getString("contact");
		   d=rs.getString("email");
		   e=rs.getString("sname");
		   f=rs.getString("stype");
		   
		  i=rs.getString("date");
		   j=rs.getString("area");
		   k=rs.getString("hallname");
		   l=rs.getString("dec_name");
		  m=rs.getString("food");
		   n=rs.getString("total");
		   o=rs.getString("bill");
		    p=rs.getString("status");
	%>
          <tr bgcolor="#FFEBE1"> 
             <td> <font color="#323265" size="2"><strong>  <%=a%></strong>  </font></td>
			  <td> <font color="#323265" size="2"><strong>  <%=b%></strong>  </font></td>
			   <td> <font color="#323265" size="2"><strong>  <%=c%></strong>  </font></td>
			    <td> <font color="#323265" size="2"><strong>  <%=d%></strong>  </font></td>
				 <td> <font color="#323265" size="2"><strong>  <%=e%></strong>  </font></td>
			 <td> <font color="#323265" size="2"><strong>  <%=f%></strong>  </font></td>
             <td> <font color="#323265" size="2"><strong>  <%=i%></strong>  </font></td>
             <td> <font color="#323265" size="2"><strong>  <%=j%></strong>  </font></td>
             <td> <font color="#323265" size="2"><strong>  <%=k%></strong>  </font></td>
            <td> <font color="#323265" size="2"><strong>  <%=l%></strong>  </font></td>
             <td> <font color="#323265" size="2"><strong>  <%=m%></strong>  </font></td>
			  <td> <font color="#323265" size="2"><strong>  <%=n%></strong>  </font></td>
            
			  <td> <font color="#323265" size="2"><strong>  <%=o%></strong>  </font></td>
			  <td> <font color="#323265" size="2"><strong>  <%=p%></strong>  </font></td>
                 </tr>
          <%
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	    %>
        </table>
		</form>
    </div>
       
    </div>  
        
        <div class="clear"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div> 
    
    </div>    

    
    <div id="footer">                                              
        
    <div class="left_footer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="#"><font color="#FFFFFF" size="3"><strong>Chennaisunday Systems Pvt Ltd.&nbsp;&nbsp;Phone:&nbsp;9566137117</strong></font></a></div>
        
    <div class="right_footer"> </div>   
    
    </div>
    
    
    
</div>
<!-- end of main_container -->

</body>
</html>