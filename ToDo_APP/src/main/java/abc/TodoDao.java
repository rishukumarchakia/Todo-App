    package abc;
    import  java.util.*;  
	import  java.sql.*;  
	public class TodoDao 
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
	    public static int save1(Todo e)
	{  
	       int status=0;  
	        try{  
	            Connection con=UserDao.getConnection();  
	            PreparedStatement ps=con.prepareStatement("insert into todo1 values (?,?,?,?,?)");      		
				ps.setInt(1, e.getId());
	            ps.setString(2,e.getTitle());
	            ps.setString(3,e.getDescription());  
	            ps.setString(4,e.getStatus());  
	            ps.setString(5,e.getTargetDate());  
	            status=ps.executeUpdate();  
	          con.close();  
	        }
	      
	        catch(Exception ex)
	        {ex.printStackTrace();}  
	       return status;  
	       }
	    public static List<Todo> getAllTodo()
	    {  
	        List<Todo> list=new ArrayList<Todo>();  
	          
	       try{  
	            Connection con=getConnection();  
	            PreparedStatement ps=con.prepareStatement("select * from todo1");  
	            ResultSet rs=ps.executeQuery();  
	            while(rs.next()){  
	                Todo u=new Todo();  
	                u.setId(rs.getInt("id"));  
	                u.setTitle(rs.getString("title"));  
	                u.setDescription(rs.getString("description"));  
	                u.setTargetDate(rs.getString("targetDate"));  
	                 u.setStatus(rs.getString("status"));  
	                list.add(u);  
	            }  
	        }catch(Exception e){System.out.println(e);}  
	        return list;  

	    }
	    public static int delete(int id)
	    {
	    	int status=0;
	    	try
	    	{
	    		Connection con=TodoDao.getConnection();
	    		PreparedStatement ps=con.prepareStatement("delete from todo1 where id=?");
	    		ps.setInt(1,id);
	    		status=ps.executeUpdate();
	    		con.close();	
	    	}
	    catch(Exception e)
	    	{
	    	e.printStackTrace();
	    	}
	    	return status;
	    }
	    	public static Todo getTodoById(int id)
	    	{
	    		Todo e=new Todo();
	    		try
	    		{
	    			Connection con=TodoDao.getConnection();
	    			PreparedStatement ps=con.prepareStatement("select * from todo1 where id=?");
	    			ps.setInt(1, id);
	    			ResultSet rs=ps.executeQuery();
	    			if(rs.next())
	    			{
	    				e.setId(rs.getInt(1));
	    				e.setTitle(rs.getString(2));
	    				e.setDescription(rs.getString(3));
	    				e.setStatus(rs.getString(4));
	    				e.setTargetDate(rs.getString(5));
	    			}
	    			con.close();
	    		}
	    		catch(Exception ex)
	    		{
	    			ex.printStackTrace();
	    		}
	    	return e;
	    }
	    	public static int update(Todo e)
	    	{
	    		int status=0;
	    		try
	    		{
	    			Connection con=TodoDao.getConnection();
	    			PreparedStatement ps=con.prepareStatement("update todo1 set title=?,description=?,status=?,targetDate=? where id=?");
	    			ps.setString(1 , e.getTitle());
	    			ps.setString(2, e.getDescription());
	    			ps.setString(3, e.getStatus());
	    			ps.setString(4, e.getTargetDate());
	    			ps.setInt(5, e.getId());
	    			status=ps.executeUpdate();
	    			con.close();	    			
	    		}
	    		catch(Exception ex)
	    		{
	    			ex.printStackTrace();
	    		}
	    		return status;
	    	}
	}
	
	
