<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%
String area=(String)session.getAttribute("area");
String hallname=(String)session.getAttribute("halls");
String date=(String)session.getAttribute("date");


ResultSet rs=null;
try {
Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
	

	String qry="select * from booking where  area='"+area+"' && hallname='"+hallname+"' && date='"+date+"'";
		rs =st.executeQuery(qry);
		if(rs.next())
		{
		%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>H Free Software Template</title>
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
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">Order Booking</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
         	 		<div style="position:absolute; left: 281px; top: 287px;"> 
       <font color="#FF3333"size="+1"> <%=hallname%></font>
        &nbsp;&nbsp;<font color="#323265" size="+1">in</font> 
          <font color="#FF3333"size="+1"> <%=area%></font> &nbsp;&nbsp;
        <font color="#323265" size="+1">is not available on</font>  
        <font color="#FF3333"size="+1">&nbsp;&nbsp;<%=date%></font> 
      </div>
	<div style="position:absolute; left: 480px; width: 17px; height: 14px; top: 351px;"><a href="order.jsp" class="buttonc">&nbsp;&nbsp;&nbsp;ok&nbsp;&nbsp;&nbsp;</a></div>
 
      <div class="features"><br /><br /><br /><br /><br /><br />
      </div> 
         
         
         <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
        

        </div>  
        
        <div class="clear"><br /><br /><br /></div> 
    
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
       

 	   <%

		}
		else
		{
		response.sendRedirect("order2.jsp");

		}
		}
	
	catch(Exception e1)
	{out.println(e1.getMessage());}
	%>
			
		