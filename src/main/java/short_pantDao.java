import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class short_pantDao {
	public int shor(short_pant_getset short_pant) throws ClassNotFoundException{
		String sql = "INSERT INTO `shorts`(`id`, `product_name`, `product_price`, `product_description`, `product_image`) VALUES (?, ?, ?, ?, ?)";
		int result=0;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akshay","root","");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,0);
			ps.setString(2, short_pant.getProduct_name());
			ps.setString(3, short_pant.getProduct_price());
			ps.setString(4, short_pant.getProduct_description());
			ps.setString(5, short_pant.getProduct_image());
			
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
}
