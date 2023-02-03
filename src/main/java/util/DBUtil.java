package util;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil implements Serializable {
	public static Connection makeConnection() {
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/beauty_cosmetic?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "tuandaica");
		return conn;
	} catch (Exception e) {
        // TODO Auto-generated catch block
        e.printStackTrace();
    }
	return null;
}
}
