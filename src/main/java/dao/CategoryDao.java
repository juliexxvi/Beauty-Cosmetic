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

public class CategoryDao {

	static Connection conn = null;
	static PreparedStatement pstm = null;
	static ResultSet rs = null;
	
	public static List < Category >  selectAllCategory() throws SQLException {

		List < Category > category = new ArrayList < > ();
		
		try {
			conn = DBUtil.makeConnection();
			
			String sql = "SELECT * FROM category";
			
			pstm = conn.prepareStatement(sql);
			
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("id");
                String name = rs.getString("name");
                
                category.add(new Category(id, name)) ;
			} 

	} catch (SQLException e) {
        printSQLException(e);
    }
		return category;
	}
	
    public static Category selectCategoryById(int id) {
    	Category category = null;
    	
        try {
			conn = DBUtil.makeConnection();
			
			String sql = "select name from category where id =?";
			
			pstm = conn.prepareStatement(sql);
			
			rs = pstm.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                category = new Category(id, name);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return category;
    }

	
	private static void printSQLException(SQLException ex) {
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
