

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Jservlet
 */
@WebServlet("/Jservlet")
public class Jservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private productDao productdao;
	public void init()
	{
		productdao = new productDao();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Jservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String product_name = request.getParameter("product_name");
		String product_price = request.getParameter("product_price");
		String product_description = request.getParameter("product_description");
		String product_image = request.getParameter("product_image");
		
		product_getset product = new product_getset();
		product.setProduct_name(product_name);
		product.setProduct_price(product_price);
		product.setProduct_description(product_description);
		product.setProduct_image(product_image);
		
		try {
            productdao.pro(product);
        } catch (Exception e) {
            e.printStackTrace();
        }
		response.sendRedirect("jeans.jsp");
	}

}
