<%@ page language="java" import="java.sql.*,databaseconnection.*" errorPage="" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>event planner</title>
	<link rel="stylesheet" type="text/css" href="style.css" />
	
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
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="user_login1.jsp" ><strong><font color="#FFFFFF"><font size="3">Home</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; <a href="user_login1.jsp" ><strong><font color="#FFFFFF"><font size="3">Back</font></font></strong></a> &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="index.html" ><strong><font color="#FFFFFF"><font size="3">Logout</font></font></strong></a> 
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">Hall Details</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
        <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
	  			
				
		   <div style="position:absolute; left: 156px; top:267px; width:700px; height:275px;" class="sd">
    <form action="#" name="f1" method="post" >
        <table align="center" width="914" height="95" border="1" cellpadding="0" cellspacing="0">
          <tr bgcolor="#FFB693"> 
              <th width="182" height="52"><font color="#FF0000"><strong><font size="2">Area</font></strong></font></th>
              <th width="230"> <font color="#FF00000"><strong><font size="2">Hall 
                Name</font></strong></font></th>
				<th width="248"> <font color="#FF00000"><strong><font size="2">Hall 
                Rate</font></strong></font></th>
             
            
          </tr>
          <%
  Connection con = null;
  PreparedStatement st = null;
  ResultSet rs = null;

  String a = null,b = null,c=null;
  
  
	try
		{
		
        con = databasecon.getconnection();  
       // st = con.createStatement();
		st = con.prepareStatement("select * from area order by area");
		rs = st.executeQuery();
		while(rs.next())
       	{
		 a=rs.getString("area");
	     b=rs.getString("hallname");
		   c=rs.getString("hallrate");
		 
		  
	%>
          <tr bgcolor="#FFCCCC"> 
              <td align="center" height="41">
			   <strong><font size="2"> <%=a%></font></strong> 
                </td>
              <td align="center">
			   <strong><font size="2"><%=b%></font></strong> 
			   </td>
              <td align="center"> 
			  <strong><font size="2"> <%=c%></font></strong> 
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
    