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
		RequestDispatcher dispatcher = request.getRequestDispatcher("cart.jsp");
        request.setAttribute("cart", cart);
	    dispatcher.forward(request, response);
	}
	

	public void addToCart(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		String id = request.getParameter("id");
		ProductCart productCart;
		
		if (id != null) {
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
			response.sendRedirect("/beauty-cosmetic-workspace/cart");
			return;
		}
	}
	
	public void updateQuantity(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		try {
			Map<String, String[]> parameterMap = request.getParameterMap();
			HashMap<Integer, ProductCart> updatedCart = new HashMap<Integer, ProductCart>();
			for (Map.Entry<String, String[]> entry : parameterMap.entrySet()) {
			    String id = entry.getKey();
			    if (id.startsWith("product-cart-")) {
			    	
			        int quantity = Integer.parseInt(entry.getValue()[0]);
			        int productId = Integer.parseInt(id.replace("product-cart-", ""));
			        Product product = productDao.selectProductById(productId);
			        ProductCart productCart = new ProductCart(quantity, product);
			        updatedCart.put(productId, productCart);
			    }
			}
			HttpSession session = request.getSession();
			session.setAttribute("cart", updatedCart);
			response.sendRedirect("/beauty-cosmetic-workspace/cart");
			return;
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
	}
	
//	public void checkout(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
//		
//	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String actionString = request.getPathInfo();
		
			switch (actionString) {
				case "/addToCart":
					addToCart(request, response);
					break;
				case "/updateQuantity":
					updateQuantity(request, response);
					break;
//				case "/checkout":
//					checkout(request, response);
//					break;
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
