package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import entity.Brand;
import entity.Category;
import util.DBUtil;

public class BrandDao {
	static Connection conn = null;
	static PreparedStatement pstm = null;
	static ResultSet rs = null;
	
	public static List < Brand >  selectAllBrand() throws SQLException {
		List < Brand > brand = new ArrayList < > ();

		
		try {
			conn = DBUtil.makeConnection();
			
			String sql = "SELECT * FROM brand";
			
			pstm = conn.prepareStatement(sql);
			
			rs = pstm.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("id");
                String name = rs.getString("name");
                
                brand.add(new Brand(id, name)) ;
			} 

	} catch (SQLException e) {
        printSQLException(e);
    }
		return brand;
	}
	
    public static Brand selectBrandById(int id) {
    	Brand brand = null;
        try {
			conn = DBUtil.makeConnection();
			
			String sql = "select name from category where id =?";
			
			pstm = conn.prepareStatement(sql);
			
			rs = pstm.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                brand = new Brand(id, name);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        return brand;
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
