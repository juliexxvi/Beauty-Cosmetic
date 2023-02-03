package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BrandDao;
import dao.CategoryDao;
import dao.ProductDao;
import entity.Brand;
import entity.Category;
import entity.Product;

/**
 * Servlet implementation class HomeServlet
 */
@WebServlet(urlPatterns = {
		"/list",
		"/new",
		"/insert",
		"/delete",
		"/edit",
		"/update"
})
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductDao productDao; 
	public void init() {
	
		productDao = new ProductDao();
    }

    public ProductServlet() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
    		String action = request.getServletPath();
    		System.out.println(action);
    		if (action == null) {
    			action = "list";
    		}
    		
            switch (action) {
                case "/new":
                    showNewForm(request, response);
                    break;
                case "/insert":
                	insertProduct(request, response);
                    break;
                case "/delete":
                    deleteProduct(request, response);
                    break;
                case "/edit":
                    showEditForm(request, response);
                    break;
                case "/update":
                	updateProduct(request, response);
                    break;
                default:
                    listproduct(request, response);
                    break;
            }
        } catch (SQLException ex) {
            throw new ServletException(ex);
        }
		
	}

	private void deleteProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
        productDao.deleteProduct(id);
        response.sendRedirect("list");
	}

	private void showEditForm(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
        String id = request.getParameter("id");
		
		List<Category> category = CategoryDao.selectAllCategory();
		List<Brand> brand = BrandDao.selectAllBrand();
		request.setAttribute("category", category);
		request.setAttribute("brand", brand);

        Product existingProduct= productDao.selectProductById(Integer.parseInt(id));
//        System.out.print(existingProduct.getId());
        RequestDispatcher dispatcher = request.getRequestDispatcher("updateProduct.jsp");
        request.setAttribute("existingProduct", existingProduct);
        dispatcher.forward(request, response);
		
	}

	private void updateProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("productName");
		String imageUrl = request.getParameter("imageUrl");
		String packageSize = request.getParameter("packageSize");
		String description = request.getParameter("description");
		
		Float unitPrice = new Float(0);
		String unitPriceString = request.getParameter("unitPrice");
		if (unitPriceString != null) {
			unitPrice = Float.parseFloat(request.getParameter("unitPrice"));
		} 
		
		int brandId = 0;
		String brandIdString = request.getParameter("brand");
		if (brandIdString != null) {
			brandId = Integer.parseInt(request.getParameter("brand"));
		} 
		
		int categoryId = 0;
		String categoryIdSring = request.getParameter("category");
		if (categoryIdSring != null) {
			categoryId = Integer.parseInt(request.getParameter("category"));
		} 
		
		String lotNumber = request.getParameter("lotNumber");
		Product updateProduct = new Product(id, name, imageUrl, packageSize, description, unitPrice, brandId, lotNumber, categoryId);
		productDao.updateProduct(updateProduct);

		response.sendRedirect("list");
		
	}
	

	private void showNewForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		List<Category> category = CategoryDao.selectAllCategory();
		List<Brand> brand = BrandDao.selectAllBrand();
		request.setAttribute("category", category);
		request.setAttribute("brand", brand);
		RequestDispatcher dispatcher = request.getRequestDispatcher("addProduct.jsp");
        dispatcher.forward(request, response);
		
	}

	private void insertProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		String productName = request.getParameter("productName");
		String imageUrl = request.getParameter("imageUrl");
		String packageSize = request.getParameter("packageSize");
		String description = request.getParameter("description");
		
		Float unitPrice = new Float(0);
		String unitPriceString = request.getParameter("unitPrice");
		if (unitPriceString != null) {
			unitPrice = Float.parseFloat(request.getParameter("unitPrice"));
		} 
		
		int brandId = 0;
		String brandIdString = request.getParameter("brand");
		if (brandIdString != null) {
			brandId = Integer.parseInt(request.getParameter("brand"));
		} 
		
		int categoryId = 0;
		String categoryIdSring = request.getParameter("category");
		if (categoryIdSring != null) {
			categoryId = Integer.parseInt(request.getParameter("category"));
		} 
		
		String lotNumber = request.getParameter("lotNumber");
		Product newProduct = new Product(productName, imageUrl, packageSize, description, unitPrice, brandId, lotNumber, categoryId);
		productDao.insertProduct(newProduct);
        response.sendRedirect("list");
		
	}

	private void listproduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException, ServletException {
		// get products from dbUtil
		List < Product > products = productDao.selectAllProducts();
		List < Category > categories = CategoryDao.selectAllCategory();
		// add products to request
		request.setAttribute("products", products);
		request.setAttribute("categories", categories);

		RequestDispatcher dispatcher = request.getRequestDispatcher("productList.jsp");
        dispatcher.forward(request, response);
        
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
