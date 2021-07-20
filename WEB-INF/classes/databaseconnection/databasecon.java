package databaseconnection;
import java.sql.*;

public class databasecon
{
	static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("database-2.cvsajvcyqnsg.us-east-1.rds.amazonaws.com","root","$Saxena$(b72)$");
		}
		catch(Exception e)
		{
			System.out.println("class error");
		}
		return con;
	}
	
}
