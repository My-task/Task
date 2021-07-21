<%@ page import="java.util.date.*,java.util.text.DateFormat.*,java.text.ParseException.*"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException"%>	 

<%
 String ed=request.getParameter("ed");
 session.setAttribute("date",ed);
String hallname=request.getParameter("hallname");
 session.setAttribute("halls",hallname);
//System.out.println(hallname);
java.util.Date now = new java.util.Date();
      String date=now.toString();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now) ; 
	 
	
int b=3;

	  SimpleDateFormat formater = new SimpleDateFormat("dd/MM/yyyy");
     Date cd1 = formater.parse(strDateNew1); 
     Date ed1 =formater.parse(ed); 
	long a=((ed1.getTime() - cd1.getTime()) / (1000 * 60 * 60 * 24));
//System.out.println(a);
//if(ed1.after(cd1))
//{
if(a>b)
{
response.sendRedirect("avail_check.jsp");
}

else
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
         	 
      <div style="position:absolute; left: 273px;"><font color="#002B55" size="+1"><strong>You can book a order 
        3 days before the event date</strong></font></div>
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
%>