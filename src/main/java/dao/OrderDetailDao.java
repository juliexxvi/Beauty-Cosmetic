package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.OrderDetail;
import util.DBUtil;

public class OrderDetailDao {

	Connection conn = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;
	
	public void insertOrderDetail(OrderDetail orderDetail) throws SQLException {
        try {
        	String sql = "INSERT INTO order_detail" + "  (product_id, order_id, quantity, unit_price, discount_rate) VALUES " +
        	        " (?, ?, ?, ?, ?)";
        	
        	conn = DBUtil.makeConnection();
        	pstm = conn.prepareStatement(sql);
        	
        	pstm.setInt(1, orderDetail.getProductId());
        	pstm.setInt(2, orderDetail.getOrderId());
        	pstm.setInt(3, orderDetail.getQuantity());
        	pstm.setFloat(4, orderDetail.getUnitPrice());
        	pstm.setFloat(5, orderDetail.getDiscountRate());
        	
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
	
}
