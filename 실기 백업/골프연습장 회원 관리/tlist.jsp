<%@page import="java.text.DecimalFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="db.jsp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>tlist</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section style="position: fixed; top: 70px; left: 0px; width: 100%; height: 100%; line-height: 100%; 
background-color: lightgray ">
<h2 style="text-align: center ">강사조회</h2><br>
<form style="display: flex; align-items: center; justify-content: center; text-align: center ">
<table border="1">
    <tr>
        <td>강사코드</td>
        <td>강사명</td>
        <td>강의명</td>
        <td>수강료</td>
        <td>강사자격취득일</td>
    </tr>
<%
request.setCharacterEncoding("UTF-8");

try { 
      String sql = "SELECT * FROM TBL_TEACHER_202201 ";
      PreparedStatement pstmt = con.prepareStatement(sql);
      ResultSet rs = pstmt.executeQuery();
      while(rs.next()) {
        int class_price = rs.getInt(4);
        DecimalFormat transformat = new DecimalFormat("￦, ###,###,###");
        String price = transformat.format(class_price);
        
        String teach_date = rs.getString(5);
        String date = teach_date.substring(0,4) + "년" + teach_date.substring(4,6) + "월" + teach_date.substring(6,8) + "일";
%>
    <tr>
        <td><%=rs.getString(1)%></td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=price%></td>
        <td><%=date%></td>
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