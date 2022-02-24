import java.sql.*;
public class loginDao {

	public boolean vali(getset ge) throws ClassNotFoundException{
		
		boolean status=false;
		
		Class.forName("com.mysql.jdbc.Driver");
		try{
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akshay?useSSL=false","root","");
			String sql = "SELECT * FROM LOGIN username= ? AND password= ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, ge.getUsername());
			ps.setString(2, ge.getPassword());
			
			ResultSet rs = ps.executeQuery();
			status = rs.next();
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
}
