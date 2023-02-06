package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import entity.Order;
import util.DBUtil;

public class OrderDao {
	
	static Connection conn = null;
	static PreparedStatement pstm = null;
	static ResultSet rs = null;
	
	public static int insertOrder(Order order) throws SQLException {
        try {
        	String sql = "INSERT INTO `order`" + "  (total_amount, first_name, last_name, username, email_address, address) VALUES " +
        	        " (?, ?, ?, ?, ?, ?)";
        	
        	conn = DBUtil.makeConnection();
        	pstm = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
        	
        	pstm.setFloat(1, order.getTotalAmount());
        	pstm.setString(2, order.getFirstName());
        	pstm.setString(3, order.getLastName());
        	pstm.setString(4, order.getUsername());
        	pstm.setString(5, order.getEmailAddress());
        	pstm.setString(6, order.getAddress());
        	
        	pstm.execute();
        	
        	try (ResultSet rs = pstm.getGeneratedKeys()) {
        		if (rs.next()) {
        			return rs.getInt(1);
        		}
        	}
            
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
        		return 0;
        	}
        }
        return 0;
    }
}
