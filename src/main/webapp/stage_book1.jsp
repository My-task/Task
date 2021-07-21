<%@ page  import="java.sql.*" import="databaseconnection.*"%>
<%
 String name=(String)session.getAttribute("name");
  String cno=(String)session.getAttribute("cno");
    String area=(String)session.getAttribute("area");
	    String hallname=(String)session.getAttribute("halln");
		   
	 String date=(String)session.getAttribute("date");
	 
	  
	  String event="stageshow";
	  
String bid =null;
 ResultSet rs = null;
 
 try
    {
	 Connection con1 = databasecon.getconnection();
	PreparedStatement ps1=con1.prepareStatement("select * from booking where name='"+name+"' && contact='"+cno+"' && event='"+event+"' && area='"+area+"'&& date='"+date+"' ");
    rs=	ps1.executeQuery();
	while(rs.next())
	{
	bid=rs.getString("bid");
	}
	}
	catch(Exception e1)
	{
	out.println(e1.getMessage());
	}
	%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>activity management</title>
<link rel="stylesheet" type="text/css" href="style.css" />

		</head>
<body>
<div id="main_container">
	<div id="header">
    	
    <div class="logo"><strong><font color="#FFFFFF" size="+2">ACTIVITY MANAGEMENT SYSTEM</font></strong></div>       
    </div>
        <div class="menu">
        	<ul>
			
        	</ul>
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">Order Booking</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
         
				<div style="position:absolute; left: 350px; top: 269px; width: 331px; height: 32px;"><font color="#002E5B" size="+1">Your Booking is Successfully Registered</font>  </div>
      <div style="position:absolute; left: 407px; top: 331px; width: 255px; height: 32px;"><font color="#002E5B"size="+1">Your Booking Number is</font> 
       <font color="#FF6600" size="+2">&nbsp; <%=bid%></font> 
      </div>
	  
	
     	  <div style="position:absolute; left: 519px; top: 394px; width: 47px; height: 17px;"><a href="user_login1.jsp" class="buttonc">&nbsp;&nbsp;ok&nbsp;&nbsp;</a></div>

                   
      
      <div class="features"><br /><br /><br />
      </div> 
         
         
         <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
        

        </div>  
        
        <div class="clear"><br /><br /><br /><br /><br /><br /><br /></div> 
    
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
       

 
