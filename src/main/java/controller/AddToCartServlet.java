package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDao;
import entity.Product;
import entity.ProductCart;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet(urlPatterns = {
		"/cart/*"
})
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	private static ProductDao productDao; 
	public void init() {
		
		productDao = new ProductDao();
    }
    public AddToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String actionString = request.getPathInfo();
			System.out.println("Do get cart");
			System.out.println("Action String");
			System.out.println(actionString);
		
			if (actionString == null) {
				actionString = "/";
			}
			switch (actionString) {
				case "/":
					showCart(request, response);
					break;
			} 
		} catch (SQLException ex) {
            throw new ServletException(ex);
        }
		return;
	}

	
	public void showCart(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		HttpSession session = request.getSession();
		
		HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");
		System.out.println("show cart");	
		System.out.println(cart);
		RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
        request.setAttribute("cart", cart);
	    dispatcher.forward(request, response);
	}

	public void addToCart(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		String id = request.getParameter("id");
		System.out.println("Run add to cart");
		System.out.println("id " +id);
		ProductCart productCart;
		
		if (request.getParameter("id") != null) {
			int intId = Integer.parseInt(id);
			Product product = productDao.selectProductById(intId);
			HttpSession session = request.getSession();
			HashMap<Integer, ProductCart> cart = (HashMap<Integer, ProductCart>) session.getAttribute("cart");	
			
			if (cart == null) {
				cart = new HashMap<Integer, ProductCart>();
				productCart = new ProductCart(1, product);
				cart.put(intId, productCart);
			} else {
				// Has that product in cart already
				if (cart.containsKey(intId)) {
					productCart = cart.get(intId);
					productCart.incrementQuantity();
				} else {
					productCart = new ProductCart(1, product);
					cart.put(intId, productCart);
				}
			}
			session.setAttribute("cart", cart);
			
			//print out product name to console
//			for (Map.Entry<Integer, ProductCart> entry: cart.entrySet()) {
//				System.out.println("name of product" + entry.getValue().getProduct().getBrandId());
//				System.out.println("quantity" + entry.getValue().getQuantity());
//			}
			response.sendRedirect("/beauty-cosmetic-workspace/cart");
			return;
		}
	}
	
	public void updateQuantity(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String actionString = request.getPathInfo();
			System.out.println("Do get cart");
			System.out.println("Action String");
			System.out.println(actionString);
		
			switch (actionString) {
				case "/addToCart":
					addToCart(request, response);
					break;
				case "/updateQuantity":
					updateQuantity(request, response);
					break;
				default: 
					System.out.println(actionString);
					RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
				    dispatcher.forward(request, response);
					
			} 
		} catch (SQLException ex) {
            throw new ServletException(ex);
        }
		return;
	}

}
