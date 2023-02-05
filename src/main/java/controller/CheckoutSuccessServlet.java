package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckoutSuccessServlet
 */
@WebServlet("/checkout-success")
public class CheckoutSuccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutSuccessServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String actionString = request.getPathInfo();
			
			if (actionString == null) {
				actionString = "/";
			}
			
			switch (actionString) {
				case "/":
					showCheckoutSuccess(request, response);
					break;
			} 
		} catch (SQLException ex) {
            throw new ServletException(ex);
        }
		
		return;
	}
	
	public void showCheckoutSuccess(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("checkoutSuccess.jsp");
	    dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
