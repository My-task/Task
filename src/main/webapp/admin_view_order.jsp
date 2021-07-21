<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="admin_login.jsp" ><strong><font color="#FFFFFF"><font size="3">Home</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="admin_login.jsp" ><strong><font color="#FFFFFF"><font size="3">Back</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html" ><strong><font color="#FFFFFF"><font size="3">Logout</font></font></strong></a> 
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
	 <a href="view_all_book.jsp"> <div style="position:absolute; left: 461px; top: 218px;"><strong><font color="#CC3300" size="+1">View All Booking</font></strong></div></a>
	  	<div style="position:absolute; left: 148px; top: 278px; width: 735px; height: 200px;" class="sd">
		   
    <form action="#" name="f1" method="post" onsubmit="return val();">
        <table align="center" width="929" height="116" border="1" cellpadding="0" cellspacing="0">
		<tr bgcolor="#FFCEB7">
              <th colspan="14" height="40" align="center"><strong><font color="#FF0000" size="+1">Booking 
                Details</font></strong></th>
            </tr>
          <tr bgcolor="#FFE1FF"> 
              <th width="69" height="40"><font color="#FF0000"><strong><font size="2">Booking_Id</font></strong></font></th>
              <th width="65"> <font color="#FF00000"><strong><font size="2">Name</font></strong></font></th>
              <th width="71"> <font color="#FF0000"><strong><font size="2">Contact</font></strong></font></th>
              <th width="65"> <font color="#FF0000"><strong><font size="2">Email</font></strong></font></th>
              <th width="66"> <font color="#FF0000"><strong><font size="2">Event 
                Name</font></strong></font></th>
              <th width="66"> <font color="#FF0000"><strong><font size="2">Event 
                Date</font></strong></font></th>
              <th width="63"> <font color="#FF0000" size="2"><strong>Area</strong></font></th>
              <th width="65"> <font color="#FF0000"><strong><font size="2">Hall 
                Name</font></strong></font></th>
              <th width="81"> <font color="#FF0000"><strong><font size="2">Decoration 
                Name</font></strong></font></th>
              <th width="64"> <font color="#FF0000" size="2"><strong>Food Type</strong></font></th>
              <th width="69"> <font color="#FF0000" size="2"><strong>Total Guests</strong></font></th>
			    <th width="69"> <font color="#FF0000" size="2"><strong>Charges</strong></font></th>
              <th width="67"> <font color="#FF0000" size="2"><strong>Status</strong></font></th>
			   <th width="90"> <font color="#FF0000" size="2"><strong>Action</strong></font></th>
          </tr>
          <%
  Connection con = null;
  PreparedStatement st = null;
  ResultSet rs = null;
  String s="process going on";
  int a=0;
  String b = null,c = null,d=null,g=null,h=null,i=null,j=null,k=null,l=null,m=null,n=null,o=null;
  
  
	try
		{
		
        con = databasecon.getconnection();  
       // st = con.createStatement();
		st = con.prepareStatement("select * from  booking where status='"+s+"' order by date ");
		rs = st.executeQuery();
		while(rs.next())
       	{
	   
	    
		   a=rs.getInt("bid");
		   b=rs.getString("name");
		   c=rs.getString("contact");
		   d=rs.getString("email");
		   g=rs.getString("event");
		   h=rs.getString("date");
		   i=rs.getString("area");
		   j=rs.getString("hallname");
		   k=rs.getString("dec_name");
		   l=rs.getString("food");
		   m=rs.getString("total");
		    n=rs.getString("bill");
			o=rs.getString("status");
	%>
          <tr bgcolor="#C1E0FF"> 
              <td height="34"><strong><font size="2"><%=a%></font></strong> 
              </td>
              <td> <strong><font size="2"><%=b%></font></strong>    
              </td>
              <td> <strong><font size="2"><%=c%></font></strong> 
                
              </td>
              <td> <strong><font size="2"><%=d%></font></strong> 
                
              </td>
              <td> <strong><font size="2"> <%=g%></font></strong> 
               
              </td>
              <td> <strong><font size="2"><%=h%></font></strong> 
                
              </td>
              <td> <strong><font size="2"><%=i%></font></strong> 
                
              </td>
              <td> <strong><font size="2"><%=j%></font></strong> 
                
              </td>
              <td> <strong><font size="2"><%=k%></font></strong> 
                
              </td>
              <td> <strong><font size="2"><%=l%></font></strong> 
                
              </td>
              <td> <strong><font size="2"><%=m%></font></strong> 
                
              </td>
			  <td> <strong><font size="2"><%=n%></font></strong> 
                
              </td>
			  			  <td> <strong><font size="2"><%=o%></font></strong> 
                
              </td>

			
			   <td> <strong><font size="2"><a href="admin_act.jsp?<%=a%>">Send</a></font></strong> 
                
              </td>
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
        
        <div class="clear"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div> 
    
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
    