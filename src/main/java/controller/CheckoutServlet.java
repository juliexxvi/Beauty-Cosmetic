package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDao;
import dao.OrderDetailDao;
import dao.ProductDao;
import entity.Order;
import entity.OrderDetail;
import entity.ProductCart;

/**
 * Servlet implementation class CheckoutServlet
 */
@WebServlet(urlPatterns = {
		"/checkout/*"
})
public class CheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private OrderDao OrderDao; 
	private OrderDetailDao OrderDetailDao;
	public void init() {
	
		OrderDao = new OrderDao();
		OrderDetailDao = new OrderDetailDao();
    }
       
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
		RequestDispatcher dispatcher = request.getRequestDispatcher("checkout.jsp");
        request.setAttribute("cart", cart);
	    dispatcher.forward(request, response);
	}
	
	public void checkout(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String username = request.getParameter("username");
		String emailAddress = request.getParameter("emailAddress");
		String address = request.getParameter("address");
		int total = 0;
		
		HttpSession session = request.getSession();
		HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
		for (Map.Entry<Integer, ProductCart> entry: cart.entrySet()) {
			total += entry.getValue().getQuantity() * entry.getValue().getProduct().getUnitPrice();
		}
		Order order = new Order(total, firstname, lastname, username, emailAddress, address);
		int orderId = dao.OrderDao.insertOrder(order);
		
		for (Map.Entry<Integer, ProductCart> productCart: cart.entrySet()) {
			
			OrderDetail orderDetail = new OrderDetail(productCart.getValue().getProduct().getId(), orderId, productCart.getValue().getQuantity(), productCart.getValue().getProduct().getUnitPrice()*productCart.getValue().getQuantity(), 0);
			OrderDetailDao.insertOrderDetail(orderDetail);
		}
		session.setAttribute("cart", null);
		response.sendRedirect("/beauty-cosmetic-workspace/checkout-success");
		return;
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String actionString = request.getPathInfo();
		
			switch (actionString) {
				case "/confirm-checkout":
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
