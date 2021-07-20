<%@ page import="java.sql.*"  import="databaseconnection.*" errorPage="" %>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
<link rel="stylesheet" type="text/css" href="style.css" />

	</head>
<body>
<%
String sname=request.getParameter("sname");
session.setAttribute("sname",sname);
//System.out.println(cake);
String stype=request.getParameter("stype");
session.setAttribute("stype",stype);
%><div id="main_container">
	<div id="header">
    	
    <div class="logo"><strong><font color="#FFFFFF" size="+2">ACTIVITY MANAGEMENT SYSTEM</font></strong></div>       
    </div>
        <div class="menu">
        	<ul>
			
        	</ul><br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="user_login1.jsp" ><strong><font color="#FFFFFF"><font size="3">Home</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="order.jsp" ><strong><font color="#FFFFFF"><font size="3">Back</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html" ><strong><font color="#FFFFFF"><font size="3">Logout</font></font></strong></a> 
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">Select Decoration Model</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
        <div style="position:absolute; left:165px; top:260px; width:125px; height: 125px;">
	<a href="order4.jsp?stage1"><img src="view_birth_image.jsp?product_name=stage1" height="125" width="125"></a>
	</div> 
                  
  <div style="position:absolute; left:445px; top:260px; width:125px; height: 125px;">
	<a href="order4.jsp?stage2"><img src="view_birth_image.jsp?product_name=stage2" height="125" width="125"></a>
	</div>
         <div style="position:absolute; left:725px; top:260px; width:125px; height: 125px;">
	<a href="order4.jsp?stage3"><img src="view_birth_image.jsp?product_name=stage3" height="125" width="125"></a>
	</div>
         <div style="position:absolute; left:165px; top:440px; width:125px; height: 125px;">
	<a href="order4.jsp?stage4"><img src="view_birth_image.jsp?product_name=stage4" height="125" width="125"></a>
	</div>
	<div style="position:absolute; left:445px; top:440px; width:125px; height: 125px;">
	<a href="order4.jsp?stage5"><img src="view_birth_image.jsp?product_name=stage5" height="125" width="125"></a>
	</div>
	<div style="position:absolute; left:725px; top:440px; width:125px; height: 125px;">
	<a href="order4.jsp?stage6"><img src="view_birth_image.jsp?product_name=stage6" height="125" width="125"></a>
	</div>
         <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
        

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