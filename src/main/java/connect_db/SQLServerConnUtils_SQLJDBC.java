package connect_db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLServerConnUtils_SQLJDBC {

	public SQLServerConnUtils_SQLJDBC() {
		// TODO Auto-generated constructor stub
	}

	public static String DB_URL = "jdbc:sqlserver://localhost:1433;encrypt=false;databaseName=DatVeXe;integratedSecurity=true;trustServerCertificate=true;sslProtocol=TLSv1.2;";
	public static String USER_NAME = "DESKTOP-12J6D6C";
	public static String PASSWORD = "";

	// Kết nối vào SQL Server.
	// (Sử dụng thư viện SQLJDBC)
	public static Connection getSQLServerConnection_SQLJDBC2() //
			throws ClassNotFoundException, SQLException {

		Connection conn = null;
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(DB_URL, USER_NAME, PASSWORD);
			System.out.println("connect successfully!");
		} catch (Exception ex) {
			System.out.println("connect failure!");
			ex.printStackTrace();
		}
		return conn;
	}

	public static void closeQuietly(Connection conn) {
		try {
			conn.close();
		} catch (Exception e) {
		}
	}

	public static void rollbackQuietly(Connection conn) {
		try {
			conn.rollback();
		} catch (Exception e) {
		}
	}
	
	public static Connection getSQLServerConnection_SQLJDBC() 
	        throws SQLException, ClassNotFoundException 
	    { 
	        String dbDriver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"; 
	        String dbURL = "jdbc:sqlserver://localhost:1433"; 
	        // Database name to access 
	        String dbName = "VEXEONLINE"; 
	        String dbUsername = "sa"; 
	        String dbPassword = "123456"; 
	        String connectionURL = dbURL + ";databaseName=" + dbName;
	        Connection conn = null;
	        try {
	            Class.forName(dbDriver);
	            conn = DriverManager.getConnection(connectionURL, dbUsername, dbPassword);
	            System.out.println("connect successfully!");
	        } catch (Exception ex) {
	            System.out.println("connect failure!");
	            ex.printStackTrace();
	        }
	        return conn; 
	    } 

}
