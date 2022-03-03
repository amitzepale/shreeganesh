

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class contact_servlet
 */
@WebServlet("/contact_servlet")
public class contact_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private contactDao contdao;
	public void init()
	{
		contdao = new contactDao();
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contact_servlet() {
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
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String number = request.getParameter("number");
		String comment = request.getParameter("comment");
		
		contact_getset contact = new contact_getset();
		contact.setName(name);
		contact.setEmail(email);
		contact.setNumber(number);
		contact.setComment(comment);
		
		
		try {
			contdao.cont(contact);
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		response.sendRedirect("contact.jsp");
	}

}
