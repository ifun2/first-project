<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
Class.forName("oracle.jdbc.OracleDriver");
Connection con = DriverManager.getConnection
("jdbc:oracle:thin:@//112.161.182.20:1521/str", "system", "1234");
%>