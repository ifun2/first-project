<%@ include file="db.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>salary</title>
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<section style= "position: fixed; top: 70px; width: 100%; height: 100%; line-height: 100%;
background-color: lightgray ">
<h2 style= "text-align:center"> <b>회원매출조회</b> </h2> <br>
<form style="display: flex; align-items: center; justify-content: center; text-align: center ">
  <table border="1">
    <tr>
      <td>회원번호</td>
      <td>회원성명</td>
      <td>고객등급</td>
      <td>매출</td>
    </tr>
<%
request.setCharacterEncoding("UTF-8");
String grade = "";

try {
     String sql = "SELECT me.custno, custname, grade, sum(price) " +
                  "FROM MEMBER_TBL_02 me, MONEY_TBL_02 mo " + 
                  "WHERE me.custno = mo.custno " + 
                  "GROUP BY me.custno, custname, grade " +
                  "ORDER BY sum(price) desc ";
     PreparedStatement pstmt = con.prepareStatement(sql);
     ResultSet rs = pstmt.executeQuery();
     while(rs.next()) {
       grade = rs.getString(3);
       if(grade.equals("A")) grade = "VIP";
       else if(grade.equals("B")) grade = "일반";
       else grade = "직원";
%>
    <tr>
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=grade %></td>
        <td><%=rs.getString(4) %></td>
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