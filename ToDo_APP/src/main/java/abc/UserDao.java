    package abc;
    import java.util.*;  
	import  java.sql.*;  
	public class UserDao 
	{  
	public static Connection getConnection()
	{  
	        Connection con=null;  
	        try
	        {   
	            Class.forName("com.mysql.cj.jdbc.Driver"); 
	            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","6202281767");     
	        }
	        catch(Exception e)
	        {System.out.println(e);}  
	        return   con;  
	    }  	
	    public static int save(User e)
	{  
	       int status=0;  
	        try{  
	            Connection con=UserDao.getConnection();  
	            PreparedStatement ps=con.prepareStatement("insert into user values (?,?,?,?)");      		
				ps.setString(1,e.getFirstName());
	            ps.setString(2,e.getLastName());  
	            ps.setString(3,e.getUserName());  
	            ps.setString(4,e.getPassword());  
	            status=ps.executeUpdate();  
	          con.close();  
	        }
	        catch(Exception ex)
	        {ex.printStackTrace();}  
	       return status;  
	    }
	}

