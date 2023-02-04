package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entity.ProductCart;

/**
 * Servlet implementation class CheckoutServlet
 */
@WebServlet("/checkout")
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutServlet() {
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
					showCheckout(request, response);
					break;
			} 
		} catch (SQLException ex) {
            throw new ServletException(ex);
        }
		
		return;
	}


	public void showCheckout(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		HttpSession session = request.getSession();
		HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
		System.out.println("render checkout");
		RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
        request.setAttribute("cart", cart);
	    dispatcher.forward(request, response);
	}
	
	public void checkout(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String actionString = request.getPathInfo();
		
			switch (actionString) {
				case "/checkout":
					checkout(request, response);
					break;
				default: 
					RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				    dispatcher.forward(request, response);
					
			} 
		} catch (SQLException ex) {
            throw new ServletException(ex);
        }
		return;
	}

}
