<%@include file="db.jsp" %>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String custno = request.getParameter("custno");
String custname = request.getParameter("custname");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String joindate = request.getParameter("joindate");
String grade = request.getParameter("grade");
String city = request.getParameter("city");

try {
     String sql="UPDATE member_tbl_02 SET custname=?, phone=?, address=?, joindate=?, grade=?, city=? WHERE custno=? ";
     PreparedStatement pstmt = con.prepareStatement(sql);
     pstmt.setString(1, custname);
     pstmt.setString(2,phone);
     pstmt.setString(3,address);
     pstmt.setString(4,joindate);
     pstmt.setString(5,grade);
     pstmt.setString(6,city);
     pstmt.setString(7,custno);
     
     pstmt.executeUpdate();
}

catch(Exception e) {
 e.printStackTrace(); 
}

%>

<jsp:forward page="list.jsp"></jsp:forward>