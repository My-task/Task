<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title><script type="text/javascript">
	function valid()
	{
	if(document.f.emp.selectedIndex==0)
	{
	alert("Select Employee Name");
	document.f.emp.focus();
	return false;
	}
	}
	
	</script>
	
<link rel="stylesheet" type="text/css" href="style.css" />

		</head>
<body>

		   <div id="main_container">
	<div id="header">
    	
    <div class="logo"><strong><font color="#FFFFFF" size="+2">ACTIVITY MANAGEMENT SYSTEM</font></strong></div>       
    </div>
        <div class="menu">
        	<ul>
			
        	</ul><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="admin_login.jsp" ><strong><font color="#FFFFFF"><font size="3">Home</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="admin_view_order.jsp" ><strong><font color="#FFFFFF"><font size="3">Back</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html" ><strong><font color="#FFFFFF"><font size="3">Logout</font></font></strong></a> 
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
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div> <%
	   String x=request.getQueryString();
  Connection con,con1 = null;
  PreparedStatement st,st1 = null;
  ResultSet rs,rs1 = null;
  int a=0;
  String b = null,c = null,d=null,g=null,h=null,n=null;
  String e="employee";
  
	try
		{
		
        con = databasecon.getconnection();  
       // st = con.createStatement();
		st = con.prepareStatement("select * from  booking where bid='"+x+"'");
		rs = st.executeQuery();
		while(rs.next())
       	{
	      a=rs.getInt("bid");
		   b=rs.getString("name");
		   c=rs.getString("contact");
		   d=rs.getString("email");
		   g=rs.getString("event");
		   h=rs.getString("date");
		   
		 
	   }
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	   
	   %>
	  <div style="position:absolute; left: 234px; top: 279px; width: 409px; height: 332px;"><form name="f" action="work_asign.jsp"  onsubmit="return valid()" method="get">
	   <table width="314" height="300" cellpadding="5" cellspacing="5">
	  <tr>
              <td ><font size="2"><strong>Booking Id</strong></font></td>
              <td><input type="text" name="bid" value="<%=a%>"></td></tr> 
	    <tr>
              <td><font size="2"><strong>Name</strong></font></td>
              <td><input type="text" name="name" value="<%=b%>"></td></tr> 
	   <tr>
              <td><font size="2"><strong>Contact</strong></font></td>
              <td><input type="text" name="cno" value="<%=c%>"></td></tr>
	    <tr>
              <td><font size="2"><strong>Email Id</strong></font></td>
              <td><input type="text" name="bid" value="<%=d%>"></td></tr> 
		 <tr>
              <td><font size="2"><strong>Event</strong></font></td>
              <td><input type="text" name="bid" value="<%=g%>"></td></tr> 
	   <tr>
              <td><font size="2"><strong>Date</strong></font></td>
              <td><input type="text" name="bid" value="<%=h%>"></td></tr> 
	    <tr>
            <td><font size="2"><strong>Work Asign to</strong></font></td>
		<td><select name="emp">
		<option value="0">--select--</option>
	   <%
	   
	   
	try
		{
		
     con1 = databasecon.getconnection();  
       // st = con.createStatement();
	 st1 = con1.prepareStatement("select * from  employee_detail where employeetype='"+e+"'");
		rs1 = st1.executeQuery();
		while(rs1.next())
       	{
		n=rs1.getString("fullname");
		%>
		<option><%=n%></option>
		<%
		
		}
	  
	 }
	   catch(Exception e2)
	   {
	     out.println(e2.getMessage());
	   }
	    %>
	   
	   
      </td>
	  </tr>
	  <tr><td></td><td><input type="submit" name="sub" value="submit" class="buttonc"></td></tr>
	  </select> 
	   </tr> 
	  
	  
	   </table>
	   
	   </form></div><div style="position:absolute; width: 153px; height: 107px; left: 611px; top: 244px;"><img src="images/music.png" height="150"></div>
	   <div style="position:absolute; width: 153px; height: 107px; left: 619px; top: 412px;"><img src="images/dance.png" height="150"></div>	
    </div>  
        
        <div class="clear"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div> 
    
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
    