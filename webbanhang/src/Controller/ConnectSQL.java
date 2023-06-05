package Controller;


import java.sql.Connection;
import java.sql.DriverManager;


public class ConnectSQL {
	public static Connection getConnection() {
		Connection c=null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://ANHQUAN\\ADMIN_BLABLA:1433;databaseName=webbanhang;encrypt=false;";
			String user="sa";
			String password="123456";
			c=DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c;
	}
}
