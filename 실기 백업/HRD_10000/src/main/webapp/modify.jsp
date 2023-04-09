<%@ page import="java.text.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
</head>
<body>

<script type="text/javascript" src="check.js"></script>

<jsp:include page="header.jsp"></jsp:include>

<section style= "position: fixed; top: 70px; width: 100%; height: 100%; line-height: 100%;
background-color: lightgray ">
<h2 style= "text-align:center"> <b>홈쇼핑 회원 정보 수정</b> </h2> <br>
<form action="m_action.jsp" name="frm2" style="display: flex; align-items: center; justify-content: center;
text-align: center ">
  <table border="1">
  
<%
request.setCharacterEncoding("UTF-8");

String custno = request.getParameter("custno");
String custname = "";
String phone = "";
String address = "";
Date joindate;
String grade = "";
String city = "";
String joindateStr = "";

try {
     String sql = "SELECT * FROM member_tbl_02 WHERE custno = " + custno;
     PreparedStatement pstmt = con.prepareStatement(sql);
     ResultSet rs = pstmt.executeQuery();
     
     rs.next();
     custno = rs.getString(1);
     custname = rs.getString(2);
     phone = rs.getString(3);
     address = rs.getString(4);
     joindate = rs.getDate(5);
     grade = rs.getString(6);
     city = rs.getString(7);
     
     SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
     joindateStr = transFormat.format(joindate);
}

catch(Exception e) {
 e.printStackTrace(); 
}
%>  
    <tr>
      <td>회원번호</td>
      <td><input type="text" name="custno" value="<%=custno %>"></td>  
    </tr>
    <tr>
      <td>회원성명</td>
      <td><input type="text" name="custname" value="<%=custname %>"></td>  
    </tr>
    <tr>
      <td>회원전화</td>
      <td><input type="text" name="phone" value="<%=phone %>"></td>  
    </tr>
    <tr>
      <td>회원주소</td>
      <td><input type="text" name="address" value="<%=address %>"></td>  
    </tr>
    <tr>
      <td>가입일자</td>
      <td><input type="text" name="joindate" value="<%=joindateStr %>"></td>  
    </tr>
    <tr>
      <td>고객등급[A:VIP,B:일반,C:직원]</td>
      <td><input type="text" name="grade" value="<%=grade %>"></td>  
    </tr>
    <tr>
      <td>도시코드</td>
      <td><input type="text" name="city" value="<%=city%>"></td>  
    </tr>
    <tr>
      <td colspan="2"> 
      <input type="button" value="수정" onclick="modify()"> &nbsp;
      <input type="button" value="조회" onclick="search()">
      </td>
    </tr>
    
  </table>
</form>
</section>  

<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>