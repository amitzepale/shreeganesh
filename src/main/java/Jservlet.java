

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
       
	private JDao Jdao;
	public void init()
	{
		Jdao = new JDao();
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
		
		J_getset jeans = new J_getset();
		jeans.setProduct_name(product_name);
		jeans.setProduct_price(product_price);
		jeans.setProduct_description(product_description);
		jeans.setProduct_image(product_image);
		
		try {
            Jdao.pro(jeans);
        } catch (Exception e) {
            e.printStackTrace();
        }
		response.sendRedirect("jeans.jsp");
	}

}
