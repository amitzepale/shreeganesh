

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class three_forth_servlet
 */
@WebServlet("/three_forth_servlet")
public class three_forth_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private three_forthDao three_forthdao;
	public void init()
	{
		three_forthdao = new three_forthDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public three_forth_servlet() {
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
		
		three_forth_getset three_forth = new three_forth_getset();
		three_forth.setProduct_name(product_name);
		three_forth.setProduct_price(product_price);
		three_forth.setProduct_description(product_description);
		three_forth.setProduct_image(product_image);
		
		try {
			three_forthdao.three(three_forth);
        } catch (Exception e) {
            e.printStackTrace();
        }
		response.sendRedirect("three_forth.jsp");
	}
}
