import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JDao {

	public int pro(product_getset product) throws ClassNotFoundException{
		String sql = "INSERT INTO `product`(`id`, `product_name`, `product_price`, `product_description`, `product_image`) VALUES (?, ?, ?, ?, ?)";
		int result=0;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akshay","root","");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,0);
			ps.setString(2, product.getProduct_name());
			ps.setString(3, product.getProduct_price());
			ps.setString(4, product.getProduct_description());
			ps.setString(5, product.getProduct_image());
			
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}

}
