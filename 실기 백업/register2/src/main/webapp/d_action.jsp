<%@ include file="db.jsp"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String mode = request.getParameter("mode");
String id = request.getParameter("id");

  try {
    
	  switch(mode) {
	  case "delete" :
       String sql = "DELETE FROM course_tbl WHERE id=? ";
       PreparedStatement pstmt = con.prepareStatement(sql);
       pstmt.setString(1, id);
       pstmt.executeUpdate();     
  
	    }
  }
  catch (Exception e) {
  e.printStackTrace(); 
  }
 
%>
<jsp:forward page="list.jsp"></jsp:forward>


