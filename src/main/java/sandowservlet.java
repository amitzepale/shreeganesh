

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class sandowservlet
 */
@WebServlet("/sandowservlet")
public class sandowservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private sandowDao sandowdao;
	public void init()
	{
		sandowdao = new sandowDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sandowservlet() {
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
		
		sandow_getset sandow = new sandow_getset();
		sandow.setProduct_name(product_name);
		sandow.setProduct_price(product_price);
		sandow.setProduct_description(product_description);
		sandow.setProduct_image(product_image);
		
		try {
			sandowdao.san(sandow);
        } catch (Exception e) {
            e.printStackTrace();
        }
		response.sendRedirect("sandow.jsp");
	}
}
