

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class short_pantservlrt
 */
@WebServlet("/short_pantservlrt")
public class short_pantservlrt extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private short_pantDao short_pantdao;
	public void init()
	{
		short_pantdao = new short_pantDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public short_pantservlrt() {
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
		
		short_pant_getset short_pant = new short_pant_getset();
		short_pant.setProduct_name(product_name);
		short_pant.setProduct_price(product_price);
		short_pant.setProduct_description(product_description);
		short_pant.setProduct_image(product_image);
		
		try {
			short_pantdao.shor(short_pant);
        } catch (Exception e) {
            e.printStackTrace();
        }
		response.sendRedirect("sandow.jsp");
	}

}
