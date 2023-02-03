package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Category;
import entity.Product;
import util.DBUtil;

public class ProductDao {
	
	Connection conn = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;
	public List < Product >  selectAllProducts() throws SQLException {
		List < Product > products = new ArrayList < > ();
		
		try {
			conn = DBUtil.makeConnection();
			
			String sql = "SELECT * FROM product";
			
			pstm = conn.prepareStatement(sql);
			
			rs = pstm.executeQuery();
			
			System.out.println("Connected");
			
			while (rs.next()) {
				int id = rs.getInt("id");
                String name = rs.getString("name");
                String imageUrl = rs.getString("image_URL");
                String packageSize = rs.getString("package_size");
                String description = rs.getString("description");
                float unitPrice = rs.getFloat("unit_price");
                int brandId = rs.getInt("brand_id");
                String lotNumber = rs.getString("LOT_number");
                int categoryId = rs.getInt("category_id");
                
                products.add(new Product(id, name, imageUrl, packageSize , description, unitPrice, brandId, lotNumber, categoryId)) ;
			} 
			return products;
	} finally {
    	try {
    		if (rs != null) {
    			rs.close();
    		} if (pstm != null) {
    			pstm.close();
    		} if (conn != null) {
    			conn.close();
    		}
    	} catch (SQLException e) {
    		e.printStackTrace();
    	}
    }
	}
	
    public Product selectProductById(int id) {
    	Product product = null;
        // Step 1: Establishing a Connection
        try {
			conn = DBUtil.makeConnection();
			
			String sql = "select name, image_URL, package_size, description, unit_price, brand_id, LOT_number, category_id from product where id =?";
			
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			
			rs = pstm.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String imageUrl = rs.getString("image_URL");
                String packageSize = rs.getString("package_size");
                String description = rs.getString("description");
                float unitPrice = rs.getFloat("unit_price");
                int brandId = rs.getInt("brand_id");
                String lotNumber = rs.getString("LOT_number");
                int categoryId = rs.getInt("category_id");
                product = new Product(id, name, imageUrl, packageSize, description, unitPrice, brandId, lotNumber, categoryId);

            }
        } catch (SQLException e) {
            printSQLException(e);
        } finally {
        	try {
        		if (rs != null) {
        			rs.close();
        		} if (pstm != null) {
        			pstm.close();
        		} if (conn != null) {
        			conn.close();
        		}
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
        }
        return product;
    }
	
    public void insertProduct(Product product) throws SQLException {
        // try-with-resource statement will auto close the connection.
        try {
        	conn = DBUtil.makeConnection();
        	String sql = "INSERT INTO product" + "  (name, image_URL, package_size, description, unit_price, brand_id, LOT_number, category_id) VALUES " +
        	        " (?, ?, ?, ?, ?, ?, ?, ?)";
        	pstm = conn.prepareStatement(sql);
        	
        	pstm.setString(1, product.getName());
        	pstm.setString(2, product.getImageUrl());
        	pstm.setString(3, product.getPackageSize());
        	pstm.setString(4, product.getDescription());
        	pstm.setFloat(5, product.getUnitPrice());
        	pstm.setInt(6, product.getBrandId());
        	pstm.setString(7, product.getLotNumber());
        	pstm.setInt(8, product.getCategoryId());
        	
        	pstm.execute();
            
        } finally {
        	try {
        		if (rs != null) {
        			rs.close();
        		} if (pstm != null) {
        			pstm.close();
        		} if (conn != null) {
        			conn.close();
        		}
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
        }
    }
    
    public void updateProduct(Product product) throws SQLException {
        try {
        	conn = DBUtil.makeConnection();
        	String sql = "update product set name = ?, image_URL = ?, package_size = ?, description = ?, unit_price = ?, brand_id = ?, LOT_number = ?, category_id = ? where id = ?";
        	pstm = conn.prepareStatement(sql);
        	
        	// set params
        	pstm.setString(1, product.getName());
        	pstm.setString(2, product.getImageUrl());
        	pstm.setString(3, product.getPackageSize());
        	pstm.setString(4, product.getDescription());
        	pstm.setFloat(5, product.getUnitPrice());
        	pstm.setInt(6, product.getBrandId());
        	pstm.setString(7, product.getLotNumber());
        	pstm.setInt(8, product.getCategoryId());
        	pstm.setInt(9, product.getId());
        	
        	pstm.execute();
        	
        } finally {
        	try {
        		if (rs != null) {
        			rs.close();
        		} if (pstm != null) {
        			pstm.close();
        		} if (conn != null) {
        			conn.close();
        		}
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
        }
    }
    
    public void deleteProduct(int id) throws SQLException {
        try {
        	conn = DBUtil.makeConnection();
        	String sql = "delete from product where id = ?";
        	pstm = conn.prepareStatement(sql);
        	
        	pstm.setInt(1, id);

        	pstm.execute();
        	
        } finally {
        	try {
        		if (rs != null) {
        			rs.close();
        		} if (pstm != null) {
        			pstm.close();
        		} if (conn != null) {
        			conn.close();
        		}
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
        } 
    }
    
    
    public List <Product> selectProductsByCategoryId(String id) {
    	List <Product> list = new ArrayList<>();
    	Category category = null;
    	
        try {
			conn = DBUtil.makeConnection();
			
			String sql = "select * from product where category_id = ?";
			
			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, id);
			
			rs = pstm.executeQuery();
			
			
            while (rs.next()) {
            	int productId = rs.getInt("id");
                String name = rs.getString("name");
                String imageUrl = rs.getString("image_URL");
                String packageSize = rs.getString("package_size");
                String description = rs.getString("description");
                float unitPrice = rs.getFloat("unit_price");
                int brandId = rs.getInt("brand_id");
                String lotNumber = rs.getString("LOT_number");
//                int categoryId = rs.getInt("category_id");
                
                list.add(new Product(productId, name, imageUrl, packageSize , description, unitPrice, brandId, lotNumber, Integer.parseInt(id))) ;
                System.out.println(list);
            }
        } catch (SQLException e) {
            printSQLException(e);
        } finally {
        	try {
        		if (rs != null) {
        			rs.close();
        		} if (pstm != null) {
        			pstm.close();
        		} if (conn != null) {
        			conn.close();
        		}
        	} catch (SQLException e) {
        		e.printStackTrace();
        	}
        }
        return list;
    }
    
    public List <Product> selectTopProducts() {
    	List <Product> topProductList = new ArrayList<>();
    	
        try {
			conn = DBUtil.makeConnection();
			
			String sql = "select * from product order by id desc limit 4";
			
			pstm = conn.prepareStatement(sql);
			
			rs = pstm.executeQuery();
			
			System.out.println("Connected Top Product");

            while (rs.next()) {
            	String name = rs.getString("name");
                String imageUrl = rs.getString("image_URL");
                String packageSize = rs.getString("package_size");
                String description = rs.getString("description");
                float unitPrice = rs.getFloat("unit_price");
                int brandId = rs.getInt("brand_id");
                String lotNumber = rs.getString("LOT_number");
                int categoryId = rs.getInt("category_id");
                
                topProductList.add(new Product( name, imageUrl, packageSize , description, unitPrice, brandId, lotNumber, categoryId)) ;
            }

        } catch (SQLException e) {
            printSQLException(e);
        } finally {
        	try {
        		if (rs != null) {
        			rs.close();
        		} if (pstm != null) {
        			pstm.close();
        		} if (conn != null) {
        			conn.close();
        		}
        	} catch (SQLException e) {
        		System.out.print("cannot connect to db");
        		e.printStackTrace();
        	}
        }
        return topProductList;
    }
    
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}

