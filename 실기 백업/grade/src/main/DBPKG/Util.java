package DBPKG;
  
import java.sql.*;
  
public class Util {
  
  public static Connection getConnection() throws Exception {
	  Class.forName("oracle.jdbc.OracleDriver"); 
	  Connection con = DriverManager.getConnection 
			 ("jdbc:oracle:thin:@//112.161.182.20:1521/str","system", "1234");
	  return con;
  }
}