package com.springbook.biz.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {
	public static Connection getConnection() {
		try {
			Class.forName("org.h2.Driver");
			return DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test", "sa", "");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}	//end of getConnection

	public static void close(PreparedStatement stmt, Connection conn) {
		if(stmt != null) {
			try {
				if(!stmt.isClosed()) { stmt.close();}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				stmt = null;
			}
		}//end of if1

		if(conn != null) {
			try {
				if(!conn.isClosed()) {conn.close();}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				conn = null;
			}
		}//end of if2
	} //end of close

	public static void close(ResultSet rs, PreparedStatement stmt, Connection conn) {
		if(rs != null) {
			try {
				if(!rs.isClosed()) { rs.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}// rs

		if(stmt != null) {
			try {
				if(!stmt.isClosed()) { stmt.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				stmt = null;
			}
		}// stmt

		if(conn != null) {
			try {
				if(!conn.isClosed()) { conn.close(); }
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				conn = null;
			}
		}// conn
	}
}
