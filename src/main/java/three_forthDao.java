import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class three_forthDao {
	public int three(three_forth_getset three_forth) throws ClassNotFoundException{
		String sql = "INSERT INTO `three_forth`(`id`, `product_name`, `product_price`, `product_description`, `product_image`) VALUES (?, ?, ?, ?, ?)";
		int result=0;
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akshay","root","");
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1,0);
			ps.setString(2, three_forth.getProduct_name());
			ps.setString(3, three_forth.getProduct_price());
			ps.setString(4, three_forth.getProduct_description());
			ps.setString(5, three_forth.getProduct_image());
			
			result = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
		
	}

}
