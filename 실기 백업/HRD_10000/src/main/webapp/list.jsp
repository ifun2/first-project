<%@ include file="db.jsp" %>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section style= "position: fixed; top: 70px; width: 100%; height: 100%; line-height: 100%;
background-color: lightgray ">
<h2 style= "text-align:center"> <b>회원목록조회/수정</b> </h2> <br>
<form style="display: flex; align-items: center; justify-content: center; text-align: center ">
  <table border="1">
     <tr>
        <td>회원번호</td>
        <td>회원성명</td>
        <td>전화번호</td>
        <td>주소</td>
        <td>가입일자</td>
        <td>고객등급</td>
        <td>거주지역</td>
     </tr>
<%
request.setCharacterEncoding("UTF-8");
String grade = "";

try {
	 String sql = "SELECT * FROM member_tbl_02 ORDER BY custno ";
     
     PreparedStatement pstmt = con.prepareStatement(sql);
     ResultSet rs = pstmt.executeQuery();
     
     while(rs.next()) {
    	 grade = rs.getString(6);
         if(grade.equals("A")) grade = "VIP";
         else if(grade.equals("B")) grade = "일반";
         else grade = "직원";   
%>
      <tr>
        <td><a href="modify.jsp?custno= <%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=grade %></td>
        <td><%=rs.getString(7) %></td>
      </tr>  
<%         
     }
}
catch(Exception e) {
  e.printStackTrace(); 
}
%>  
      
  </table> 
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>
 
</body>
</html>