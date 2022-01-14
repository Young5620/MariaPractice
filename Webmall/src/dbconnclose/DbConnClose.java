package dbconnclose;
import java.sql.*;
public class DbConnClose {

	public static Connection getConnection() {
		//JDBC 드라이버 로딩
		String driverClass = "org.mariadb.jdbc.Driver";
		
		try {
			Class.forName(driverClass);
		} catch(ClassNotFoundException err) {
			System.out.println("JDBC 드라이버 로딩 오류 " + err.getMessage());
		}
		
		// MariaDB 서버와 데이터베이스 연결
		String url = "jdbc:mariadb://localhost:3306/shopmall";
		String id = "root";
		String pw = "0000";
		
		Connection conn = null;
		
		try {
			conn = DriverManager.getConnection(url,id,pw);
		}
		catch (SQLException sqlerr) {
			System.out.println("데이터베이스 연결 오류" + sqlerr.getMessage());
		}
		return conn;
	}
	
	
	public static void resourceClose(ResultSet rset, Statement stmt, Connection conn) {
		try {
			if (rset != null) rset.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
		catch(SQLException sqlerr) {
			System.out.println("데이터베이스 종료 오류 " + sqlerr.getMessage());
		}
	}
	
	public static void resourceClose(Statement stmt, Connection conn) {
		try {
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		}
		catch(SQLException sqlerr) {
			System.out.println("데이터베이스 종료 오류 " + sqlerr.getMessage());
		}
	}

}

