

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class t_shirtservlet
 */
@WebServlet("/t_shirtservlet")
public class t_shirtservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private t_shirtDao t_shirtdao;
	public void init()
	{
		t_shirtdao = new t_shirtDao();
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public t_shirtservlet() {
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
		
		t_shirt_getset shirt = new t_shirt_getset();
		shirt .setProduct_name(product_name);
		shirt .setProduct_price(product_price);
		shirt .setProduct_description(product_description);
		shirt .setProduct_image(product_image);
		
		try {
			t_shirtdao.shir(shirt);
        } catch (Exception e) {
            e.printStackTrace();
        }
		response.sendRedirect("t-shirt.jsp");
	}

}
