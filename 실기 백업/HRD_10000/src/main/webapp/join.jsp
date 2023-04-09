<%@page import="java.sql.*"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>

<script type="text/javascript" src="check.js"></script>

<jsp:include page="header.jsp"></jsp:include>

<section style= "position: fixed; top: 70px; width: 100%; height: 100%; line-height: 100%;
background-color: lightgray ">
<h2 style= "text-align:center"> <b>홈쇼핑 회원 등록</b> </h2> <br>
<form action="i_action.jsp" name="frm" style="display: flex; align-items: center; justify-content: center;
text-align: center ">
  <table border="1">
  
<%
request.setCharacterEncoding("UTF-8");
String custno="";

try {
     String sql = "SELECT MAX(custno)+1 custno FROM member_tbl_02";
     PreparedStatement pstmt = con.prepareStatement(sql);
     ResultSet rs = pstmt.executeQuery();
     rs.next();
     custno = rs.getString("custno");
}

catch(Exception e) {
 e.printStackTrace(); 
}

%>  
      <tr>
          <td>회원번호(자동발생)</td>
          <td><input type="text" name="custno" value="<%=custno %>" readonly></td>     
      </tr> 
      <tr>
          <td>회원성명</td>
          <td><input type="text" name="custname"></td>     
      </tr> 
      <tr>
          <td>회원전화</td>
          <td><input type="text" name="phone"></td>     
      </tr> 
      <tr>
          <td>회원주소</td>
          <td><input type="text" name="address"></td>     
      </tr> 
      <tr>
          <td>가입일자</td>
          <td><input type="text" name="joindate"></td>     
      </tr> 
      <tr>
          <td>고객등급[A:VIP,B:일반,C:직원]</td>
          <td><input type="text" name="grade"></td>     
      </tr> 
      <tr>
          <td>도시코드</td>
          <td><input type="text" name="city"></td>     
      </tr> 
      <tr>
          <td colspan="2">
          <input type="submit" value="등록" onclick="add()">
          <input type="button" value="조회" onclick="search()">   
      </tr> 
  </table>
</form>
</section>

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>