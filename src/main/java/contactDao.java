import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class contactDao {
	
	public int cont(contact_getset contact) throws ClassNotFoundException{
		String sql = "INSERT INTO `contact`(`id`, `name`, `email`, `number`, `comment`) VALUES (?, ?, ?, ?, ?)";
		int result=0;
		
		Class.forName("com.mysql.jdbc.Driver");
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akshay","root","");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, 1);
			ps.setString(2, contact.getName());
			ps.setString(3, contact.getEmail());
			ps.setString(4, contact.getNumber());
			ps.setString(5, contact.getComment());
			
			result = ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}

}
