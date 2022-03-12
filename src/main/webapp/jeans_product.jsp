<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
table{
	
}
</style>
</head>
<body>
	<table border="0px" cellspacing="4px" cellpadding="10px">
	<%
		try{
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/akshay","root","");
				Statement st = cn.createStatement();
				ResultSet rs = st.executeQuery("select * from jeans");
				int cnt = 0;
				while(rs.next())
				{
					String name, price, dec, img;
					
					name = rs.getString("product_name").trim();
					price = rs.getString("product_price").trim();
					dec = rs.getString("product_description").trim();
					img = rs.getString("product_image");
					
					if(cnt==3)
					{
						out.println("</tr><tr>");
						cnt=0;
					}
					
					cnt++;
					
				%>
				
					<td><img src="product_image/jpg<%=img%>" height="100px" width="100px"><br>
					Brand Name=<%=name %><br>Price=<%=price %><br>Product Details=<%=dec%>
					</td>
				
				<% 
				}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	%>	
	</table>
</body>
</html>