<%@ page import="java.sql.*" import="databaseconnection.*" errorPage="" %>
<%
String hallname=(String)session.getAttribute("halls");
String hall=(String)session.getAttribute("hall");
//System.out.println(hall);
String food=request.getParameter("food");
session.setAttribute("food",food);
//System.out.println(food);

//System.out.println(bname);
String total=request.getParameter("total");
session.setAttribute("total",total);
String foodr="150";

//System.out.println(total);

ResultSet rs=null,rs1=null;

String hallrate=null;
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();
	
	String qry="select * from area where hallname='"+hallname+"'";
		rs =st.executeQuery(qry);
		
	
	while(rs.next())
	{	
	 hallrate=rs.getString("hallrate");
	}
	 
	}     	
	catch(Exception e2)
	{
		out.println(e2.getMessage());
	}
//System.out.println(hallrate);
	String bdr=null;
try
{
	Connection con1 = databasecon.getconnection();
	Statement st1 = con1.createStatement();
	
	String qry1="select * from decoration where dec_name='"+hall+"'";
		rs1 =st1.executeQuery(qry1);
		
	
	while(rs1.next())
	{	
	bdr=rs1.getString("rate");
	}
	 
	}     	
	catch(Exception e1)
	{
		out.println(e1.getMessage());
	}
	
int a = Integer.parseInt(hallrate);
int b = Integer.parseInt(bdr);
	
int t=Integer.parseInt(total);
int fr=Integer.parseInt(foodr);
int s =a+b+(fr*t);
String sum=Integer.toString(s);
//System.out.println(sum);
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
			
        	</ul><br/>
  </div>
        
    <div class="center_content">
    
     	<div class="center_left">
        	
      <div class="title_welcome">Order Booking</div>
            <div class="welcome_box1">
            
        <p class="welcome"></p>
      </div>
         
      <div style="position:absolute; left: 319px; top: 282px; width: 331px; height: 22px;"><font color="#36366D" size="+1">The 
        Prise Estimation of Your Booking is</font> </div><div style="position:absolute; left: 425px; top: 335px; width: 192px; height: 23px;"> <img src="images/rs1.png" height="20" width="20"> 
        <font color="#FF6600" size="+2"> <%=sum%> </font></div>
	  <div style="position:absolute; left: 402px; top: 391px; width: 185px; height: 32px;"><font color="#36366D" size="+1">Continue To Book&nbsp;?</font> </div>
	  <div style="position:absolute; left: 399px; top: 456px; width: 63px; height: 13px;"><a href="order_book.jsp?<%=sum%>" class="buttonc">&nbsp;&nbsp;Yes&nbsp;&nbsp;</a></div>
     	  <div style="position:absolute; left: 537px; top: 457px; width: 47px; height: 17px;"><a href="user_login1.jsp" class="buttonc">&nbsp;&nbsp;No&nbsp;&nbsp;</a></div>

                  
      
      <div class="features"><br /><br /><br /><br /><br /><br />
      </div> 
         
         
         <div class="features">   
            
        <div class="title"></div>
                
      </div> 
         
         
           
            
            
        </div> 
        
        
        <div class="center_right">
        
       
     
        
                         
                        
                        
      <div class="testimonials"> </div>
          	<div style="position:absolute; width: 153px; height: 107px; left: 109px; top: 331px;"><img src="images/music1.png" height="150"></div>
				<div style="position:absolute; width: 153px; height: 107px; left: 649px; top: 320px;"><img src="images/dance.png" height="150"></div>
 

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
       
