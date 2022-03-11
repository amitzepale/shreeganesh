import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class shirtDao {
	public int pro(shirt_getset shirt) throws ClassNotFoundException{
		String sql = "INSERT INTO `jeans`(`id`, `product_name`, `product_price`, `product_description`, `product_image`) VALUES (?, ?, ?, ?, ?)";
		int result=0;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akshay","root","");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,0);
			ps.setString(2, shirt.getProduct_name());
			ps.setString(3, shirt.getProduct_price());
			ps.setString(4, shirt.getProduct_description());
			ps.setString(5, shirt.getProduct_image());
			
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
}
