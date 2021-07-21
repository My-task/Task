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
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">More Details</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
        <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
	   <%
		   String bid=request.getQueryString();
		   
		   String sn=null;
		   String st=null;
		   String dec=null;
		   
		    
		   try
		 {
		 Connection con = databasecon.getconnection();  
       	 PreparedStatement ps = con.prepareStatement("select * from  booking where bid='"+bid+"'");
		 ResultSet rs = ps.executeQuery();
         while(rs.next())
		 {
		 sn=rs.getString("sname");
		  st=rs.getString("stype");
		    dec=rs.getString("dec_name");
		 }
		 }
		 catch(Exception e2)
	     {
	     out.println(e2.getMessage());
	     }
		 %>
		   
      <div style="position:absolute; left: 361px; top: 247px; width: 322px; height: 413px;">
		   
   <form>
   <table height="280" cellpadding="5" cellspacing="5">
  
   <tr>
              <td ><strong><font color="#AA3700" size="+1">Show Name</font></strong></td>
              <td ><font color="#000033" size="+1"><%=sn%></font></td>
   </tr>
   <tr>
   <td><strong><font color="#AA3700" size="+1">Show Type</font></strong></td>
   <td><font color="#000033" size="+1"><%=st%></font></td>
   </tr>
  
   <tr>
              <td ><strong><font color="#AA3700" size="+1">Hall Decoration</font></strong></td>
   <td><img src="view_birth_image.jsp?product_name=<%=dec%>" height="150" width="150"></td>
   </tr>
   <tr>
              <td colspan="2" align="center"><a href="book_action.jsp?<%=bid%>" class="buttonc">action</a></td>
   </tr>
   </table>
   </form>
    </div>
    </div>  
        
        <div class="clear"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /></div> 
    
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
    